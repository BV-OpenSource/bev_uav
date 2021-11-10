cmake_minimum_required(VERSION 3.0.2)
project(bev_uav_priority_manager)

set (CMAKE_C_FLAGS      "-std=c++11")
set (CMAKE_CXX_FLAGS    "-std=c++11")

set(NEEDED_COMPONENTS
    bev_uav_msgs
    geometry_msgs
    roscpp
    tf2
    )

find_package(catkin REQUIRED COMPONENTS
    ${NEEDED_COMPONENTS}
    )

catkin_package(
    INCLUDE_DIRS
        include
    LIBRARIES
        ${PROJECT_NAME}_lib
    CATKIN_DEPENDS
        ${NEEDED_COMPONENTS}
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
