#include "bev_uav_status_diagnostic/bev_uav_status_diagnostic.hpp"

using namespace SD;

int main(int argc, char **argv)
{
    ros::init(argc, argv, "status_diagnostic_node");
    SD::Status_diagnostic statusDiagnostic;
    statusDiagnostic.run();
    return 0;
}
