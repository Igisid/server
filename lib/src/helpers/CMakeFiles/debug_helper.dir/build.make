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
CMAKE_SOURCE_DIR = /home/tyom/workspace/clientserver

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tyom/workspace/clientserver

# Include any dependencies generated for this target.
include lib/src/helpers/CMakeFiles/debug_helper.dir/depend.make

# Include the progress variables for this target.
include lib/src/helpers/CMakeFiles/debug_helper.dir/progress.make

# Include the compile flags for this target's objects.
include lib/src/helpers/CMakeFiles/debug_helper.dir/flags.make

lib/src/helpers/CMakeFiles/debug_helper.dir/debug/debug_helper.cpp.o: lib/src/helpers/CMakeFiles/debug_helper.dir/flags.make
lib/src/helpers/CMakeFiles/debug_helper.dir/debug/debug_helper.cpp.o: lib/src/helpers/debug/debug_helper.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tyom/workspace/clientserver/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/src/helpers/CMakeFiles/debug_helper.dir/debug/debug_helper.cpp.o"
	cd /home/tyom/workspace/clientserver/lib/src/helpers && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/debug_helper.dir/debug/debug_helper.cpp.o -c /home/tyom/workspace/clientserver/lib/src/helpers/debug/debug_helper.cpp

lib/src/helpers/CMakeFiles/debug_helper.dir/debug/debug_helper.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/debug_helper.dir/debug/debug_helper.cpp.i"
	cd /home/tyom/workspace/clientserver/lib/src/helpers && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tyom/workspace/clientserver/lib/src/helpers/debug/debug_helper.cpp > CMakeFiles/debug_helper.dir/debug/debug_helper.cpp.i

lib/src/helpers/CMakeFiles/debug_helper.dir/debug/debug_helper.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/debug_helper.dir/debug/debug_helper.cpp.s"
	cd /home/tyom/workspace/clientserver/lib/src/helpers && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tyom/workspace/clientserver/lib/src/helpers/debug/debug_helper.cpp -o CMakeFiles/debug_helper.dir/debug/debug_helper.cpp.s

# Object files for target debug_helper
debug_helper_OBJECTS = \
"CMakeFiles/debug_helper.dir/debug/debug_helper.cpp.o"

# External object files for target debug_helper
debug_helper_EXTERNAL_OBJECTS =

lib/src/helpers/libdebug_helper.so.1.0.1: lib/src/helpers/CMakeFiles/debug_helper.dir/debug/debug_helper.cpp.o
lib/src/helpers/libdebug_helper.so.1.0.1: lib/src/helpers/CMakeFiles/debug_helper.dir/build.make
lib/src/helpers/libdebug_helper.so.1.0.1: lib/src/helpers/CMakeFiles/debug_helper.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tyom/workspace/clientserver/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libdebug_helper.so"
	cd /home/tyom/workspace/clientserver/lib/src/helpers && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/debug_helper.dir/link.txt --verbose=$(VERBOSE)
	cd /home/tyom/workspace/clientserver/lib/src/helpers && $(CMAKE_COMMAND) -E cmake_symlink_library libdebug_helper.so.1.0.1 libdebug_helper.so.1 libdebug_helper.so

lib/src/helpers/libdebug_helper.so.1: lib/src/helpers/libdebug_helper.so.1.0.1
	@$(CMAKE_COMMAND) -E touch_nocreate lib/src/helpers/libdebug_helper.so.1

lib/src/helpers/libdebug_helper.so: lib/src/helpers/libdebug_helper.so.1.0.1
	@$(CMAKE_COMMAND) -E touch_nocreate lib/src/helpers/libdebug_helper.so

# Rule to build all files generated by this target.
lib/src/helpers/CMakeFiles/debug_helper.dir/build: lib/src/helpers/libdebug_helper.so

.PHONY : lib/src/helpers/CMakeFiles/debug_helper.dir/build

lib/src/helpers/CMakeFiles/debug_helper.dir/clean:
	cd /home/tyom/workspace/clientserver/lib/src/helpers && $(CMAKE_COMMAND) -P CMakeFiles/debug_helper.dir/cmake_clean.cmake
.PHONY : lib/src/helpers/CMakeFiles/debug_helper.dir/clean

lib/src/helpers/CMakeFiles/debug_helper.dir/depend:
	cd /home/tyom/workspace/clientserver && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tyom/workspace/clientserver /home/tyom/workspace/clientserver/lib/src/helpers /home/tyom/workspace/clientserver /home/tyom/workspace/clientserver/lib/src/helpers /home/tyom/workspace/clientserver/lib/src/helpers/CMakeFiles/debug_helper.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/src/helpers/CMakeFiles/debug_helper.dir/depend

