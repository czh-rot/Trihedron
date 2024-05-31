# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_SOURCE_DIR = /home/embedded-415/czh-rot/HE_GPU

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/embedded-415/czh-rot/HE_GPU/cmake-build

# Include any dependencies generated for this target.
include CMakeFiles/HE_test2.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/HE_test2.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/HE_test2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/HE_test2.dir/flags.make

CMakeFiles/HE_test2.dir/native/test/HE_test2.cu.o: CMakeFiles/HE_test2.dir/flags.make
CMakeFiles/HE_test2.dir/native/test/HE_test2.cu.o: CMakeFiles/HE_test2.dir/includes_CUDA.rsp
CMakeFiles/HE_test2.dir/native/test/HE_test2.cu.o: /home/embedded-415/czh-rot/HE_GPU/native/test/HE_test2.cu
CMakeFiles/HE_test2.dir/native/test/HE_test2.cu.o: CMakeFiles/HE_test2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/embedded-415/czh-rot/HE_GPU/cmake-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CUDA object CMakeFiles/HE_test2.dir/native/test/HE_test2.cu.o"
	/usr/local/cuda-12.3/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -MD -MT CMakeFiles/HE_test2.dir/native/test/HE_test2.cu.o -MF CMakeFiles/HE_test2.dir/native/test/HE_test2.cu.o.d -x cu -rdc=true -c /home/embedded-415/czh-rot/HE_GPU/native/test/HE_test2.cu -o CMakeFiles/HE_test2.dir/native/test/HE_test2.cu.o

CMakeFiles/HE_test2.dir/native/test/HE_test2.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CUDA source to CMakeFiles/HE_test2.dir/native/test/HE_test2.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/HE_test2.dir/native/test/HE_test2.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CUDA source to assembly CMakeFiles/HE_test2.dir/native/test/HE_test2.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

# Object files for target HE_test2
HE_test2_OBJECTS = \
"CMakeFiles/HE_test2.dir/native/test/HE_test2.cu.o"

# External object files for target HE_test2
HE_test2_EXTERNAL_OBJECTS =

CMakeFiles/HE_test2.dir/cmake_device_link.o: CMakeFiles/HE_test2.dir/native/test/HE_test2.cu.o
CMakeFiles/HE_test2.dir/cmake_device_link.o: CMakeFiles/HE_test2.dir/build.make
CMakeFiles/HE_test2.dir/cmake_device_link.o: libHEonGPU.a
CMakeFiles/HE_test2.dir/cmake_device_link.o: lib/libgtest_main.a
CMakeFiles/HE_test2.dir/cmake_device_link.o: _deps/seal-build/lib/libseal-4.1.a
CMakeFiles/HE_test2.dir/cmake_device_link.o: lib/libgtest.a
CMakeFiles/HE_test2.dir/cmake_device_link.o: CMakeFiles/HE_test2.dir/deviceLinkLibs.rsp
CMakeFiles/HE_test2.dir/cmake_device_link.o: CMakeFiles/HE_test2.dir/deviceObjects1.rsp
CMakeFiles/HE_test2.dir/cmake_device_link.o: CMakeFiles/HE_test2.dir/dlink.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/embedded-415/czh-rot/HE_GPU/cmake-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CUDA device code CMakeFiles/HE_test2.dir/cmake_device_link.o"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/HE_test2.dir/dlink.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/HE_test2.dir/build: CMakeFiles/HE_test2.dir/cmake_device_link.o
.PHONY : CMakeFiles/HE_test2.dir/build

# Object files for target HE_test2
HE_test2_OBJECTS = \
"CMakeFiles/HE_test2.dir/native/test/HE_test2.cu.o"

# External object files for target HE_test2
HE_test2_EXTERNAL_OBJECTS =

HE_test2: CMakeFiles/HE_test2.dir/native/test/HE_test2.cu.o
HE_test2: CMakeFiles/HE_test2.dir/build.make
HE_test2: libHEonGPU.a
HE_test2: lib/libgtest_main.a
HE_test2: _deps/seal-build/lib/libseal-4.1.a
HE_test2: lib/libgtest.a
HE_test2: CMakeFiles/HE_test2.dir/cmake_device_link.o
HE_test2: CMakeFiles/HE_test2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/embedded-415/czh-rot/HE_GPU/cmake-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable HE_test2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/HE_test2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/HE_test2.dir/build: HE_test2
.PHONY : CMakeFiles/HE_test2.dir/build

CMakeFiles/HE_test2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/HE_test2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/HE_test2.dir/clean

CMakeFiles/HE_test2.dir/depend:
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/embedded-415/czh-rot/HE_GPU /home/embedded-415/czh-rot/HE_GPU /home/embedded-415/czh-rot/HE_GPU/cmake-build /home/embedded-415/czh-rot/HE_GPU/cmake-build /home/embedded-415/czh-rot/HE_GPU/cmake-build/CMakeFiles/HE_test2.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/HE_test2.dir/depend

