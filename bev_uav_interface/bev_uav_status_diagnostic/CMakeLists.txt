cmake_minimum_required(VERSION 2.8.3)
project(bev_uav_status_diagnostic)

find_package(catkin REQUIRED COMPONENTS
    diagnostic_msgs
    roscpp
    std_msgs
    topic_tools
)

catkin_package(
#    INCLUDE_DIRS
#        include
#    LIBRARIES
#        ${PROJECT_NAME}_lib
    CATKIN_DEPENDS
        diagnostic_msgs
        roscpp
        std_msgs
        topic_tools
)

include_directories(
    include
    ${catkin_INCLUDE_DIRS}
)

add_executable(
    ${PROJECT_NAME}_node
    src/${PROJECT_NAME}_node.cpp
    src/${PROJECT_NAME}.cpp
    include/${PROJECT_NAME}/${PROJECT_NAME}.hpp
)

target_link_libraries(
    ${PROJECT_NAME}_node
    ${catkin_LIBRARIES}
)


