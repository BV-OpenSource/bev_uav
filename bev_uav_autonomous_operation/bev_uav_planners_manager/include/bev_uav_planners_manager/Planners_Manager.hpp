#ifndef PLANNERS_MANAGER_HPP
#define PLANNERS_MANAGER_HPP

#include <bev_uav_planner/Planner.hpp>
#include <bev_uav_rrt/bev_uav_rrt.hpp>
//#include <PRM/PRM.hpp>

class PlannersManager
{
    public:
        PlannersManager();
        PlannersManager(const ros::NodeHandle private_nh_, const ros::NodeHandle &nh_);
        Planner *getPlanner();
    private:
        // ROS Handler
        ros::NodeHandle nh;
        ros::NodeHandle shm_nh;

        // Parameters
        int paramPlannerType;

        Planner *Planners;
};

#endif // PLANNERS_MANAGER_HPP