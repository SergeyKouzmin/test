# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/user/Programs/projects/msgGetter

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/user/Programs/projects/msgGetter

# Include any dependencies generated for this target.
include CMakeFiles/sender.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sender.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sender.dir/flags.make

CMakeFiles/sender.dir/sender.cpp.o: CMakeFiles/sender.dir/flags.make
CMakeFiles/sender.dir/sender.cpp.o: sender.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/user/Programs/projects/msgGetter/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/sender.dir/sender.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sender.dir/sender.cpp.o -c /home/user/Programs/projects/msgGetter/sender.cpp

CMakeFiles/sender.dir/sender.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sender.dir/sender.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/user/Programs/projects/msgGetter/sender.cpp > CMakeFiles/sender.dir/sender.cpp.i

CMakeFiles/sender.dir/sender.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sender.dir/sender.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/user/Programs/projects/msgGetter/sender.cpp -o CMakeFiles/sender.dir/sender.cpp.s

CMakeFiles/sender.dir/sender.cpp.o.requires:
.PHONY : CMakeFiles/sender.dir/sender.cpp.o.requires

CMakeFiles/sender.dir/sender.cpp.o.provides: CMakeFiles/sender.dir/sender.cpp.o.requires
	$(MAKE) -f CMakeFiles/sender.dir/build.make CMakeFiles/sender.dir/sender.cpp.o.provides.build
.PHONY : CMakeFiles/sender.dir/sender.cpp.o.provides

CMakeFiles/sender.dir/sender.cpp.o.provides.build: CMakeFiles/sender.dir/sender.cpp.o
.PHONY : CMakeFiles/sender.dir/sender.cpp.o.provides.build

# Object files for target sender
sender_OBJECTS = \
"CMakeFiles/sender.dir/sender.cpp.o"

# External object files for target sender
sender_EXTERNAL_OBJECTS =

sender: CMakeFiles/sender.dir/sender.cpp.o
sender: ../../rabbitmq/amqpcpp/libamqpcpp.a
sender: ./librabbitmq.a
sender: CMakeFiles/sender.dir/build.make
sender: CMakeFiles/sender.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable sender"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sender.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sender.dir/build: sender
.PHONY : CMakeFiles/sender.dir/build

CMakeFiles/sender.dir/requires: CMakeFiles/sender.dir/sender.cpp.o.requires
.PHONY : CMakeFiles/sender.dir/requires

CMakeFiles/sender.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sender.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sender.dir/clean

CMakeFiles/sender.dir/depend:
	cd /home/user/Programs/projects/msgGetter && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/user/Programs/projects/msgGetter /home/user/Programs/projects/msgGetter /home/user/Programs/projects/msgGetter /home/user/Programs/projects/msgGetter /home/user/Programs/projects/msgGetter/CMakeFiles/sender.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sender.dir/depend

