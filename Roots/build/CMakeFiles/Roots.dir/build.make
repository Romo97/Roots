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
CMAKE_SOURCE_DIR = /home/rodrigomontero/Documentos/Roots

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rodrigomontero/Documentos/Roots/build

# Include any dependencies generated for this target.
include CMakeFiles/Roots.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Roots.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Roots.dir/flags.make

CMakeFiles/Roots.dir/roots4.cpp.o: CMakeFiles/Roots.dir/flags.make
CMakeFiles/Roots.dir/roots4.cpp.o: ../roots4.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rodrigomontero/Documentos/Roots/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Roots.dir/roots4.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Roots.dir/roots4.cpp.o -c /home/rodrigomontero/Documentos/Roots/roots4.cpp

CMakeFiles/Roots.dir/roots4.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Roots.dir/roots4.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rodrigomontero/Documentos/Roots/roots4.cpp > CMakeFiles/Roots.dir/roots4.cpp.i

CMakeFiles/Roots.dir/roots4.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Roots.dir/roots4.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rodrigomontero/Documentos/Roots/roots4.cpp -o CMakeFiles/Roots.dir/roots4.cpp.s

# Object files for target Roots
Roots_OBJECTS = \
"CMakeFiles/Roots.dir/roots4.cpp.o"

# External object files for target Roots
Roots_EXTERNAL_OBJECTS =

Roots: CMakeFiles/Roots.dir/roots4.cpp.o
Roots: CMakeFiles/Roots.dir/build.make
Roots: CMakeFiles/Roots.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rodrigomontero/Documentos/Roots/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Roots"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Roots.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Roots.dir/build: Roots

.PHONY : CMakeFiles/Roots.dir/build

CMakeFiles/Roots.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Roots.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Roots.dir/clean

CMakeFiles/Roots.dir/depend:
	cd /home/rodrigomontero/Documentos/Roots/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rodrigomontero/Documentos/Roots /home/rodrigomontero/Documentos/Roots /home/rodrigomontero/Documentos/Roots/build /home/rodrigomontero/Documentos/Roots/build /home/rodrigomontero/Documentos/Roots/build/CMakeFiles/Roots.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Roots.dir/depend

