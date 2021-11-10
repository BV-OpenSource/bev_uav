#include "bev_uav_gimbal_controller/Gimbal.hpp"

using namespace GL;

Gimbal::Gimbal():n("~") {
    std::string ns = ros::this_node::getNamespace();

    // Subscribers
    subGimbalGetAxes = n.subscribe(ns + "/gimbal/getAxes", 10, &Gimbal::getAngleGivenAxes, this);
    subGimbalSetAxes = n.subscribe(ns + "/gimbal/setAxes", 10, &Gimbal::setAngleGivenAxes, this);

    // Service Clients
    srvClientparamGetClient = n.serviceClient < mavros_msgs::ParamGet > (ns + "/mavros/param/get");

    // Publishers
    pubMountControl = n.advertise<mavros_msgs::MountControl>(ns + "/mavros/mount_control/command", 1);

    // Parameters
    n.param<double>("paramControlHz",       paramControlHz,      10.0);
    n.param<double>("paramLimitRollMax",    paramLimitRollMax,   35.0);
    n.param<double>("paramLimitRollMin",    paramLimitRollMin,  -35.0);
    n.param<double>("paramLimitPitchMax",   paramLimitPitchMax,  90.0);
    n.param<double>("paramLimitPitchMin",   paramLimitPitchMin, -90.0);
    n.param<double>("paramLimitYawMax",     paramLimitYawMax,    180.0);
    n.param<double>("paramLimitYawMin",     paramLimitYawMin,   -180.0);

    // Timer
    angleTimer = n.createTimer(ros::Duration(1/paramControlHz), &Gimbal::setAngleMavros, this, false, true);

    // Variables
    rollAngle  = 0;
    pitchAngle = 0;
    yawAngle   = 0;

    oldYawAngle   = 0.0;
    oldRollAngle  = 0.0;
    oldPitchAngle = 0.0;

    angleXRead = false;
    angleYRead = false;
    angleZRead = false;

    pubGimbalControl.mode = pubGimbalControl.MAV_MOUNT_MODE_MAVLINK_TARGETING;

    msgGetGimbalAxes.axis = "all";

    ROS_INFO("Gimbal Controller Node Ready");
    ROS_INFO("The angles values must be in the aceptables intervals.");
    ROS_INFO("%f<X<%f || %f<Y<%f || %f<Z<%f",
             paramLimitRollMin, paramLimitRollMax,
             paramLimitPitchMin, paramLimitPitchMax,
             paramLimitYawMin,paramLimitYawMax);
}

void Gimbal::run(){

    ros::Rate go(0.2);

    while (ros::ok()){
        if(angleXRead && angleYRead && angleZRead){
            go = ros::Rate(100);
        }else{
            this->getAngleGivenAxes(msgGetGimbalAxes);
        }

        ros::spinOnce();
        go.sleep();
    }
}

void Gimbal::setAngleMavros(const ros::TimerEvent&){
    if( ((fabs(oldRollAngle - rollAngle) > 2*FLT_EPSILON)   && angleXRead) ||
        ((fabs(oldPitchAngle - pitchAngle) > 2*FLT_EPSILON) && angleYRead) ||
        ((fabs(oldYawAngle - yawAngle) > 2*FLT_EPSILON)     && angleZRead) ){

        oldYawAngle = yawAngle;
        oldRollAngle = rollAngle;
        oldPitchAngle = pitchAngle;

        ROS_DEBUG("Roll-> %f || Pitch-> %f || Yaw-> %f", rollAngle, pitchAngle, yawAngle);
        pubGimbalControl.roll  = rollAngle * 100.0f;
        pubGimbalControl.pitch = pitchAngle * 100.0f;
        pubGimbalControl.yaw   = yawAngle * 100.0f;
        pubMountControl.publish(pubGimbalControl);
    }
}

void Gimbal::setAngleGivenAxes(const bev_uav_gimbal_controller::setGimbalAxes &msg){
    if( (fabs(msg.roll) > 2*FLT_EPSILON) && angleXRead){
        rollAngle += msg.roll;
        clampAngle(&rollAngle, paramLimitRollMin, paramLimitRollMax);
    }

    if( (fabs(msg.pitch) > 2*FLT_EPSILON) && angleYRead){
        pitchAngle += msg.pitch;
        clampAngle(&pitchAngle, paramLimitPitchMin, paramLimitPitchMax);
    }

    if( (fabs(msg.yaw) > 2*FLT_EPSILON) && angleZRead){
        yawAngle += msg.yaw;
        clampAngle(&yawAngle, paramLimitYawMin, paramLimitYawMax);
    }
}

void Gimbal::getAngleGivenAxes(const bev_uav_gimbal_controller::getGimbalAxes &msg){

    std::string axes = msg.axis;

    if ((axes.find("all") != std::string::npos)){
        if(!angleXRead){
            paramGetMsg.request.param_id = "MNT_NEUTRAL_X";
            if (srvClientparamGetClient.call(paramGetMsg) && paramGetMsg.response.success){
                oldRollAngle = rollAngle = static_cast<float>(paramGetMsg.response.value.real);
                ROS_DEBUG("Roll with value %f", rollAngle);
                angleXRead = true;
            }
        }

        if(!angleYRead){
            paramGetMsg.request.param_id = "MNT_NEUTRAL_Y";
            if (srvClientparamGetClient.call(paramGetMsg) && paramGetMsg.response.success){
                oldPitchAngle = pitchAngle = static_cast<float>(paramGetMsg.response.value.real);
                ROS_DEBUG("Pitch with value %f",pitchAngle);
                angleYRead = true;
            }
        }

        if(!angleZRead){
            paramGetMsg.request.param_id = "MNT_NEUTRAL_Z";
            if (srvClientparamGetClient.call(paramGetMsg) && paramGetMsg.response.success){
                oldYawAngle = yawAngle = static_cast<float>(paramGetMsg.response.value.real);
                ROS_DEBUG("Yaw with value %f",yawAngle);
                angleZRead = true;
            }
        }
    }
    else {
        if (axes.find('x') != std::string::npos){
            paramGetMsg.request.param_id = "MNT_NEUTRAL_X";
            if (srvClientparamGetClient.call(paramGetMsg) && paramGetMsg.response.success){
                rollAngle = static_cast<float>(paramGetMsg.response.value.real);
                ROS_INFO("Roll with value %f",rollAngle);
                angleXRead = true;
            }
        }
        if (axes.find('y') != std::string::npos) {
            paramGetMsg.request.param_id = "MNT_NEUTRAL_Y";
            if (srvClientparamGetClient.call(paramGetMsg) && paramGetMsg.response.success){
                pitchAngle = static_cast<float>(paramGetMsg.response.value.real);
                ROS_INFO("Pitch with value %f",pitchAngle);
                angleYRead = true;
            }
        }
        if (axes.find('z') != std::string::npos) {
            paramGetMsg.request.param_id = "MNT_NEUTRAL_Z";
            if (srvClientparamGetClient.call(paramGetMsg) && paramGetMsg.response.success){
                yawAngle = static_cast<float>(paramGetMsg.response.value.real);
                ROS_INFO("Yaw with value %f",yawAngle);
                angleZRead = true;
            }
        }
    }
}

void Gimbal::clampAngle(float *value, double min, double max){
    *value = (*value > static_cast<float>(max)) ? static_cast<float>(max) : ((*value < static_cast<float>(min)) ? static_cast<float>(min) : *value);
}
