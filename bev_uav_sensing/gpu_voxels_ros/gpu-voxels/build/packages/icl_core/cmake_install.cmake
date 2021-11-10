# Install script for directory: /home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/icl_core

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/export")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/icl_core" TYPE FILE FILES "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/build/unix-install/icl_core-config.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/build/packages/icl_core/src/icl_core/cmake_install.cmake")
  include("/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/build/packages/icl_core/src/icl_core_config/cmake_install.cmake")
  include("/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/build/packages/icl_core/src/icl_core_logging/cmake_install.cmake")
  include("/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/build/packages/icl_core/src/icl_core_plugin/cmake_install.cmake")
  include("/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/build/packages/icl_core/src/icl_core_thread/cmake_install.cmake")
  include("/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/build/packages/icl_core/src/icl_core_testsuite/cmake_install.cmake")
  include("/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/build/packages/icl_core/src/icl_core_dispatch/cmake_install.cmake")
  include("/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/build/packages/icl_core/src/icl_core_crypt/cmake_install.cmake")
  include("/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/build/packages/icl_core/src/icl_core_performance_monitor/cmake_install.cmake")
  include("/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/build/packages/icl_core/src/uls/cmake_install.cmake")

endif()

