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
CMAKE_COMMAND = /snap/clion/169/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/169/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jerry/文档/scudb_initial/scudb_initial

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jerry/文档/scudb_initial/scudb_initial/cmake-build-debug

# Include any dependencies generated for this target.
include test/CMakeFiles/gtest.dir/depend.make
# Include the progress variables for this target.
include test/CMakeFiles/gtest.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/gtest.dir/flags.make

test/CMakeFiles/gtest.dir/__/third_party/gmock/gmock-gtest-all.cc.o: test/CMakeFiles/gtest.dir/flags.make
test/CMakeFiles/gtest.dir/__/third_party/gmock/gmock-gtest-all.cc.o: ../third_party/gmock/gmock-gtest-all.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerry/文档/scudb_initial/scudb_initial/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/gtest.dir/__/third_party/gmock/gmock-gtest-all.cc.o"
	cd /home/jerry/文档/scudb_initial/scudb_initial/cmake-build-debug/test && /bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gtest.dir/__/third_party/gmock/gmock-gtest-all.cc.o -c /home/jerry/文档/scudb_initial/scudb_initial/third_party/gmock/gmock-gtest-all.cc

test/CMakeFiles/gtest.dir/__/third_party/gmock/gmock-gtest-all.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gtest.dir/__/third_party/gmock/gmock-gtest-all.cc.i"
	cd /home/jerry/文档/scudb_initial/scudb_initial/cmake-build-debug/test && /bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerry/文档/scudb_initial/scudb_initial/third_party/gmock/gmock-gtest-all.cc > CMakeFiles/gtest.dir/__/third_party/gmock/gmock-gtest-all.cc.i

test/CMakeFiles/gtest.dir/__/third_party/gmock/gmock-gtest-all.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gtest.dir/__/third_party/gmock/gmock-gtest-all.cc.s"
	cd /home/jerry/文档/scudb_initial/scudb_initial/cmake-build-debug/test && /bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerry/文档/scudb_initial/scudb_initial/third_party/gmock/gmock-gtest-all.cc -o CMakeFiles/gtest.dir/__/third_party/gmock/gmock-gtest-all.cc.s

test/CMakeFiles/gtest.dir/__/third_party/gmock/gmock_main.cc.o: test/CMakeFiles/gtest.dir/flags.make
test/CMakeFiles/gtest.dir/__/third_party/gmock/gmock_main.cc.o: ../third_party/gmock/gmock_main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerry/文档/scudb_initial/scudb_initial/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/CMakeFiles/gtest.dir/__/third_party/gmock/gmock_main.cc.o"
	cd /home/jerry/文档/scudb_initial/scudb_initial/cmake-build-debug/test && /bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gtest.dir/__/third_party/gmock/gmock_main.cc.o -c /home/jerry/文档/scudb_initial/scudb_initial/third_party/gmock/gmock_main.cc

test/CMakeFiles/gtest.dir/__/third_party/gmock/gmock_main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gtest.dir/__/third_party/gmock/gmock_main.cc.i"
	cd /home/jerry/文档/scudb_initial/scudb_initial/cmake-build-debug/test && /bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerry/文档/scudb_initial/scudb_initial/third_party/gmock/gmock_main.cc > CMakeFiles/gtest.dir/__/third_party/gmock/gmock_main.cc.i

test/CMakeFiles/gtest.dir/__/third_party/gmock/gmock_main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gtest.dir/__/third_party/gmock/gmock_main.cc.s"
	cd /home/jerry/文档/scudb_initial/scudb_initial/cmake-build-debug/test && /bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerry/文档/scudb_initial/scudb_initial/third_party/gmock/gmock_main.cc -o CMakeFiles/gtest.dir/__/third_party/gmock/gmock_main.cc.s

# Object files for target gtest
gtest_OBJECTS = \
"CMakeFiles/gtest.dir/__/third_party/gmock/gmock-gtest-all.cc.o" \
"CMakeFiles/gtest.dir/__/third_party/gmock/gmock_main.cc.o"

# External object files for target gtest
gtest_EXTERNAL_OBJECTS =

lib/libgtest.so: test/CMakeFiles/gtest.dir/__/third_party/gmock/gmock-gtest-all.cc.o
lib/libgtest.so: test/CMakeFiles/gtest.dir/__/third_party/gmock/gmock_main.cc.o
lib/libgtest.so: test/CMakeFiles/gtest.dir/build.make
lib/libgtest.so: test/CMakeFiles/gtest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jerry/文档/scudb_initial/scudb_initial/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library ../lib/libgtest.so"
	cd /home/jerry/文档/scudb_initial/scudb_initial/cmake-build-debug/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gtest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/gtest.dir/build: lib/libgtest.so
.PHONY : test/CMakeFiles/gtest.dir/build

test/CMakeFiles/gtest.dir/clean:
	cd /home/jerry/文档/scudb_initial/scudb_initial/cmake-build-debug/test && $(CMAKE_COMMAND) -P CMakeFiles/gtest.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/gtest.dir/clean

test/CMakeFiles/gtest.dir/depend:
	cd /home/jerry/文档/scudb_initial/scudb_initial/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jerry/文档/scudb_initial/scudb_initial /home/jerry/文档/scudb_initial/scudb_initial/test /home/jerry/文档/scudb_initial/scudb_initial/cmake-build-debug /home/jerry/文档/scudb_initial/scudb_initial/cmake-build-debug/test /home/jerry/文档/scudb_initial/scudb_initial/cmake-build-debug/test/CMakeFiles/gtest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/gtest.dir/depend

