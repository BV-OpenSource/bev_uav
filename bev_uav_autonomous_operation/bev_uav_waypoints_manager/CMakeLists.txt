cmake_minimum_required(VERSION 3.0.2)
project(bev_uav_waypoints_manager)

set(NEEDED_COMPONENTS
        bev_uav_msgs
        geographic_msgs
        geometry_msgs
        mavros_msgs
        roscpp
        sensor_msgs
        std_msgs
        )

################################################
## Declare ROS messages, services and actions ##
################################################

###################################
## catkin specific configuration ##
###################################
find_package(catkin REQUIRED COMPONENTS
    ${NEEDED_COMPONENTS}
)

catkin_package(
#    INCLUDE_DIRS
#        include
#    LIBRARIES
#        ${PROJECT_NAME}_lib
    CATKIN_DEPENDS
        ${NEEDED_COMPONENTS}
)

###########
## Build ##
###########

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

add_executable(${PROJECT_NAME}_node
    src/${PROJECT_NAME}.cpp
    src/${PROJECT_NAME}_node.cpp
)

target_link_libraries(${PROJECT_NAME}_node
   ${catkin_LIBRARIES}
)
