cmake_minimum_required(VERSION 3.15)
project(MyExe VERSION 1.0.0)

# Specify the C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Bring in helper functions defined in another cmake script
include(cmake/HelperFunctions.cmake)

# Add bar
add_subdirectory(src)

# Add executable
add_executable(myexe main.cxx)

add_library(foo STATIC IMPORTED)
set_property(TARGET foo PROPERTY
             IMPORTED_LOCATION "../../LibFoo/build/libfoo.a")

add_library(zap SHARED IMPORTED)
set_property(TARGET zap PROPERTY
             IMPORTED_LOCATION "../../LibZap/build/libzap.so.1.0")

print_target_properties(foo)
print_target_properties(zap)

# Note 1: After completing more of the tutorial I realized that
# this is not necessary if you export and install the ...Targets.cmake
# This informaiton along with the add_library(... ... IMPORTED) is done
# for you so that you don't need to bring in the path information directly
target_include_directories(myexe PRIVATE ../LibFoo/include)
target_include_directories(myexe PRIVATE ../LibZap/include)

# Answers the question of if we need to also tell where
# the public headers of this target are or not

# Note 1: With just target_link_libraries I'm getting an
# error saying that it can't find the header "foo.h"
# I think this is because the foo target here is a special
# target that doesn't have all of the properties of how
# it was built. Would be very intersting to test and see if
# include directories is needed when the target is created
# within a subdirectory and included with add_subdirectory

# print_target_properties(bar)

# Note 2: When I linked with bar, I didn't need to do the
# target include directories. This is because "link" here
# doesn't just mean link libraries but should be treated
# as more of a property forwarder. The INTERFACE
# properties of foo and bar are set to the PRIVATE (no prefix)
# properties of myexe

# Note 3: Even for shared libraries setting the include
# directories via target_include_directories propogates
# the information appropriately
target_link_libraries(myexe PRIVATE foo bar zap)

# Install executable
install(TARGETS myexe)
