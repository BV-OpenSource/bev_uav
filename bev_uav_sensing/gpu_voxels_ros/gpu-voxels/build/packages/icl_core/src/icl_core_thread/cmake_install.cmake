# Install script for directory: /home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/icl_core/src/icl_core_thread

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libicl_core_thread.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libicl_core_thread.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libicl_core_thread.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/build/lib/libicl_core_thread.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libicl_core_thread.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libicl_core_thread.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libicl_core_thread.so"
         OLD_RPATH "/usr/local/cuda-10.2/lib64:/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/build/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libicl_core_thread.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xmainx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xmainx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/icl_core_thread" TYPE FILE FILES
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/icl_core/src/icl_core_thread/ActiveObject.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/icl_core/src/icl_core_thread/ActiveOperation.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/icl_core/src/icl_core_thread/icl_core_thread.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/icl_core/src/icl_core_thread/ImportExport.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/icl_core/src/icl_core_thread/Mutex.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/icl_core/src/icl_core_thread/PeriodicThread.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/icl_core/src/icl_core_thread/RWLock.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/icl_core/src/icl_core_thread/ScopedMutexLock.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/icl_core/src/icl_core_thread/Sem.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/icl_core/src/icl_core_thread/SingletonThreadingModels.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/icl_core/src/icl_core_thread/SpinLock.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/icl_core/src/icl_core_thread/ScopedSpinLock.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/icl_core/src/icl_core_thread/Thread.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/icl_core/src/icl_core_thread/tMutex.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/icl_core/src/icl_core_thread/tPeriodicThread.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/icl_core/src/icl_core_thread/tRWLock.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/icl_core/src/icl_core_thread/tScopedMutexLock.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/icl_core/src/icl_core_thread/tScopedRWLock.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/icl_core/src/icl_core_thread/tSemaphore.h"
    "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/icl_core/src/icl_core_thread/tThread.h"
    )
endif()

