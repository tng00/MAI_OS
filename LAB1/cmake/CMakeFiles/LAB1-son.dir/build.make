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
CMAKE_SOURCE_DIR = /home/tng00/OS/LAB1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tng00/OS/LAB1/cmake

# Include any dependencies generated for this target.
include CMakeFiles/LAB1-son.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/LAB1-son.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/LAB1-son.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LAB1-son.dir/flags.make

CMakeFiles/LAB1-son.dir/src/son.c.o: CMakeFiles/LAB1-son.dir/flags.make
CMakeFiles/LAB1-son.dir/src/son.c.o: ../src/son.c
CMakeFiles/LAB1-son.dir/src/son.c.o: CMakeFiles/LAB1-son.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tng00/OS/LAB1/cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/LAB1-son.dir/src/son.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/LAB1-son.dir/src/son.c.o -MF CMakeFiles/LAB1-son.dir/src/son.c.o.d -o CMakeFiles/LAB1-son.dir/src/son.c.o -c /home/tng00/OS/LAB1/src/son.c

CMakeFiles/LAB1-son.dir/src/son.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/LAB1-son.dir/src/son.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tng00/OS/LAB1/src/son.c > CMakeFiles/LAB1-son.dir/src/son.c.i

CMakeFiles/LAB1-son.dir/src/son.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/LAB1-son.dir/src/son.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tng00/OS/LAB1/src/son.c -o CMakeFiles/LAB1-son.dir/src/son.c.s

CMakeFiles/LAB1-son.dir/home/tng00/OS/common/sub.c.o: CMakeFiles/LAB1-son.dir/flags.make
CMakeFiles/LAB1-son.dir/home/tng00/OS/common/sub.c.o: /home/tng00/OS/common/sub.c
CMakeFiles/LAB1-son.dir/home/tng00/OS/common/sub.c.o: CMakeFiles/LAB1-son.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tng00/OS/LAB1/cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/LAB1-son.dir/home/tng00/OS/common/sub.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/LAB1-son.dir/home/tng00/OS/common/sub.c.o -MF CMakeFiles/LAB1-son.dir/home/tng00/OS/common/sub.c.o.d -o CMakeFiles/LAB1-son.dir/home/tng00/OS/common/sub.c.o -c /home/tng00/OS/common/sub.c

CMakeFiles/LAB1-son.dir/home/tng00/OS/common/sub.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/LAB1-son.dir/home/tng00/OS/common/sub.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tng00/OS/common/sub.c > CMakeFiles/LAB1-son.dir/home/tng00/OS/common/sub.c.i

CMakeFiles/LAB1-son.dir/home/tng00/OS/common/sub.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/LAB1-son.dir/home/tng00/OS/common/sub.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tng00/OS/common/sub.c -o CMakeFiles/LAB1-son.dir/home/tng00/OS/common/sub.c.s

# Object files for target LAB1-son
LAB1__son_OBJECTS = \
"CMakeFiles/LAB1-son.dir/src/son.c.o" \
"CMakeFiles/LAB1-son.dir/home/tng00/OS/common/sub.c.o"

# External object files for target LAB1-son
LAB1__son_EXTERNAL_OBJECTS =

LAB1-son: CMakeFiles/LAB1-son.dir/src/son.c.o
LAB1-son: CMakeFiles/LAB1-son.dir/home/tng00/OS/common/sub.c.o
LAB1-son: CMakeFiles/LAB1-son.dir/build.make
LAB1-son: CMakeFiles/LAB1-son.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tng00/OS/LAB1/cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable LAB1-son"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LAB1-son.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LAB1-son.dir/build: LAB1-son
.PHONY : CMakeFiles/LAB1-son.dir/build

CMakeFiles/LAB1-son.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/LAB1-son.dir/cmake_clean.cmake
.PHONY : CMakeFiles/LAB1-son.dir/clean

CMakeFiles/LAB1-son.dir/depend:
	cd /home/tng00/OS/LAB1/cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tng00/OS/LAB1 /home/tng00/OS/LAB1 /home/tng00/OS/LAB1/cmake /home/tng00/OS/LAB1/cmake /home/tng00/OS/LAB1/cmake/CMakeFiles/LAB1-son.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/LAB1-son.dir/depend

