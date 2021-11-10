#include "bev_uav_priority_manager/bev_uav_priority_manager.hpp"

using namespace PM;

int main(int argc, char **argv)
{
    ros::init(argc, argv, "priority_manager_node");
    PM::Priority_manager priorityManager;
    priorityManager.run();
    return 0;
}
