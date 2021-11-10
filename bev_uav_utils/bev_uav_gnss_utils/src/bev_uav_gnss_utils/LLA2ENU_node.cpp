#include "bev_uav_gnss_utils/LLA2ENU.hpp"

int main(int argc, char **argv)
{
    ros::init(argc, argv, "bev_uav_gnss_utils_node");
    LLA2ENU LLA2ENU_node;
    LLA2ENU_node.Run();
    return 0;
}
