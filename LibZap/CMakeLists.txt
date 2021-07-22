cmake_minimum_required(VERSION 3.15)
project(foo VERSION 1.0)

# Specify the C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_library(zap SHARED src/zap.cpp)

target_include_directories(zap
    PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>/include)

# By default we create a shared library called libzap.so
# By adding this line we create a libzap.so.1.0.0 and libzap.so
# will be a symbolic link to it
set_target_properties(zap PROPERTIES
    VERSION ${PROJECT_VERSION})

# install(TARGETS bar zap
#     LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
#     )