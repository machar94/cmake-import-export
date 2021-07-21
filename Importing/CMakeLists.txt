cmake_minimum_required(VERSION 3.15)
project(Importing)

# Specify the C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_BUILD_TYPE Debug)

# Bring in helper functions defined in another cmake script
include(cmake/HelperFunctions.cmake)

# Add executable
add_executable(myexe IMPORTED)

# Set imported location
# The Makefile during build time will call this executable
# when it's searching for the source file main.cc. Thus
# it needs to move up two directories to get on the right
# level
set_property(TARGET myexe PROPERTY
             IMPORTED_LOCATION "../../MyExe/install/bin/myexe")

print_target_properties(myexe)

# Add custom command to create source file
# This command is run from the build directory
# Importing/build
add_custom_command(OUTPUT main.cc COMMAND myexe)

# Use source file
# During build time (when make or cmake --build is called)
# .../myexe will be called to produce the output file main.cc
# Then the build will continue on once it has produced the file
add_executable(mynewexe main.cc)
