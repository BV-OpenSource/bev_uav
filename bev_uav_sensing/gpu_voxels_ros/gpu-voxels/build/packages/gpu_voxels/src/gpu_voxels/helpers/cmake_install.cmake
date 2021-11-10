# Install script for directory: /home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/gpu_voxels/src/gpu_voxels/helpers

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xmainx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgpu_voxels_helpers.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgpu_voxels_helpers.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgpu_voxels_helpers.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/build/lib/libgpu_voxels_helpers.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgpu_voxels_helpers.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgpu_voxels_helpers.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgpu_voxels_helpers.so"
         OLD_RPATH "/usr/local/cuda-10.2/lib64:/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/build/lib:/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgpu_voxels_helpers.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xmainx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xmainx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gpu_voxels/helpers" TYPE FILE FILES
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/gpu_voxels/src/gpu_voxels/helpers/GlobalLock.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/gpu_voxels/src/gpu_voxels/helpers/cuda_vectors.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/gpu_voxels/src/gpu_voxels/helpers/cuda_matrices.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/gpu_voxels/src/gpu_voxels/helpers/cuda_datatypes.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/gpu_voxels/src/gpu_voxels/helpers/common_defines.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/gpu_voxels/src/gpu_voxels/helpers/cuda_handling.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/gpu_voxels/src/gpu_voxels/helpers/cuda_handling.hpp"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/gpu_voxels/src/gpu_voxels/helpers/HeightMapLoader.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/gpu_voxels/src/gpu_voxels/helpers/PointcloudFileHandler.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/gpu_voxels/src/gpu_voxels/helpers/BinvoxFileReader.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/gpu_voxels/src/gpu_voxels/helpers/FileReaderInterface.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/gpu_voxels/src/gpu_voxels/helpers/XyzFileReader.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/gpu_voxels/src/gpu_voxels/helpers/PointCloud.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/gpu_voxels/src/gpu_voxels/helpers/MetaPointCloud.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/gpu_voxels/src/gpu_voxels/helpers/BitVector.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/gpu_voxels/src/gpu_voxels/helpers/CompileIssues.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/gpu_voxels/src/gpu_voxels/helpers/MathHelpers.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/gpu_voxels/src/gpu_voxels/helpers/GeometryGeneration.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/gpu_voxels/src/gpu_voxels/helpers/CollisionInterfaces.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/gpu_voxels/src/gpu_voxels/helpers/stb_image.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/gpu_voxels/src/gpu_voxels/helpers/PcdFileReader.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/gpu_voxels/src/gpu_voxels/helpers/Kinect.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/gpu_voxels/src/gpu_voxels/helpers/tfHelper.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xmainx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gpu_voxels/helpers/kernels" TYPE FILE FILES
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/gpu_voxels/src/gpu_voxels/helpers/kernels/HelperOperations.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/gpu_voxels/src/gpu_voxels/helpers/kernels/MetaPointCloudOperations.h"
    )
endif()

