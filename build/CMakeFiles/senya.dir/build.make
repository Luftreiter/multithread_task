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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/egor/study_proj/senya

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/egor/study_proj/senya/build

# Include any dependencies generated for this target.
include CMakeFiles/senya.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/senya.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/senya.dir/flags.make

CMakeFiles/senya.dir/src/curl_utils.cpp.o: CMakeFiles/senya.dir/flags.make
CMakeFiles/senya.dir/src/curl_utils.cpp.o: ../src/curl_utils.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/egor/study_proj/senya/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/senya.dir/src/curl_utils.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/senya.dir/src/curl_utils.cpp.o -c /home/egor/study_proj/senya/src/curl_utils.cpp

CMakeFiles/senya.dir/src/curl_utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/senya.dir/src/curl_utils.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/egor/study_proj/senya/src/curl_utils.cpp > CMakeFiles/senya.dir/src/curl_utils.cpp.i

CMakeFiles/senya.dir/src/curl_utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/senya.dir/src/curl_utils.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/egor/study_proj/senya/src/curl_utils.cpp -o CMakeFiles/senya.dir/src/curl_utils.cpp.s

CMakeFiles/senya.dir/src/curl_utils.cpp.o.requires:

.PHONY : CMakeFiles/senya.dir/src/curl_utils.cpp.o.requires

CMakeFiles/senya.dir/src/curl_utils.cpp.o.provides: CMakeFiles/senya.dir/src/curl_utils.cpp.o.requires
	$(MAKE) -f CMakeFiles/senya.dir/build.make CMakeFiles/senya.dir/src/curl_utils.cpp.o.provides.build
.PHONY : CMakeFiles/senya.dir/src/curl_utils.cpp.o.provides

CMakeFiles/senya.dir/src/curl_utils.cpp.o.provides.build: CMakeFiles/senya.dir/src/curl_utils.cpp.o


CMakeFiles/senya.dir/src/main.cpp.o: CMakeFiles/senya.dir/flags.make
CMakeFiles/senya.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/egor/study_proj/senya/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/senya.dir/src/main.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/senya.dir/src/main.cpp.o -c /home/egor/study_proj/senya/src/main.cpp

CMakeFiles/senya.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/senya.dir/src/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/egor/study_proj/senya/src/main.cpp > CMakeFiles/senya.dir/src/main.cpp.i

CMakeFiles/senya.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/senya.dir/src/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/egor/study_proj/senya/src/main.cpp -o CMakeFiles/senya.dir/src/main.cpp.s

CMakeFiles/senya.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/senya.dir/src/main.cpp.o.requires

CMakeFiles/senya.dir/src/main.cpp.o.provides: CMakeFiles/senya.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/senya.dir/build.make CMakeFiles/senya.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/senya.dir/src/main.cpp.o.provides

CMakeFiles/senya.dir/src/main.cpp.o.provides.build: CMakeFiles/senya.dir/src/main.cpp.o


CMakeFiles/senya.dir/src/program_handler.cpp.o: CMakeFiles/senya.dir/flags.make
CMakeFiles/senya.dir/src/program_handler.cpp.o: ../src/program_handler.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/egor/study_proj/senya/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/senya.dir/src/program_handler.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/senya.dir/src/program_handler.cpp.o -c /home/egor/study_proj/senya/src/program_handler.cpp

CMakeFiles/senya.dir/src/program_handler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/senya.dir/src/program_handler.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/egor/study_proj/senya/src/program_handler.cpp > CMakeFiles/senya.dir/src/program_handler.cpp.i

CMakeFiles/senya.dir/src/program_handler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/senya.dir/src/program_handler.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/egor/study_proj/senya/src/program_handler.cpp -o CMakeFiles/senya.dir/src/program_handler.cpp.s

CMakeFiles/senya.dir/src/program_handler.cpp.o.requires:

.PHONY : CMakeFiles/senya.dir/src/program_handler.cpp.o.requires

CMakeFiles/senya.dir/src/program_handler.cpp.o.provides: CMakeFiles/senya.dir/src/program_handler.cpp.o.requires
	$(MAKE) -f CMakeFiles/senya.dir/build.make CMakeFiles/senya.dir/src/program_handler.cpp.o.provides.build
