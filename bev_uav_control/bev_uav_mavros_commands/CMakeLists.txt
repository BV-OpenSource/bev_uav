cmake_minimum_required(VERSION 2.8.3)
project(bev_uav_mavros_commands)

find_package(catkin REQUIRED COMPONENTS
    mavros
    mavros_msgs
    roscpp
    std_msgs
)

catkin_package(
#    INCLUDE_DIRS
#        include
#    LIBRARIES
#        ${PROJECT_NAME}_lib
    CATKIN_DEPENDS
        mavros
        mavros_msgs
        roscpp
        std_msgs
)

include_directories(
    include
    ${catkin_INCLUDE_DIRS}
)

add_executable(
    ${PROJECT_NAME}_node
    include/${PROJECT_NAME}/${PROJECT_NAME}.hpp
    src/${PROJECT_NAME}.cpp
    src/${PROJECT_NAME}_node.cpp
)

target_link_libraries(
    ${PROJECT_NAME}_node
    ${catkin_LIBRARIES}
)
