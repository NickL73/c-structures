# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nick/structures

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nick/structures/build

# Include any dependencies generated for this target.
include CMakeFiles/structures_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/structures_test.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/structures_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/structures_test.dir/flags.make

CMakeFiles/structures_test.dir/tests/linked_lists_tests.c.o: CMakeFiles/structures_test.dir/flags.make
CMakeFiles/structures_test.dir/tests/linked_lists_tests.c.o: ../tests/linked_lists_tests.c
CMakeFiles/structures_test.dir/tests/linked_lists_tests.c.o: CMakeFiles/structures_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nick/structures/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/structures_test.dir/tests/linked_lists_tests.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/structures_test.dir/tests/linked_lists_tests.c.o -MF CMakeFiles/structures_test.dir/tests/linked_lists_tests.c.o.d -o CMakeFiles/structures_test.dir/tests/linked_lists_tests.c.o -c /home/nick/structures/tests/linked_lists_tests.c

CMakeFiles/structures_test.dir/tests/linked_lists_tests.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/structures_test.dir/tests/linked_lists_tests.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nick/structures/tests/linked_lists_tests.c > CMakeFiles/structures_test.dir/tests/linked_lists_tests.c.i

CMakeFiles/structures_test.dir/tests/linked_lists_tests.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/structures_test.dir/tests/linked_lists_tests.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nick/structures/tests/linked_lists_tests.c -o CMakeFiles/structures_test.dir/tests/linked_lists_tests.c.s

# Object files for target structures_test
structures_test_OBJECTS = \
"CMakeFiles/structures_test.dir/tests/linked_lists_tests.c.o"

# External object files for target structures_test
structures_test_EXTERNAL_OBJECTS =

libstructures_test.so: CMakeFiles/structures_test.dir/tests/linked_lists_tests.c.o
libstructures_test.so: CMakeFiles/structures_test.dir/build.make
libstructures_test.so: CMakeFiles/structures_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nick/structures/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library libstructures_test.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/structures_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/structures_test.dir/build: libstructures_test.so
.PHONY : CMakeFiles/structures_test.dir/build

CMakeFiles/structures_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/structures_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/structures_test.dir/clean

CMakeFiles/structures_test.dir/depend:
	cd /home/nick/structures/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nick/structures /home/nick/structures /home/nick/structures/build /home/nick/structures/build /home/nick/structures/build/CMakeFiles/structures_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/structures_test.dir/depend
