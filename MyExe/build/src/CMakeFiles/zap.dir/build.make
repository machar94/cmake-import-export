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
CMAKE_SOURCE_DIR = /home/madhav/ws/CMake/Help/guide/importing-exporting/MyExe

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/madhav/ws/CMake/Help/guide/importing-exporting/MyExe/build

# Include any dependencies generated for this target.
include src/CMakeFiles/zap.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/zap.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/zap.dir/flags.make

src/CMakeFiles/zap.dir/zap.cpp.o: src/CMakeFiles/zap.dir/flags.make
src/CMakeFiles/zap.dir/zap.cpp.o: ../src/zap.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/madhav/ws/CMake/Help/guide/importing-exporting/MyExe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/zap.dir/zap.cpp.o"
	cd /home/madhav/ws/CMake/Help/guide/importing-exporting/MyExe/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/zap.dir/zap.cpp.o -c /home/madhav/ws/CMake/Help/guide/importing-exporting/MyExe/src/zap.cpp

src/CMakeFiles/zap.dir/zap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/zap.dir/zap.cpp.i"
	cd /home/madhav/ws/CMake/Help/guide/importing-exporting/MyExe/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/madhav/ws/CMake/Help/guide/importing-exporting/MyExe/src/zap.cpp > CMakeFiles/zap.dir/zap.cpp.i

src/CMakeFiles/zap.dir/zap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/zap.dir/zap.cpp.s"
	cd /home/madhav/ws/CMake/Help/guide/importing-exporting/MyExe/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/madhav/ws/CMake/Help/guide/importing-exporting/MyExe/src/zap.cpp -o CMakeFiles/zap.dir/zap.cpp.s

# Object files for target zap
zap_OBJECTS = \
"CMakeFiles/zap.dir/zap.cpp.o"

# External object files for target zap
zap_EXTERNAL_OBJECTS =

src/libzap.so.1.0.0: src/CMakeFiles/zap.dir/zap.cpp.o
src/libzap.so.1.0.0: src/CMakeFiles/zap.dir/build.make
src/libzap.so.1.0.0: src/CMakeFiles/zap.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/madhav/ws/CMake/Help/guide/importing-exporting/MyExe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libzap.so"
	cd /home/madhav/ws/CMake/Help/guide/importing-exporting/MyExe/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/zap.dir/link.txt --verbose=$(VERBOSE)
	cd /home/madhav/ws/CMake/Help/guide/importing-exporting/MyExe/build/src && $(CMAKE_COMMAND) -E cmake_symlink_library libzap.so.1.0.0 libzap.so.1.0.0 libzap.so

src/libzap.so: src/libzap.so.1.0.0
	@$(CMAKE_COMMAND) -E touch_nocreate src/libzap.so

# Rule to build all files generated by this target.
src/CMakeFiles/zap.dir/build: src/libzap.so

.PHONY : src/CMakeFiles/zap.dir/build

src/CMakeFiles/zap.dir/clean:
	cd /home/madhav/ws/CMake/Help/guide/importing-exporting/MyExe/build/src && $(CMAKE_COMMAND) -P CMakeFiles/zap.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/zap.dir/clean

src/CMakeFiles/zap.dir/depend:
	cd /home/madhav/ws/CMake/Help/guide/importing-exporting/MyExe/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/madhav/ws/CMake/Help/guide/importing-exporting/MyExe /home/madhav/ws/CMake/Help/guide/importing-exporting/MyExe/src /home/madhav/ws/CMake/Help/guide/importing-exporting/MyExe/build /home/madhav/ws/CMake/Help/guide/importing-exporting/MyExe/build/src /home/madhav/ws/CMake/Help/guide/importing-exporting/MyExe/build/src/CMakeFiles/zap.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/zap.dir/depend
