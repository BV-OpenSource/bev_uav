#include "bev_uav_gimbal_controller/Gimbal.hpp"

using namespace GL;

int main(int argc, char **argv)
{
    ros::init(argc, argv, "bev_uav_gimbal_controller_node");
    GL::Gimbal gl;
    gl.run();
    return 0;
}

