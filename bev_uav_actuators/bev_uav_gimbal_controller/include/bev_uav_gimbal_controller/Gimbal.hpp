#ifndef GIMBAL_HPP
#define GIMBAL_HPP

#include <ros/ros.h>
#include <ros/package.h>

#include <std_msgs/String.h>

#include <mavros_msgs/ParamGet.h>
#include <mavros_msgs/ParamValue.h>
#include <mavros_msgs/ParamPull.h>
#include <mavros_msgs/MountControl.h>

#include <std_msgs/Empty.h>
#include "bev_uav_gimbal_controller/setGimbalAxes.h"
#include "bev_uav_gimbal_controller/getGimbalAxes.h"

namespace GL{

    class Gimbal {

        public:

            Gimbal ();
            virtual ~Gimbal (){}

            void run();

        private:

            // Node handles
            ros::NodeHandle n;

            // ROS Subscribers
            ros::Subscriber subGimbalGetAxes;
            ros::Subscriber subGimbalSetAxes;

            // ROS Publishers
            ros::Publisher pubMountControl;

            // ROS Service Client
            ros::ServiceClient srvClientparamGetClient;
            ros::ServiceClient srvGetMavrosParam;

            // Message
            mavros_msgs::ParamGet paramGetMsg;
            mavros_msgs::ParamPull paramPull;

            // Parameters
            double paramControlHz;
            double paramLimitRollMax;
            double paramLimitRollMin;
            double paramLimitPitchMax;
            double paramLimitPitchMin;
            double paramLimitYawMax;
            double paramLimitYawMin;

            // Variables
            float yawAngle;
            float rollAngle;
            float pitchAngle;
            float oldYawAngle;
            float oldRollAngle;
            float oldPitchAngle;

            bool angleXRead;
            bool angleYRead;
            bool angleZRead;

            ros::Timer angleTimer;

            bev_uav_gimbal_controller::getGimbalAxes msgGetGimbalAxes;

            mavros_msgs::MountControl pubGimbalControl;

            // Functions
            void clampAngle(float *value, double max, double min);
            void setAngleMavros(const ros::TimerEvent &);
            void getAngleGivenAxes(const bev_uav_gimbal_controller::getGimbalAxes &msg);
            void setAngleGivenAxes(const bev_uav_gimbal_controller::setGimbalAxes &msg);

    };
}



#endif
