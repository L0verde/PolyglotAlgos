# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_SOURCE_DIR = /home/ghost/Learning-Space/algorithms/binary_search/cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ghost/Learning-Space/algorithms/binary_search/cpp/build

# Include any dependencies generated for this target.
include CMakeFiles/test_binary_search.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/test_binary_search.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/test_binary_search.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_binary_search.dir/flags.make

CMakeFiles/test_binary_search.dir/src/read_arrays_from_db.cpp.o: CMakeFiles/test_binary_search.dir/flags.make
CMakeFiles/test_binary_search.dir/src/read_arrays_from_db.cpp.o: /home/ghost/Learning-Space/algorithms/binary_search/cpp/src/read_arrays_from_db.cpp
CMakeFiles/test_binary_search.dir/src/read_arrays_from_db.cpp.o: CMakeFiles/test_binary_search.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ghost/Learning-Space/algorithms/binary_search/cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_binary_search.dir/src/read_arrays_from_db.cpp.o"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/test_binary_search.dir/src/read_arrays_from_db.cpp.o -MF CMakeFiles/test_binary_search.dir/src/read_arrays_from_db.cpp.o.d -o CMakeFiles/test_binary_search.dir/src/read_arrays_from_db.cpp.o -c /home/ghost/Learning-Space/algorithms/binary_search/cpp/src/read_arrays_from_db.cpp

CMakeFiles/test_binary_search.dir/src/read_arrays_from_db.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/test_binary_search.dir/src/read_arrays_from_db.cpp.i"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ghost/Learning-Space/algorithms/binary_search/cpp/src/read_arrays_from_db.cpp > CMakeFiles/test_binary_search.dir/src/read_arrays_from_db.cpp.i

CMakeFiles/test_binary_search.dir/src/read_arrays_from_db.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/test_binary_search.dir/src/read_arrays_from_db.cpp.s"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ghost/Learning-Space/algorithms/binary_search/cpp/src/read_arrays_from_db.cpp -o CMakeFiles/test_binary_search.dir/src/read_arrays_from_db.cpp.s

CMakeFiles/test_binary_search.dir/tests/binary_search_gTest.cpp.o: CMakeFiles/test_binary_search.dir/flags.make
CMakeFiles/test_binary_search.dir/tests/binary_search_gTest.cpp.o: /home/ghost/Learning-Space/algorithms/binary_search/cpp/tests/binary_search_gTest.cpp
CMakeFiles/test_binary_search.dir/tests/binary_search_gTest.cpp.o: CMakeFiles/test_binary_search.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ghost/Learning-Space/algorithms/binary_search/cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/test_binary_search.dir/tests/binary_search_gTest.cpp.o"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/test_binary_search.dir/tests/binary_search_gTest.cpp.o -MF CMakeFiles/test_binary_search.dir/tests/binary_search_gTest.cpp.o.d -o CMakeFiles/test_binary_search.dir/tests/binary_search_gTest.cpp.o -c /home/ghost/Learning-Space/algorithms/binary_search/cpp/tests/binary_search_gTest.cpp

CMakeFiles/test_binary_search.dir/tests/binary_search_gTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/test_binary_search.dir/tests/binary_search_gTest.cpp.i"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ghost/Learning-Space/algorithms/binary_search/cpp/tests/binary_search_gTest.cpp > CMakeFiles/test_binary_search.dir/tests/binary_search_gTest.cpp.i

CMakeFiles/test_binary_search.dir/tests/binary_search_gTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/test_binary_search.dir/tests/binary_search_gTest.cpp.s"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ghost/Learning-Space/algorithms/binary_search/cpp/tests/binary_search_gTest.cpp -o CMakeFiles/test_binary_search.dir/tests/binary_search_gTest.cpp.s

# Object files for target test_binary_search
test_binary_search_OBJECTS = \
"CMakeFiles/test_binary_search.dir/src/read_arrays_from_db.cpp.o" \
"CMakeFiles/test_binary_search.dir/tests/binary_search_gTest.cpp.o"

# External object files for target test_binary_search
test_binary_search_EXTERNAL_OBJECTS =

test_binary_search: CMakeFiles/test_binary_search.dir/src/read_arrays_from_db.cpp.o
test_binary_search: CMakeFiles/test_binary_search.dir/tests/binary_search_gTest.cpp.o
test_binary_search: CMakeFiles/test_binary_search.dir/build.make
test_binary_search: /usr/lib/libgtest.so.1.15.2
test_binary_search: /usr/lib/libsqlite3.so
test_binary_search: CMakeFiles/test_binary_search.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/ghost/Learning-Space/algorithms/binary_search/cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable test_binary_search"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_binary_search.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_binary_search.dir/build: test_binary_search
.PHONY : CMakeFiles/test_binary_search.dir/build

CMakeFiles/test_binary_search.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_binary_search.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_binary_search.dir/clean

CMakeFiles/test_binary_search.dir/depend:
	cd /home/ghost/Learning-Space/algorithms/binary_search/cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ghost/Learning-Space/algorithms/binary_search/cpp /home/ghost/Learning-Space/algorithms/binary_search/cpp /home/ghost/Learning-Space/algorithms/binary_search/cpp/build /home/ghost/Learning-Space/algorithms/binary_search/cpp/build /home/ghost/Learning-Space/algorithms/binary_search/cpp/build/CMakeFiles/test_binary_search.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/test_binary_search.dir/depend

