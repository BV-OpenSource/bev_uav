#include "bev_uav_mavros_commands/bev_uav_mavros_commands.hpp"

using namespace MC;

int main(int argc, char **argv)
{
    ros::init(argc, argv, "bev_uav_mavros_commands_node");
    MC::Mavros_commands mavrosCommands;
    mavrosCommands.run();
    return 0;
}
