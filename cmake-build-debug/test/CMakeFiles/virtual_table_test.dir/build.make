# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

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
CMAKE_COMMAND = /snap/clion/175/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/175/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jerry/文档/scudb_initial/scudb_initial

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jerry/文档/scudb_initial/scudb_initial/cmake-build-debug

# Include any dependencies generated for this target.
include test/CMakeFiles/virtual_table_test.dir/depend.make
# Include the progress variables for this target.
include test/CMakeFiles/virtual_table_test.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/virtual_table_test.dir/flags.make

test/CMakeFiles/virtual_table_test.dir/vtable/virtual_table_test.cpp.o: test/CMakeFiles/virtual_table_test.dir/flags.make
test/CMakeFiles/virtual_table_test.dir/vtable/virtual_table_test.cpp.o: ../test/vtable/virtual_table_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerry/文档/scudb_initial/scudb_initial/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/virtual_table_test.dir/vtable/virtual_table_test.cpp.o"
	cd /home/jerry/文档/scudb_initial/scudb_initial/cmake-build-debug/test && /bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/virtual_table_test.dir/vtable/virtual_table_test.cpp.o -c /home/jerry/文档/scudb_initial/scudb_initial/test/vtable/virtual_table_test.cpp

test/CMakeFiles/virtual_table_test.dir/vtable/virtual_table_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/virtual_table_test.dir/vtable/virtual_table_test.cpp.i"
	cd /home/jerry/文档/scudb_initial/scudb_initial/cmake-build-debug/test && /bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerry/文档/scudb_initial/scudb_initial/test/vtable/virtual_table_test.cpp > CMakeFiles/virtual_table_test.dir/vtable/virtual_table_test.cpp.i

test/CMakeFiles/virtual_table_test.dir/vtable/virtual_table_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/virtual_table_test.dir/vtable/virtual_table_test.cpp.s"
	cd /home/jerry/文档/scudb_initial/scudb_initial/cmake-build-debug/test && /bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerry/文档/scudb_initial/scudb_initial/test/vtable/virtual_table_test.cpp -o CMakeFiles/virtual_table_test.dir/vtable/virtual_table_test.cpp.s

# Object files for target virtual_table_test
virtual_table_test_OBJECTS = \
"CMakeFiles/virtual_table_test.dir/vtable/virtual_table_test.cpp.o"

# External object files for target virtual_table_test
virtual_table_test_EXTERNAL_OBJECTS =

test/virtual_table_test: test/CMakeFiles/virtual_table_test.dir/vtable/virtual_table_test.cpp.o
test/virtual_table_test: test/CMakeFiles/virtual_table_test.dir/build.make
test/virtual_table_test: lib/libvtable.so
test/virtual_table_test: lib/libsqlite3.so
test/virtual_table_test: lib/libgtest.so
test/virtual_table_test: test/CMakeFiles/virtual_table_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jerry/文档/scudb_initial/scudb_initial/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable virtual_table_test"
	cd /home/jerry/文档/scudb_initial/scudb_initial/cmake-build-debug/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/virtual_table_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/virtual_table_test.dir/build: test/virtual_table_test
.PHONY : test/CMakeFiles/virtual_table_test.dir/build

test/CMakeFiles/virtual_table_test.dir/clean:
	cd /home/jerry/文档/scudb_initial/scudb_initial/cmake-build-debug/test && $(CMAKE_COMMAND) -P CMakeFiles/virtual_table_test.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/virtual_table_test.dir/clean

test/CMakeFiles/virtual_table_test.dir/depend:
	cd /home/jerry/文档/scudb_initial/scudb_initial/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jerry/文档/scudb_initial/scudb_initial /home/jerry/文档/scudb_initial/scudb_initial/test /home/jerry/文档/scudb_initial/scudb_initial/cmake-build-debug /home/jerry/文档/scudb_initial/scudb_initial/cmake-build-debug/test /home/jerry/文档/scudb_initial/scudb_initial/cmake-build-debug/test/CMakeFiles/virtual_table_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/virtual_table_test.dir/depend

