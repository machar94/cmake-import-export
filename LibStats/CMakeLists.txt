cmake_minimum_required(VERSION 3.15)
project(stats VERSION 1.0)

include(GNUInstallDirs)

# Specify the C++ standard
# These properties are set for all targets in the project
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_library(types src/stats.cpp)

target_include_directories(types
    PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>
)

install(TARGETS types
        EXPORT StatsTargets
        LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
        ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
        RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
        INCLUDES DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
)

install(DIRECTORY include/ DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})

install(EXPORT StatsTargets
        FILE StatsTargets.cmake
        NAMESPACE Stats::
        DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/Stats
)

include(CMakePackageConfigHelpers)

# Set version
Set(version 3.4.1)

set_property(TARGET types PROPERTY VERSION ${version})
set_property(TARGET types PROPERTY SOVERSION 3)
set_property(TARGET types PROPERTY
  INTERFACE_types_MAJOR_VERSION 3)
set_property(TARGET types APPEND PROPERTY
  COMPATIBLE_INTERFACE_STRING types_MAJOR_VERSION
)

# Generate the version file for the config file which will
# be checked by find_package
write_basic_package_version_file(
  "${CMAKE_CURRENT_BINARY_DIR}/StatsConfigVersion.cmake"
  VERSION "${version}"
  COMPATIBILITY AnyNewerVersion
)

configure_package_config_file(${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in
  "${CMAKE_CURRENT_BINARY_DIR}/StatsConfig.cmake"
  INSTALL_DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/Stats
)

# Install config files which will be searched for by find_package
install(FILES
          "${CMAKE_CURRENT_BINARY_DIR}/StatsConfig.cmake"
          "${CMAKE_CURRENT_BINARY_DIR}/StatsConfigVersion.cmake"
        DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/Stats
)

# Generate the export targets for the build tree
# This is a separate thing and not necessary if you don't want
# to use the targets directly from the build folder.
# Creates a StatsTargets.cmake in build/cmake/
# This gets created when calling cmake -S . -B build i.e.
# you don't need to wait till running cmake --install
export(EXPORT StatsTargets
       FILE "${CMAKE_CURRENT_BINARY_DIR}/cmake/StatsTargets.cmake"
       NAMESPACE Stats::
)