# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/paul/Documents/libgatt-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/paul/Documents/libgatt-master/build

# Include any dependencies generated for this target.
include examples/discover/CMakeFiles/discover.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/discover/CMakeFiles/discover.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/discover/CMakeFiles/discover.dir/progress.make

# Include the compile flags for this target's objects.
include examples/discover/CMakeFiles/discover.dir/flags.make

examples/discover/CMakeFiles/discover.dir/discover.c.o: examples/discover/CMakeFiles/discover.dir/flags.make
examples/discover/CMakeFiles/discover.dir/discover.c.o: ../examples/discover/discover.c
examples/discover/CMakeFiles/discover.dir/discover.c.o: examples/discover/CMakeFiles/discover.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paul/Documents/libgatt-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object examples/discover/CMakeFiles/discover.dir/discover.c.o"
	cd /home/paul/Documents/libgatt-master/build/examples/discover && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT examples/discover/CMakeFiles/discover.dir/discover.c.o -MF CMakeFiles/discover.dir/discover.c.o.d -o CMakeFiles/discover.dir/discover.c.o -c /home/paul/Documents/libgatt-master/examples/discover/discover.c

examples/discover/CMakeFiles/discover.dir/discover.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/discover.dir/discover.c.i"
	cd /home/paul/Documents/libgatt-master/build/examples/discover && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/paul/Documents/libgatt-master/examples/discover/discover.c > CMakeFiles/discover.dir/discover.c.i

examples/discover/CMakeFiles/discover.dir/discover.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/discover.dir/discover.c.s"
	cd /home/paul/Documents/libgatt-master/build/examples/discover && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/paul/Documents/libgatt-master/examples/discover/discover.c -o CMakeFiles/discover.dir/discover.c.s

# Object files for target discover
discover_OBJECTS = \
"CMakeFiles/discover.dir/discover.c.o"

# External object files for target discover
discover_EXTERNAL_OBJECTS =

examples/discover/discover: examples/discover/CMakeFiles/discover.dir/discover.c.o
examples/discover/discover: examples/discover/CMakeFiles/discover.dir/build.make
examples/discover/discover: dbus/libgattlib.so
examples/discover/discover: examples/discover/CMakeFiles/discover.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/paul/Documents/libgatt-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable discover"
	cd /home/paul/Documents/libgatt-master/build/examples/discover && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/discover.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/discover/CMakeFiles/discover.dir/build: examples/discover/discover
.PHONY : examples/discover/CMakeFiles/discover.dir/build

examples/discover/CMakeFiles/discover.dir/clean:
	cd /home/paul/Documents/libgatt-master/build/examples/discover && $(CMAKE_COMMAND) -P CMakeFiles/discover.dir/cmake_clean.cmake
.PHONY : examples/discover/CMakeFiles/discover.dir/clean

examples/discover/CMakeFiles/discover.dir/depend:
	cd /home/paul/Documents/libgatt-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paul/Documents/libgatt-master /home/paul/Documents/libgatt-master/examples/discover /home/paul/Documents/libgatt-master/build /home/paul/Documents/libgatt-master/build/examples/discover /home/paul/Documents/libgatt-master/build/examples/discover/CMakeFiles/discover.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/discover/CMakeFiles/discover.dir/depend

