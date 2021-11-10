# ===================================================================================
#  gpu_voxels CMake configuration file
#
#             ** File generated automatically, do not modify **
#
#  Usage from an external project:
#    In your CMakeLists.txt, add these lines:
#
#    FIND_PACKAGE(gpu_voxels REQUIRED )
#    TARGET_LINK_LIBRARIES(MY_TARGET_NAME ${gpu_voxels_LIBRARIES})
#
#    This file will define the following variables:
#      - gpu_voxels_LIBRARIES            : The list of libraries to links against.
#      - gpu_voxels_LIB_DIR              : The directory where lib files are. Calling LINK_DIRECTORIES
#                                                                with this path is NOT needed.
#      - gpu_voxels_INCLUDE_DIRS         : The include directories.
#
#    Advanced variables:
#      - gpu_voxels_CONFIG_PATH
#
# =================================================================================================

# Extract the directory where *this* file has been installed (determined at cmake run-time)
get_filename_component(gpu_voxels_CONFIG_PATH "${CMAKE_CURRENT_LIST_FILE}" PATH)

# Get the absolute path with no ../.. relative marks, to eliminate implicit linker warnings
get_filename_component(gpu_voxels_INSTALL_PATH "${gpu_voxels_CONFIG_PATH}/../.." REALPATH)

# ======================================================
# Include directories to add to the user project:
# ======================================================

# Provide the include directories to the caller
SET(gpu_voxels_INCLUDE_DIRS "/home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/packages/gpu_voxels/src")

# ======================================================
# Link directories to add to the user project:
# ======================================================

SET(gpu_voxels_LIB_COMPONENTS gpu_voxels_logging;gpu_voxels_helpers;gpu_voxels_primitive_array;gpu_voxels_core;gpu_voxels_urdf_robot;gpu_voxels_dh_robot;gpu_voxels_voxel;gpu_voxels_voxelmap;gpu_voxels_voxelmap_tests;gpu_voxels_voxellist;gpu_voxels_vis_interface;gpu_voxels_octree;gpu_voxels_distance_map_converter;gpu_voxels;gpu_voxels_visualization_core)

SET(gpu_voxels_DEFINITIONS "-D_IC_BUILDER_GPU_VOXELS_LOGGING_;-D_BUILD_GVL_WITH_PCL_SUPPORT_;-D_BUILD_GVL_WITH_KINECT_SUPPORT_;-D_IC_BUILDER_GPU_VOXELS_HELPERS_;-D_BUILD_GVL_WITH_TF_SUPPORT_;-D_IC_BUILDER_GPU_VOXELS_PRIMITIVE_ARRAY_;-D_IC_BUILDER_GPU_VOXELS_CORE_;-D_BUILD_GVL_WITH_URDF_SUPPORT_;-D_IC_BUILDER_GPU_VOXELS_URDF_ROBOT_;-D_IC_BUILDER_GPU_VOXELS_DH_ROBOT_;-D_IC_BUILDER_GPU_VOXELS_VOXEL_;-D_IC_BUILDER_GPU_VOXELS_VOXELMAP_;-D_IC_BUILDER_GPU_VOXELS_VOXELMAP_TESTS_;-D_IC_BUILDER_GPU_VOXELS_VOXELLIST_;-D_IC_BUILDER_GPU_VOXELS_VIS_INTERFACE_;-D_IC_BUILDER_GPU_VOXELS_OCTREE_;-D_IC_BUILDER_GPU_VOXELS_DIST_MAP_CONV_;-D_IC_BUILDER_GPU_VOXELS_;-D_IC_BUILDER_GPU_VIS_CORE_")

# Provide the libs directory anyway, it may be needed in some cases.
SET(gpu_voxels_LIB_DIR /home/aferreira/heifu_ws/src/heifu/sensing/gpu_voxels_ros/gpu-voxels/build/lib)
LINK_DIRECTORIES(${gpu_voxels_LIB_DIR})

# fill *_LIBRARIES and *_LIBRARY
SET(gpu_voxels_LIBRARIES "")
FOREACH(comp ${gpu_voxels_LIB_COMPONENTS}  )
  SET(gpu_voxels_LIBRARIES ${gpu_voxels_LIBRARIES} ${comp})
  SET(${comp}_LIBRARY ${comp})
ENDFOREACH()

# check for requested components (=libraries)
FOREACH(comp ${gpu_voxels_FIND_COMPONENTS}  )
  LIST(FIND gpu_voxels_LIB_COMPONENTS ${comp} _index)
  IF(${_index} GREATER -1)
    SET(gpu_voxels_${comp}_FOUND 1)
  ELSE()
    SET(gpu_voxels_${comp}_FOUND 0)
    IF(gpu_voxels_FIND_REQUIRED_${comp})
      MESSAGE(FATAL_ERROR "gpu_voxels ${comp} not available.")
    ENDIF()
  ENDIF()
ENDFOREACH()
