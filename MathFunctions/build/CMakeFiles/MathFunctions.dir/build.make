# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/madhav/ws/CMake/Help/guide/importing-exporting/MathFunctions

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/madhav/ws/CMake/Help/guide/importing-exporting/MathFunctions/build

# Include any dependencies generated for this target.
include CMakeFiles/MathFunctions.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MathFunctions.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MathFunctions.dir/flags.make

CMakeFiles/MathFunctions.dir/MathFunctions.cxx.o: CMakeFiles/MathFunctions.dir/flags.make
CMakeFiles/MathFunctions.dir/MathFunctions.cxx.o: ../MathFunctions.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/madhav/ws/CMake/Help/guide/importing-exporting/MathFunctions/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MathFunctions.dir/MathFunctions.cxx.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MathFunctions.dir/MathFunctions.cxx.o -c /home/madhav/ws/CMake/Help/guide/importing-exporting/MathFunctions/MathFunctions.cxx

CMakeFiles/MathFunctions.dir/MathFunctions.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MathFunctions.dir/MathFunctions.cxx.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/madhav/ws/CMake/Help/guide/importing-exporting/MathFunctions/MathFunctions.cxx > CMakeFiles/MathFunctions.dir/MathFunctions.cxx.i

CMakeFiles/MathFunctions.dir/MathFunctions.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MathFunctions.dir/MathFunctions.cxx.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/madhav/ws/CMake/Help/guide/importing-exporting/MathFunctions/MathFunctions.cxx -o CMakeFiles/MathFunctions.dir/MathFunctions.cxx.s

# Object files for target MathFunctions
MathFunctions_OBJECTS = \
"CMakeFiles/MathFunctions.dir/MathFunctions.cxx.o"

# External object files for target MathFunctions
MathFunctions_EXTERNAL_OBJECTS =

libMathFunctions.a: CMakeFiles/MathFunctions.dir/MathFunctions.cxx.o
libMathFunctions.a: CMakeFiles/MathFunctions.dir/build.make
libMathFunctions.a: CMakeFiles/MathFunctions.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/madhav/ws/CMake/Help/guide/importing-exporting/MathFunctions/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libMathFunctions.a"
	$(CMAKE_COMMAND) -P CMakeFiles/MathFunctions.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MathFunctions.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MathFunctions.dir/build: libMathFunctions.a

.PHONY : CMakeFiles/MathFunctions.dir/build

CMakeFiles/MathFunctions.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MathFunctions.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MathFunctions.dir/clean

CMakeFiles/MathFunctions.dir/depend:
	cd /home/madhav/ws/CMake/Help/guide/importing-exporting/MathFunctions/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/madhav/ws/CMake/Help/guide/importing-exporting/MathFunctions /home/madhav/ws/CMake/Help/guide/importing-exporting/MathFunctions /home/madhav/ws/CMake/Help/guide/importing-exporting/MathFunctions/build /home/madhav/ws/CMake/Help/guide/importing-exporting/MathFunctions/build /home/madhav/ws/CMake/Help/guide/importing-exporting/MathFunctions/build/CMakeFiles/MathFunctions.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MathFunctions.dir/depend

