cmake_minimum_required(VERSION 3.15)
project(MathFunctions)

# Make cache variables for install destinations
# Specifically creates CMAKE_INSTALL_INCLUDEDIR,
# CMAKE_INSTALL_LIBDIR
include(GNUInstallDirs)

find_package(Stats 2.4.6 REQUIRED)

# Specify the C++ standard
# These properties are set for all targets in the project
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Create library
add_library(MathFunctions STATIC MathFunctions.cxx)
target_link_libraries(MathFunctions PUBLIC Stats::types)

# Add include directories
# Use the current folder when building to find MathFunctions.h
# but use the install/include location when a client wants to
# link to the MathFunctions.h file.
# If we don't do this, when CMake creates export informaiton,
# it will provide paths pointing to where it was built and not
# where it was installed
target_include_directories(MathFunctions
                           PUBLIC
                           "$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>"
                           "$<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>"
)

# Section
# The commands install(TARGETS) and install(EXPORT) work together
# to 1. copy the targets to the locations specified and 2. create
# a cmake file designed to make it easy to import the targets into
# another cmake project

# Install the target and create export-set. The MathFunctions
# target that's imported by other projects should have its
# properties forwarded (usage requirements) such as 
# interface_include_directories, interface_compile_definitions etc.

# The paths given below are all relative paths (include, lib etc.)
# So all of these paths are actually relative to the CMAKE_INSTALL_PREFIX.
# The imported target will have it's interface_include_directories
# property populated what's specified in INCLUDES DESTINATION
# Kinda a duplicate of the target_include_directories, but this time
# the information is written the helper CMAKE file that's going to be
# generated for us
install(TARGETS MathFunctions
        EXPORT MathFunctionsTargets
        LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
        ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
        RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
        INCLUDES DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
)

# Install header file
# Actually moves the header file into the destination install/include
# Above tells any client that imports package the public headers for
# MathFunctions exist in install/include (property )
install(FILES MathFunctions.h DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})

# Generate and install export file. This writes the information that
# someone will need to use our package targets into a file
# MathFunctionsTargets.cmake.

# The Namespace option will prepend MathFuncitons:: to the
# target names as they are written to the export file.
# The colon usage provides a hint that the target is an 
# IMPORTED target. This installs the Targets.cmake
# And by install I mean when the cmake --install . --prefix <install_dir>
# command is called (or make install with prefix)
install(EXPORT MathFunctionsTargets
        FILE MathFunctionsTargets.cmake
        NAMESPACE MathFunctions::
        DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/MathFunctions
)

# Include CMakePackageConfigHelpers macro. This section is all
# about how to setup a cmake project (especially a library)
# so that it can be used easily by just calling find_package.
# If we do this, then we don't even need write an include command
# that points to the ...Target.cmake
include(CMakePackageConfigHelpers)

# Set version
set(version 3.4.1)

set_property(TARGET MathFunctions PROPERTY VERSION ${version})
set_property(TARGET MathFunctions PROPERTY SOVERSION 3)
set_property(TARGET MathFunctions PROPERTY
  INTERFACE_MathFunctions_MAJOR_VERSION 3)
set_property(TARGET MathFunctions APPEND PROPERTY
  COMPATIBLE_INTERFACE_STRING MathFunctions_MAJOR_VERSION
)

# Generate the version file for the config file
write_basic_package_version_file(
  "${CMAKE_CURRENT_BINARY_DIR}/MathFunctionsConfigVersion.cmake"
  VERSION "${version}"
  COMPATIBILITY AnyNewerVersion
)

# Create config file
# 1: The template to use when creating the config file
# 2: The name of the config file to be written
# 3: Where the Config file should be written when installed
configure_package_config_file(${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in
  "${CMAKE_CURRENT_BINARY_DIR}/MathFunctionsConfig.cmake"
  INSTALL_DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/MathFunctions
)

# install config files
install(FILES
          "${CMAKE_CURRENT_BINARY_DIR}/MathFunctionsConfig.cmake"
          "${CMAKE_CURRENT_BINARY_DIR}/MathFunctionsConfigVersion.cmake"
        DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/MathFunctions
)

# generate the export targets for the build tree
export(EXPORT MathFunctionsTargets
       FILE "${CMAKE_CURRENT_BINARY_DIR}/cmake/MathFunctionsTargets.cmake"
       NAMESPACE MathFunctions::
)