.PHONY : CMakeFiles/senya.dir/src/program_handler.cpp.o.provides

CMakeFiles/senya.dir/src/program_handler.cpp.o.provides.build: CMakeFiles/senya.dir/src/program_handler.cpp.o


CMakeFiles/senya.dir/src/thr_logic.cpp.o: CMakeFiles/senya.dir/flags.make
CMakeFiles/senya.dir/src/thr_logic.cpp.o: ../src/thr_logic.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/egor/study_proj/senya/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/senya.dir/src/thr_logic.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/senya.dir/src/thr_logic.cpp.o -c /home/egor/study_proj/senya/src/thr_logic.cpp

CMakeFiles/senya.dir/src/thr_logic.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/senya.dir/src/thr_logic.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/egor/study_proj/senya/src/thr_logic.cpp > CMakeFiles/senya.dir/src/thr_logic.cpp.i

CMakeFiles/senya.dir/src/thr_logic.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/senya.dir/src/thr_logic.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/egor/study_proj/senya/src/thr_logic.cpp -o CMakeFiles/senya.dir/src/thr_logic.cpp.s

CMakeFiles/senya.dir/src/thr_logic.cpp.o.requires:

.PHONY : CMakeFiles/senya.dir/src/thr_logic.cpp.o.requires

CMakeFiles/senya.dir/src/thr_logic.cpp.o.provides: CMakeFiles/senya.dir/src/thr_logic.cpp.o.requires
	$(MAKE) -f CMakeFiles/senya.dir/build.make CMakeFiles/senya.dir/src/thr_logic.cpp.o.provides.build
.PHONY : CMakeFiles/senya.dir/src/thr_logic.cpp.o.provides

CMakeFiles/senya.dir/src/thr_logic.cpp.o.provides.build: CMakeFiles/senya.dir/src/thr_logic.cpp.o


# Object files for target senya
senya_OBJECTS = \
"CMakeFiles/senya.dir/src/curl_utils.cpp.o" \
"CMakeFiles/senya.dir/src/main.cpp.o" \
"CMakeFiles/senya.dir/src/program_handler.cpp.o" \
"CMakeFiles/senya.dir/src/thr_logic.cpp.o"

# External object files for target senya
senya_EXTERNAL_OBJECTS =

bin/senya: CMakeFiles/senya.dir/src/curl_utils.cpp.o
bin/senya: CMakeFiles/senya.dir/src/main.cpp.o
bin/senya: CMakeFiles/senya.dir/src/program_handler.cpp.o
bin/senya: CMakeFiles/senya.dir/src/thr_logic.cpp.o
bin/senya: CMakeFiles/senya.dir/build.make
bin/senya: lib/libcurl-d.so
bin/senya: /usr/lib/x86_64-linux-gnu/libz.so
bin/senya: CMakeFiles/senya.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/egor/study_proj/senya/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable bin/senya"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/senya.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/senya.dir/build: bin/senya

.PHONY : CMakeFiles/senya.dir/build

CMakeFiles/senya.dir/requires: CMakeFiles/senya.dir/src/curl_utils.cpp.o.requires
CMakeFiles/senya.dir/requires: CMakeFiles/senya.dir/src/main.cpp.o.requires
CMakeFiles/senya.dir/requires: CMakeFiles/senya.dir/src/program_handler.cpp.o.requires
CMakeFiles/senya.dir/requires: CMakeFiles/senya.dir/src/thr_logic.cpp.o.requires

.PHONY : CMakeFiles/senya.dir/requires

CMakeFiles/senya.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/senya.dir/cmake_clean.cmake
.PHONY : CMakeFiles/senya.dir/clean

CMakeFiles/senya.dir/depend:
	cd /home/egor/study_proj/senya/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/egor/study_proj/senya /home/egor/study_proj/senya /home/egor/study_proj/senya/build /home/egor/study_proj/senya/build /home/egor/study_proj/senya/build/CMakeFiles/senya.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/senya.dir/depend
