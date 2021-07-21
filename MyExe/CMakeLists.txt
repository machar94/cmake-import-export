cmake_minimum_required(VERSION 3.15)
project(MyExe)

# Specify the C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Bring in helper functions defined in another cmake script
include(cmake/HelperFunctions.cmake)

# Add executable
add_executable(myexe main.cxx)

add_library(foo STATIC IMPORTED)
set_property(TARGET foo PROPERTY
             IMPORTED_LOCATION "../../LibFoo/build/libfoo.a")

print_target_properties(foo)

target_include_directories(myexe PRIVATE ../LibFoo/include)

# Answers the question of if we need to also tell where
# the public headers of this target are or not
# Note 1: With just target_link_libraries I'm getting an
# error saying that it can't find the header "foo.h"
# I think this is because the foo target here is a special
# target that doesn't have all of the properties of how
# it was built. Would be very intersting to test and see if
# include directories is needed when the target is created
# within a subdirectory and included with add_subdirectory
target_link_libraries(myexe PRIVATE foo)

# Install executable
install(TARGETS myexe)
