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
include _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/flags.make

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/adler32.o: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/flags.make
_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/adler32.o: _deps/seal-build/thirdparty/zlib-src/adler32.c
_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/adler32.o: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/embedded-415/czh-rot/HE_GPU/cmake-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/adler32.o"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/adler32.o -MF CMakeFiles/zlibstatic.dir/adler32.o.d -o CMakeFiles/zlibstatic.dir/adler32.o -c /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/adler32.c

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/adler32.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/zlibstatic.dir/adler32.i"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/adler32.c > CMakeFiles/zlibstatic.dir/adler32.i

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/adler32.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/zlibstatic.dir/adler32.s"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/adler32.c -o CMakeFiles/zlibstatic.dir/adler32.s

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/compress.o: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/flags.make
_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/compress.o: _deps/seal-build/thirdparty/zlib-src/compress.c
_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/compress.o: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/embedded-415/czh-rot/HE_GPU/cmake-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/compress.o"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/compress.o -MF CMakeFiles/zlibstatic.dir/compress.o.d -o CMakeFiles/zlibstatic.dir/compress.o -c /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/compress.c

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/compress.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/zlibstatic.dir/compress.i"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/compress.c > CMakeFiles/zlibstatic.dir/compress.i

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/compress.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/zlibstatic.dir/compress.s"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/compress.c -o CMakeFiles/zlibstatic.dir/compress.s

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/crc32.o: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/flags.make
_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/crc32.o: _deps/seal-build/thirdparty/zlib-src/crc32.c
_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/crc32.o: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/embedded-415/czh-rot/HE_GPU/cmake-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/crc32.o"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/crc32.o -MF CMakeFiles/zlibstatic.dir/crc32.o.d -o CMakeFiles/zlibstatic.dir/crc32.o -c /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/crc32.c

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/crc32.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/zlibstatic.dir/crc32.i"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/crc32.c > CMakeFiles/zlibstatic.dir/crc32.i

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/crc32.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/zlibstatic.dir/crc32.s"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/crc32.c -o CMakeFiles/zlibstatic.dir/crc32.s

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/deflate.o: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/flags.make
_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/deflate.o: _deps/seal-build/thirdparty/zlib-src/deflate.c
_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/deflate.o: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/embedded-415/czh-rot/HE_GPU/cmake-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/deflate.o"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/deflate.o -MF CMakeFiles/zlibstatic.dir/deflate.o.d -o CMakeFiles/zlibstatic.dir/deflate.o -c /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/deflate.c

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/deflate.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/zlibstatic.dir/deflate.i"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/deflate.c > CMakeFiles/zlibstatic.dir/deflate.i

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/deflate.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/zlibstatic.dir/deflate.s"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/deflate.c -o CMakeFiles/zlibstatic.dir/deflate.s

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/gzclose.o: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/flags.make
_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/gzclose.o: _deps/seal-build/thirdparty/zlib-src/gzclose.c
_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/gzclose.o: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/embedded-415/czh-rot/HE_GPU/cmake-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/gzclose.o"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/gzclose.o -MF CMakeFiles/zlibstatic.dir/gzclose.o.d -o CMakeFiles/zlibstatic.dir/gzclose.o -c /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/gzclose.c

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/gzclose.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/zlibstatic.dir/gzclose.i"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/gzclose.c > CMakeFiles/zlibstatic.dir/gzclose.i

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/gzclose.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/zlibstatic.dir/gzclose.s"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/gzclose.c -o CMakeFiles/zlibstatic.dir/gzclose.s

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/gzlib.o: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/flags.make
_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/gzlib.o: _deps/seal-build/thirdparty/zlib-src/gzlib.c
_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/gzlib.o: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/embedded-415/czh-rot/HE_GPU/cmake-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/gzlib.o"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/gzlib.o -MF CMakeFiles/zlibstatic.dir/gzlib.o.d -o CMakeFiles/zlibstatic.dir/gzlib.o -c /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/gzlib.c

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/gzlib.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/zlibstatic.dir/gzlib.i"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/gzlib.c > CMakeFiles/zlibstatic.dir/gzlib.i

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/gzlib.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/zlibstatic.dir/gzlib.s"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/gzlib.c -o CMakeFiles/zlibstatic.dir/gzlib.s

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/gzread.o: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/flags.make
_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/gzread.o: _deps/seal-build/thirdparty/zlib-src/gzread.c
_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/gzread.o: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/embedded-415/czh-rot/HE_GPU/cmake-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/gzread.o"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/gzread.o -MF CMakeFiles/zlibstatic.dir/gzread.o.d -o CMakeFiles/zlibstatic.dir/gzread.o -c /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/gzread.c

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/gzread.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/zlibstatic.dir/gzread.i"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/gzread.c > CMakeFiles/zlibstatic.dir/gzread.i

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/gzread.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/zlibstatic.dir/gzread.s"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/gzread.c -o CMakeFiles/zlibstatic.dir/gzread.s

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/gzwrite.o: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/flags.make
_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/gzwrite.o: _deps/seal-build/thirdparty/zlib-src/gzwrite.c
_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/gzwrite.o: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/embedded-415/czh-rot/HE_GPU/cmake-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/gzwrite.o"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/gzwrite.o -MF CMakeFiles/zlibstatic.dir/gzwrite.o.d -o CMakeFiles/zlibstatic.dir/gzwrite.o -c /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/gzwrite.c

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/gzwrite.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/zlibstatic.dir/gzwrite.i"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/gzwrite.c > CMakeFiles/zlibstatic.dir/gzwrite.i

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/gzwrite.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/zlibstatic.dir/gzwrite.s"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/gzwrite.c -o CMakeFiles/zlibstatic.dir/gzwrite.s

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/inflate.o: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/flags.make
_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/inflate.o: _deps/seal-build/thirdparty/zlib-src/inflate.c
_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/inflate.o: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/embedded-415/czh-rot/HE_GPU/cmake-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/inflate.o"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/inflate.o -MF CMakeFiles/zlibstatic.dir/inflate.o.d -o CMakeFiles/zlibstatic.dir/inflate.o -c /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/inflate.c

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/inflate.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/zlibstatic.dir/inflate.i"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/inflate.c > CMakeFiles/zlibstatic.dir/inflate.i

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/inflate.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/zlibstatic.dir/inflate.s"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/inflate.c -o CMakeFiles/zlibstatic.dir/inflate.s

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/infback.o: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/flags.make
_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/infback.o: _deps/seal-build/thirdparty/zlib-src/infback.c
_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/infback.o: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/embedded-415/czh-rot/HE_GPU/cmake-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/infback.o"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/infback.o -MF CMakeFiles/zlibstatic.dir/infback.o.d -o CMakeFiles/zlibstatic.dir/infback.o -c /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/infback.c

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/infback.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/zlibstatic.dir/infback.i"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/infback.c > CMakeFiles/zlibstatic.dir/infback.i

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/infback.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/zlibstatic.dir/infback.s"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/infback.c -o CMakeFiles/zlibstatic.dir/infback.s

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/inftrees.o: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/flags.make
_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/inftrees.o: _deps/seal-build/thirdparty/zlib-src/inftrees.c
_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/inftrees.o: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/embedded-415/czh-rot/HE_GPU/cmake-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/inftrees.o"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/inftrees.o -MF CMakeFiles/zlibstatic.dir/inftrees.o.d -o CMakeFiles/zlibstatic.dir/inftrees.o -c /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/inftrees.c

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/inftrees.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/zlibstatic.dir/inftrees.i"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/inftrees.c > CMakeFiles/zlibstatic.dir/inftrees.i

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/inftrees.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/zlibstatic.dir/inftrees.s"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/inftrees.c -o CMakeFiles/zlibstatic.dir/inftrees.s

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/inffast.o: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/flags.make
_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/inffast.o: _deps/seal-build/thirdparty/zlib-src/inffast.c
_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/inffast.o: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/embedded-415/czh-rot/HE_GPU/cmake-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/inffast.o"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/inffast.o -MF CMakeFiles/zlibstatic.dir/inffast.o.d -o CMakeFiles/zlibstatic.dir/inffast.o -c /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/inffast.c

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/inffast.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/zlibstatic.dir/inffast.i"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/inffast.c > CMakeFiles/zlibstatic.dir/inffast.i

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/inffast.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/zlibstatic.dir/inffast.s"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/inffast.c -o CMakeFiles/zlibstatic.dir/inffast.s

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/trees.o: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/flags.make
_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/trees.o: _deps/seal-build/thirdparty/zlib-src/trees.c
_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/trees.o: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/embedded-415/czh-rot/HE_GPU/cmake-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/trees.o"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/trees.o -MF CMakeFiles/zlibstatic.dir/trees.o.d -o CMakeFiles/zlibstatic.dir/trees.o -c /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/trees.c

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/trees.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/zlibstatic.dir/trees.i"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/trees.c > CMakeFiles/zlibstatic.dir/trees.i

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/trees.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/zlibstatic.dir/trees.s"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/trees.c -o CMakeFiles/zlibstatic.dir/trees.s

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/uncompr.o: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/flags.make
_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/uncompr.o: _deps/seal-build/thirdparty/zlib-src/uncompr.c
_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/uncompr.o: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/embedded-415/czh-rot/HE_GPU/cmake-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/uncompr.o"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/uncompr.o -MF CMakeFiles/zlibstatic.dir/uncompr.o.d -o CMakeFiles/zlibstatic.dir/uncompr.o -c /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/uncompr.c

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/uncompr.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/zlibstatic.dir/uncompr.i"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/uncompr.c > CMakeFiles/zlibstatic.dir/uncompr.i

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/uncompr.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/zlibstatic.dir/uncompr.s"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/uncompr.c -o CMakeFiles/zlibstatic.dir/uncompr.s

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/zutil.o: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/flags.make
_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/zutil.o: _deps/seal-build/thirdparty/zlib-src/zutil.c
_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/zutil.o: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/embedded-415/czh-rot/HE_GPU/cmake-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/zutil.o"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/zutil.o -MF CMakeFiles/zlibstatic.dir/zutil.o.d -o CMakeFiles/zlibstatic.dir/zutil.o -c /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/zutil.c

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/zutil.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/zlibstatic.dir/zutil.i"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/zutil.c > CMakeFiles/zlibstatic.dir/zutil.i

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/zutil.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/zlibstatic.dir/zutil.s"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src/zutil.c -o CMakeFiles/zlibstatic.dir/zutil.s

