# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/cyh/CLionProjects/testGrpc

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/cyh/CLionProjects/testGrpc/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/testGrpc.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/testGrpc.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testGrpc.dir/flags.make

CMakeFiles/testGrpc.dir/main.cpp.o: CMakeFiles/testGrpc.dir/flags.make
CMakeFiles/testGrpc.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/cyh/CLionProjects/testGrpc/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/testGrpc.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testGrpc.dir/main.cpp.o -c /Users/cyh/CLionProjects/testGrpc/main.cpp

CMakeFiles/testGrpc.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testGrpc.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/cyh/CLionProjects/testGrpc/main.cpp > CMakeFiles/testGrpc.dir/main.cpp.i

CMakeFiles/testGrpc.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testGrpc.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/cyh/CLionProjects/testGrpc/main.cpp -o CMakeFiles/testGrpc.dir/main.cpp.s

CMakeFiles/testGrpc.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/testGrpc.dir/main.cpp.o.requires

CMakeFiles/testGrpc.dir/main.cpp.o.provides: CMakeFiles/testGrpc.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/testGrpc.dir/build.make CMakeFiles/testGrpc.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/testGrpc.dir/main.cpp.o.provides

CMakeFiles/testGrpc.dir/main.cpp.o.provides.build: CMakeFiles/testGrpc.dir/main.cpp.o


# Object files for target testGrpc
testGrpc_OBJECTS = \
"CMakeFiles/testGrpc.dir/main.cpp.o"

# External object files for target testGrpc
testGrpc_EXTERNAL_OBJECTS =

testGrpc: CMakeFiles/testGrpc.dir/main.cpp.o
testGrpc: CMakeFiles/testGrpc.dir/build.make
testGrpc: CMakeFiles/testGrpc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/cyh/CLionProjects/testGrpc/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable testGrpc"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testGrpc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/testGrpc.dir/build: testGrpc

.PHONY : CMakeFiles/testGrpc.dir/build

CMakeFiles/testGrpc.dir/requires: CMakeFiles/testGrpc.dir/main.cpp.o.requires

.PHONY : CMakeFiles/testGrpc.dir/requires

CMakeFiles/testGrpc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testGrpc.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testGrpc.dir/clean

CMakeFiles/testGrpc.dir/depend:
	cd /Users/cyh/CLionProjects/testGrpc/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/cyh/CLionProjects/testGrpc /Users/cyh/CLionProjects/testGrpc /Users/cyh/CLionProjects/testGrpc/cmake-build-debug /Users/cyh/CLionProjects/testGrpc/cmake-build-debug /Users/cyh/CLionProjects/testGrpc/cmake-build-debug/CMakeFiles/testGrpc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testGrpc.dir/depend

