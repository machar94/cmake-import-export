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
CMAKE_SOURCE_DIR = /home/madhav/ws/CMake/Help/guide/importing-exporting/MathFunctionsComponents

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/madhav/ws/CMake/Help/guide/importing-exporting/MathFunctionsComponents/build

# Include any dependencies generated for this target.
include Addition/CMakeFiles/Addition.dir/depend.make

# Include the progress variables for this target.
include Addition/CMakeFiles/Addition.dir/progress.make

# Include the compile flags for this target's objects.
include Addition/CMakeFiles/Addition.dir/flags.make

Addition/CMakeFiles/Addition.dir/Addition.cxx.o: Addition/CMakeFiles/Addition.dir/flags.make
Addition/CMakeFiles/Addition.dir/Addition.cxx.o: ../Addition/Addition.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/madhav/ws/CMake/Help/guide/importing-exporting/MathFunctionsComponents/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Addition/CMakeFiles/Addition.dir/Addition.cxx.o"
	cd /home/madhav/ws/CMake/Help/guide/importing-exporting/MathFunctionsComponents/build/Addition && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Addition.dir/Addition.cxx.o -c /home/madhav/ws/CMake/Help/guide/importing-exporting/MathFunctionsComponents/Addition/Addition.cxx

Addition/CMakeFiles/Addition.dir/Addition.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Addition.dir/Addition.cxx.i"
	cd /home/madhav/ws/CMake/Help/guide/importing-exporting/MathFunctionsComponents/build/Addition && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/madhav/ws/CMake/Help/guide/importing-exporting/MathFunctionsComponents/Addition/Addition.cxx > CMakeFiles/Addition.dir/Addition.cxx.i

Addition/CMakeFiles/Addition.dir/Addition.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Addition.dir/Addition.cxx.s"
	cd /home/madhav/ws/CMake/Help/guide/importing-exporting/MathFunctionsComponents/build/Addition && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/madhav/ws/CMake/Help/guide/importing-exporting/MathFunctionsComponents/Addition/Addition.cxx -o CMakeFiles/Addition.dir/Addition.cxx.s

# Object files for target Addition
Addition_OBJECTS = \
"CMakeFiles/Addition.dir/Addition.cxx.o"

# External object files for target Addition
Addition_EXTERNAL_OBJECTS =

Addition/libAddition.a: Addition/CMakeFiles/Addition.dir/Addition.cxx.o
Addition/libAddition.a: Addition/CMakeFiles/Addition.dir/build.make
Addition/libAddition.a: Addition/CMakeFiles/Addition.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/madhav/ws/CMake/Help/guide/importing-exporting/MathFunctionsComponents/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libAddition.a"
	cd /home/madhav/ws/CMake/Help/guide/importing-exporting/MathFunctionsComponents/build/Addition && $(CMAKE_COMMAND) -P CMakeFiles/Addition.dir/cmake_clean_target.cmake
	cd /home/madhav/ws/CMake/Help/guide/importing-exporting/MathFunctionsComponents/build/Addition && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Addition.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Addition/CMakeFiles/Addition.dir/build: Addition/libAddition.a

.PHONY : Addition/CMakeFiles/Addition.dir/build

Addition/CMakeFiles/Addition.dir/clean:
	cd /home/madhav/ws/CMake/Help/guide/importing-exporting/MathFunctionsComponents/build/Addition && $(CMAKE_COMMAND) -P CMakeFiles/Addition.dir/cmake_clean.cmake
.PHONY : Addition/CMakeFiles/Addition.dir/clean

Addition/CMakeFiles/Addition.dir/depend:
	cd /home/madhav/ws/CMake/Help/guide/importing-exporting/MathFunctionsComponents/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/madhav/ws/CMake/Help/guide/importing-exporting/MathFunctionsComponents /home/madhav/ws/CMake/Help/guide/importing-exporting/MathFunctionsComponents/Addition /home/madhav/ws/CMake/Help/guide/importing-exporting/MathFunctionsComponents/build /home/madhav/ws/CMake/Help/guide/importing-exporting/MathFunctionsComponents/build/Addition /home/madhav/ws/CMake/Help/guide/importing-exporting/MathFunctionsComponents/build/Addition/CMakeFiles/Addition.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Addition/CMakeFiles/Addition.dir/depend
