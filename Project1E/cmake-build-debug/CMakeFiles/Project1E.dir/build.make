# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.12

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2018.2.6\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2018.2.6\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Owner\CLionProjects\Project1E

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Owner\CLionProjects\Project1E\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Project1E.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Project1E.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Project1E.dir/flags.make

CMakeFiles/Project1E.dir/main.c.obj: CMakeFiles/Project1E.dir/flags.make
CMakeFiles/Project1E.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Owner\CLionProjects\Project1E\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Project1E.dir/main.c.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\Project1E.dir\main.c.obj   -c C:\Users\Owner\CLionProjects\Project1E\main.c

CMakeFiles/Project1E.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Project1E.dir/main.c.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Owner\CLionProjects\Project1E\main.c > CMakeFiles\Project1E.dir\main.c.i

CMakeFiles/Project1E.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Project1E.dir/main.c.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Owner\CLionProjects\Project1E\main.c -o CMakeFiles\Project1E.dir\main.c.s

# Object files for target Project1E
Project1E_OBJECTS = \
"CMakeFiles/Project1E.dir/main.c.obj"

# External object files for target Project1E
Project1E_EXTERNAL_OBJECTS =

Project1E.exe: CMakeFiles/Project1E.dir/main.c.obj
Project1E.exe: CMakeFiles/Project1E.dir/build.make
Project1E.exe: CMakeFiles/Project1E.dir/linklibs.rsp
Project1E.exe: CMakeFiles/Project1E.dir/objects1.rsp
Project1E.exe: CMakeFiles/Project1E.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Owner\CLionProjects\Project1E\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable Project1E.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Project1E.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Project1E.dir/build: Project1E.exe

.PHONY : CMakeFiles/Project1E.dir/build

CMakeFiles/Project1E.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Project1E.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Project1E.dir/clean

CMakeFiles/Project1E.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Owner\CLionProjects\Project1E C:\Users\Owner\CLionProjects\Project1E C:\Users\Owner\CLionProjects\Project1E\cmake-build-debug C:\Users\Owner\CLionProjects\Project1E\cmake-build-debug C:\Users\Owner\CLionProjects\Project1E\cmake-build-debug\CMakeFiles\Project1E.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Project1E.dir/depend

