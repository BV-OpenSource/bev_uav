# Install script for directory: /home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/icl_core/src/icl_core_dispatch

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libicl_core_dispatch.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libicl_core_dispatch.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libicl_core_dispatch.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/build/lib/libicl_core_dispatch.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libicl_core_dispatch.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libicl_core_dispatch.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libicl_core_dispatch.so"
         OLD_RPATH "/usr/local/cuda-10.2/lib64:/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/build/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libicl_core_dispatch.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xmainx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xmainx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/icl_core_dispatch" TYPE FILE FILES
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/icl_core/src/icl_core_dispatch/CallbackOperation.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/icl_core/src/icl_core_dispatch/Logging.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/icl_core/src/icl_core_dispatch/ImportExport.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/icl_core/src/icl_core_dispatch/Operation.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/icl_core/src/icl_core_dispatch/PeriodicDispatchThread.h"
    )
endif()
