#ifndef MSG_LISTING_PM_HPP
#define MSG_LISTING_PM_HPP

#include <string>
#include <map>

enum tp_type
{
    bev_uav_msgsHeifuWaypoint = 1,
    geometry_msgsPoseStamped,
    geometry_msgsTwistStamped
} static topic_type_enum;


typedef std::map<std::string, tp_type> M_topic_type;

static M_topic_type topic_type_list = {
    {"bev_uav_msgs/UAVWaypoint",   tp_type::bev_uav_msgsHeifuWaypoint},
    {"geometry_msgs/PoseStamped",  tp_type::geometry_msgsPoseStamped},
    {"geometry_msgs/TwistStamped", tp_type::geometry_msgsTwistStamped}
};

#endif // MSG_LISTING_PM_HPP