# Object files for target zlibstatic
zlibstatic_OBJECTS = \
"CMakeFiles/zlibstatic.dir/adler32.o" \
"CMakeFiles/zlibstatic.dir/compress.o" \
"CMakeFiles/zlibstatic.dir/crc32.o" \
"CMakeFiles/zlibstatic.dir/deflate.o" \
"CMakeFiles/zlibstatic.dir/gzclose.o" \
"CMakeFiles/zlibstatic.dir/gzlib.o" \
"CMakeFiles/zlibstatic.dir/gzread.o" \
"CMakeFiles/zlibstatic.dir/gzwrite.o" \
"CMakeFiles/zlibstatic.dir/inflate.o" \
"CMakeFiles/zlibstatic.dir/infback.o" \
"CMakeFiles/zlibstatic.dir/inftrees.o" \
"CMakeFiles/zlibstatic.dir/inffast.o" \
"CMakeFiles/zlibstatic.dir/trees.o" \
"CMakeFiles/zlibstatic.dir/uncompr.o" \
"CMakeFiles/zlibstatic.dir/zutil.o"

# External object files for target zlibstatic
zlibstatic_EXTERNAL_OBJECTS =

_deps/seal-build/lib/libz.a: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/adler32.o
_deps/seal-build/lib/libz.a: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/compress.o
_deps/seal-build/lib/libz.a: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/crc32.o
_deps/seal-build/lib/libz.a: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/deflate.o
_deps/seal-build/lib/libz.a: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/gzclose.o
_deps/seal-build/lib/libz.a: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/gzlib.o
_deps/seal-build/lib/libz.a: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/gzread.o
_deps/seal-build/lib/libz.a: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/gzwrite.o
_deps/seal-build/lib/libz.a: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/inflate.o
_deps/seal-build/lib/libz.a: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/infback.o
_deps/seal-build/lib/libz.a: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/inftrees.o
_deps/seal-build/lib/libz.a: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/inffast.o
_deps/seal-build/lib/libz.a: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/trees.o
_deps/seal-build/lib/libz.a: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/uncompr.o
_deps/seal-build/lib/libz.a: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/zutil.o
_deps/seal-build/lib/libz.a: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/build.make
_deps/seal-build/lib/libz.a: _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/embedded-415/czh-rot/HE_GPU/cmake-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Linking C static library ../../lib/libz.a"
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && $(CMAKE_COMMAND) -P CMakeFiles/zlibstatic.dir/cmake_clean_target.cmake
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/zlibstatic.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/build: _deps/seal-build/lib/libz.a
.PHONY : _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/build

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/clean:
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build && $(CMAKE_COMMAND) -P CMakeFiles/zlibstatic.dir/cmake_clean.cmake
.PHONY : _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/clean

_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/depend:
	cd /home/embedded-415/czh-rot/HE_GPU/cmake-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/embedded-415/czh-rot/HE_GPU /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src /home/embedded-415/czh-rot/HE_GPU/cmake-build /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : _deps/seal-build/thirdparty/zlib-build/CMakeFiles/zlibstatic.dir/depend

