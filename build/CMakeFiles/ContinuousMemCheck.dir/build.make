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
CMAKE_COMMAND = /snap/cmake/936/bin/cmake

# The command to remove a file.
RM = /snap/cmake/936/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jerry/文档/scudb_initial/scudb_initial

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jerry/文档/scudb_initial/scudb_initial/build

# Utility rule file for ContinuousMemCheck.

# Include any custom commands dependencies for this target.
include CMakeFiles/ContinuousMemCheck.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ContinuousMemCheck.dir/progress.make

CMakeFiles/ContinuousMemCheck:
	/snap/cmake/936/bin/ctest -D ContinuousMemCheck

ContinuousMemCheck: CMakeFiles/ContinuousMemCheck
ContinuousMemCheck: CMakeFiles/ContinuousMemCheck.dir/build.make
.PHONY : ContinuousMemCheck

# Rule to build all files generated by this target.
CMakeFiles/ContinuousMemCheck.dir/build: ContinuousMemCheck
.PHONY : CMakeFiles/ContinuousMemCheck.dir/build

CMakeFiles/ContinuousMemCheck.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ContinuousMemCheck.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ContinuousMemCheck.dir/clean

CMakeFiles/ContinuousMemCheck.dir/depend:
	cd /home/jerry/文档/scudb_initial/scudb_initial/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jerry/文档/scudb_initial/scudb_initial /home/jerry/文档/scudb_initial/scudb_initial /home/jerry/文档/scudb_initial/scudb_initial/build /home/jerry/文档/scudb_initial/scudb_initial/build /home/jerry/文档/scudb_initial/scudb_initial/build/CMakeFiles/ContinuousMemCheck.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ContinuousMemCheck.dir/depend

