# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_SOURCE_DIR = /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src

# Include any dependencies generated for this target.
include CMakeFiles/wakeWordAgent.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/wakeWordAgent.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/wakeWordAgent.dir/flags.make

CMakeFiles/wakeWordAgent.dir/main.cpp.o: CMakeFiles/wakeWordAgent.dir/flags.make
CMakeFiles/wakeWordAgent.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/wakeWordAgent.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/wakeWordAgent.dir/main.cpp.o -c /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/main.cpp

CMakeFiles/wakeWordAgent.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wakeWordAgent.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/main.cpp > CMakeFiles/wakeWordAgent.dir/main.cpp.i

CMakeFiles/wakeWordAgent.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wakeWordAgent.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/main.cpp -o CMakeFiles/wakeWordAgent.dir/main.cpp.s

CMakeFiles/wakeWordAgent.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/wakeWordAgent.dir/main.cpp.o.requires

CMakeFiles/wakeWordAgent.dir/main.cpp.o.provides: CMakeFiles/wakeWordAgent.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/wakeWordAgent.dir/build.make CMakeFiles/wakeWordAgent.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/wakeWordAgent.dir/main.cpp.o.provides

CMakeFiles/wakeWordAgent.dir/main.cpp.o.provides.build: CMakeFiles/wakeWordAgent.dir/main.cpp.o


CMakeFiles/wakeWordAgent.dir/WakeWordAgent.cpp.o: CMakeFiles/wakeWordAgent.dir/flags.make
CMakeFiles/wakeWordAgent.dir/WakeWordAgent.cpp.o: WakeWordAgent.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/wakeWordAgent.dir/WakeWordAgent.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/wakeWordAgent.dir/WakeWordAgent.cpp.o -c /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/WakeWordAgent.cpp

CMakeFiles/wakeWordAgent.dir/WakeWordAgent.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wakeWordAgent.dir/WakeWordAgent.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/WakeWordAgent.cpp > CMakeFiles/wakeWordAgent.dir/WakeWordAgent.cpp.i

CMakeFiles/wakeWordAgent.dir/WakeWordAgent.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wakeWordAgent.dir/WakeWordAgent.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/WakeWordAgent.cpp -o CMakeFiles/wakeWordAgent.dir/WakeWordAgent.cpp.s

CMakeFiles/wakeWordAgent.dir/WakeWordAgent.cpp.o.requires:

.PHONY : CMakeFiles/wakeWordAgent.dir/WakeWordAgent.cpp.o.requires

CMakeFiles/wakeWordAgent.dir/WakeWordAgent.cpp.o.provides: CMakeFiles/wakeWordAgent.dir/WakeWordAgent.cpp.o.requires
	$(MAKE) -f CMakeFiles/wakeWordAgent.dir/build.make CMakeFiles/wakeWordAgent.dir/WakeWordAgent.cpp.o.provides.build
.PHONY : CMakeFiles/wakeWordAgent.dir/WakeWordAgent.cpp.o.provides

CMakeFiles/wakeWordAgent.dir/WakeWordAgent.cpp.o.provides.build: CMakeFiles/wakeWordAgent.dir/WakeWordAgent.cpp.o


CMakeFiles/wakeWordAgent.dir/WakeWordEngineFactory.cpp.o: CMakeFiles/wakeWordAgent.dir/flags.make
CMakeFiles/wakeWordAgent.dir/WakeWordEngineFactory.cpp.o: WakeWordEngineFactory.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/wakeWordAgent.dir/WakeWordEngineFactory.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/wakeWordAgent.dir/WakeWordEngineFactory.cpp.o -c /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/WakeWordEngineFactory.cpp

CMakeFiles/wakeWordAgent.dir/WakeWordEngineFactory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wakeWordAgent.dir/WakeWordEngineFactory.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/WakeWordEngineFactory.cpp > CMakeFiles/wakeWordAgent.dir/WakeWordEngineFactory.cpp.i

CMakeFiles/wakeWordAgent.dir/WakeWordEngineFactory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wakeWordAgent.dir/WakeWordEngineFactory.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/WakeWordEngineFactory.cpp -o CMakeFiles/wakeWordAgent.dir/WakeWordEngineFactory.cpp.s

CMakeFiles/wakeWordAgent.dir/WakeWordEngineFactory.cpp.o.requires:

.PHONY : CMakeFiles/wakeWordAgent.dir/WakeWordEngineFactory.cpp.o.requires

CMakeFiles/wakeWordAgent.dir/WakeWordEngineFactory.cpp.o.provides: CMakeFiles/wakeWordAgent.dir/WakeWordEngineFactory.cpp.o.requires
	$(MAKE) -f CMakeFiles/wakeWordAgent.dir/build.make CMakeFiles/wakeWordAgent.dir/WakeWordEngineFactory.cpp.o.provides.build
.PHONY : CMakeFiles/wakeWordAgent.dir/WakeWordEngineFactory.cpp.o.provides

CMakeFiles/wakeWordAgent.dir/WakeWordEngineFactory.cpp.o.provides.build: CMakeFiles/wakeWordAgent.dir/WakeWordEngineFactory.cpp.o


CMakeFiles/wakeWordAgent.dir/WakeWordEngine.cpp.o: CMakeFiles/wakeWordAgent.dir/flags.make
CMakeFiles/wakeWordAgent.dir/WakeWordEngine.cpp.o: WakeWordEngine.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/wakeWordAgent.dir/WakeWordEngine.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/wakeWordAgent.dir/WakeWordEngine.cpp.o -c /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/WakeWordEngine.cpp

CMakeFiles/wakeWordAgent.dir/WakeWordEngine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wakeWordAgent.dir/WakeWordEngine.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/WakeWordEngine.cpp > CMakeFiles/wakeWordAgent.dir/WakeWordEngine.cpp.i

CMakeFiles/wakeWordAgent.dir/WakeWordEngine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wakeWordAgent.dir/WakeWordEngine.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/WakeWordEngine.cpp -o CMakeFiles/wakeWordAgent.dir/WakeWordEngine.cpp.s

CMakeFiles/wakeWordAgent.dir/WakeWordEngine.cpp.o.requires:

.PHONY : CMakeFiles/wakeWordAgent.dir/WakeWordEngine.cpp.o.requires

CMakeFiles/wakeWordAgent.dir/WakeWordEngine.cpp.o.provides: CMakeFiles/wakeWordAgent.dir/WakeWordEngine.cpp.o.requires
	$(MAKE) -f CMakeFiles/wakeWordAgent.dir/build.make CMakeFiles/wakeWordAgent.dir/WakeWordEngine.cpp.o.provides.build
.PHONY : CMakeFiles/wakeWordAgent.dir/WakeWordEngine.cpp.o.provides

CMakeFiles/wakeWordAgent.dir/WakeWordEngine.cpp.o.provides.build: CMakeFiles/wakeWordAgent.dir/WakeWordEngine.cpp.o


CMakeFiles/wakeWordAgent.dir/WakeWordIPCFactory.cpp.o: CMakeFiles/wakeWordAgent.dir/flags.make
CMakeFiles/wakeWordAgent.dir/WakeWordIPCFactory.cpp.o: WakeWordIPCFactory.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/wakeWordAgent.dir/WakeWordIPCFactory.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/wakeWordAgent.dir/WakeWordIPCFactory.cpp.o -c /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/WakeWordIPCFactory.cpp

CMakeFiles/wakeWordAgent.dir/WakeWordIPCFactory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wakeWordAgent.dir/WakeWordIPCFactory.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/WakeWordIPCFactory.cpp > CMakeFiles/wakeWordAgent.dir/WakeWordIPCFactory.cpp.i

CMakeFiles/wakeWordAgent.dir/WakeWordIPCFactory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wakeWordAgent.dir/WakeWordIPCFactory.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/WakeWordIPCFactory.cpp -o CMakeFiles/wakeWordAgent.dir/WakeWordIPCFactory.cpp.s

CMakeFiles/wakeWordAgent.dir/WakeWordIPCFactory.cpp.o.requires:

.PHONY : CMakeFiles/wakeWordAgent.dir/WakeWordIPCFactory.cpp.o.requires

CMakeFiles/wakeWordAgent.dir/WakeWordIPCFactory.cpp.o.provides: CMakeFiles/wakeWordAgent.dir/WakeWordIPCFactory.cpp.o.requires
	$(MAKE) -f CMakeFiles/wakeWordAgent.dir/build.make CMakeFiles/wakeWordAgent.dir/WakeWordIPCFactory.cpp.o.provides.build
.PHONY : CMakeFiles/wakeWordAgent.dir/WakeWordIPCFactory.cpp.o.provides

CMakeFiles/wakeWordAgent.dir/WakeWordIPCFactory.cpp.o.provides.build: CMakeFiles/wakeWordAgent.dir/WakeWordIPCFactory.cpp.o


CMakeFiles/wakeWordAgent.dir/WakeWordIPC.cpp.o: CMakeFiles/wakeWordAgent.dir/flags.make
CMakeFiles/wakeWordAgent.dir/WakeWordIPC.cpp.o: WakeWordIPC.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/wakeWordAgent.dir/WakeWordIPC.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/wakeWordAgent.dir/WakeWordIPC.cpp.o -c /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/WakeWordIPC.cpp

CMakeFiles/wakeWordAgent.dir/WakeWordIPC.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wakeWordAgent.dir/WakeWordIPC.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/WakeWordIPC.cpp > CMakeFiles/wakeWordAgent.dir/WakeWordIPC.cpp.i

CMakeFiles/wakeWordAgent.dir/WakeWordIPC.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wakeWordAgent.dir/WakeWordIPC.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/WakeWordIPC.cpp -o CMakeFiles/wakeWordAgent.dir/WakeWordIPC.cpp.s

CMakeFiles/wakeWordAgent.dir/WakeWordIPC.cpp.o.requires:

.PHONY : CMakeFiles/wakeWordAgent.dir/WakeWordIPC.cpp.o.requires

CMakeFiles/wakeWordAgent.dir/WakeWordIPC.cpp.o.provides: CMakeFiles/wakeWordAgent.dir/WakeWordIPC.cpp.o.requires
	$(MAKE) -f CMakeFiles/wakeWordAgent.dir/build.make CMakeFiles/wakeWordAgent.dir/WakeWordIPC.cpp.o.provides.build
.PHONY : CMakeFiles/wakeWordAgent.dir/WakeWordIPC.cpp.o.provides

CMakeFiles/wakeWordAgent.dir/WakeWordIPC.cpp.o.provides.build: CMakeFiles/wakeWordAgent.dir/WakeWordIPC.cpp.o


CMakeFiles/wakeWordAgent.dir/WakeWordIPCSocket.cpp.o: CMakeFiles/wakeWordAgent.dir/flags.make
CMakeFiles/wakeWordAgent.dir/WakeWordIPCSocket.cpp.o: WakeWordIPCSocket.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/wakeWordAgent.dir/WakeWordIPCSocket.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/wakeWordAgent.dir/WakeWordIPCSocket.cpp.o -c /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/WakeWordIPCSocket.cpp

CMakeFiles/wakeWordAgent.dir/WakeWordIPCSocket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wakeWordAgent.dir/WakeWordIPCSocket.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/WakeWordIPCSocket.cpp > CMakeFiles/wakeWordAgent.dir/WakeWordIPCSocket.cpp.i

CMakeFiles/wakeWordAgent.dir/WakeWordIPCSocket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wakeWordAgent.dir/WakeWordIPCSocket.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/WakeWordIPCSocket.cpp -o CMakeFiles/wakeWordAgent.dir/WakeWordIPCSocket.cpp.s

CMakeFiles/wakeWordAgent.dir/WakeWordIPCSocket.cpp.o.requires:

.PHONY : CMakeFiles/wakeWordAgent.dir/WakeWordIPCSocket.cpp.o.requires

CMakeFiles/wakeWordAgent.dir/WakeWordIPCSocket.cpp.o.provides: CMakeFiles/wakeWordAgent.dir/WakeWordIPCSocket.cpp.o.requires
	$(MAKE) -f CMakeFiles/wakeWordAgent.dir/build.make CMakeFiles/wakeWordAgent.dir/WakeWordIPCSocket.cpp.o.provides.build
.PHONY : CMakeFiles/wakeWordAgent.dir/WakeWordIPCSocket.cpp.o.provides

CMakeFiles/wakeWordAgent.dir/WakeWordIPCSocket.cpp.o.provides.build: CMakeFiles/wakeWordAgent.dir/WakeWordIPCSocket.cpp.o


CMakeFiles/wakeWordAgent.dir/IPCInterface.cpp.o: CMakeFiles/wakeWordAgent.dir/flags.make
CMakeFiles/wakeWordAgent.dir/IPCInterface.cpp.o: IPCInterface.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/wakeWordAgent.dir/IPCInterface.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/wakeWordAgent.dir/IPCInterface.cpp.o -c /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/IPCInterface.cpp

CMakeFiles/wakeWordAgent.dir/IPCInterface.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wakeWordAgent.dir/IPCInterface.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/IPCInterface.cpp > CMakeFiles/wakeWordAgent.dir/IPCInterface.cpp.i

CMakeFiles/wakeWordAgent.dir/IPCInterface.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wakeWordAgent.dir/IPCInterface.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/IPCInterface.cpp -o CMakeFiles/wakeWordAgent.dir/IPCInterface.cpp.s

CMakeFiles/wakeWordAgent.dir/IPCInterface.cpp.o.requires:

.PHONY : CMakeFiles/wakeWordAgent.dir/IPCInterface.cpp.o.requires

CMakeFiles/wakeWordAgent.dir/IPCInterface.cpp.o.provides: CMakeFiles/wakeWordAgent.dir/IPCInterface.cpp.o.requires
	$(MAKE) -f CMakeFiles/wakeWordAgent.dir/build.make CMakeFiles/wakeWordAgent.dir/IPCInterface.cpp.o.provides.build
.PHONY : CMakeFiles/wakeWordAgent.dir/IPCInterface.cpp.o.provides

CMakeFiles/wakeWordAgent.dir/IPCInterface.cpp.o.provides.build: CMakeFiles/wakeWordAgent.dir/IPCInterface.cpp.o


CMakeFiles/wakeWordAgent.dir/Logger.cpp.o: CMakeFiles/wakeWordAgent.dir/flags.make
CMakeFiles/wakeWordAgent.dir/Logger.cpp.o: Logger.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/wakeWordAgent.dir/Logger.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/wakeWordAgent.dir/Logger.cpp.o -c /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/Logger.cpp

CMakeFiles/wakeWordAgent.dir/Logger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wakeWordAgent.dir/Logger.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/Logger.cpp > CMakeFiles/wakeWordAgent.dir/Logger.cpp.i

CMakeFiles/wakeWordAgent.dir/Logger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wakeWordAgent.dir/Logger.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/Logger.cpp -o CMakeFiles/wakeWordAgent.dir/Logger.cpp.s

CMakeFiles/wakeWordAgent.dir/Logger.cpp.o.requires:

.PHONY : CMakeFiles/wakeWordAgent.dir/Logger.cpp.o.requires

CMakeFiles/wakeWordAgent.dir/Logger.cpp.o.provides: CMakeFiles/wakeWordAgent.dir/Logger.cpp.o.requires
	$(MAKE) -f CMakeFiles/wakeWordAgent.dir/build.make CMakeFiles/wakeWordAgent.dir/Logger.cpp.o.provides.build
.PHONY : CMakeFiles/wakeWordAgent.dir/Logger.cpp.o.provides

CMakeFiles/wakeWordAgent.dir/Logger.cpp.o.provides.build: CMakeFiles/wakeWordAgent.dir/Logger.cpp.o


CMakeFiles/wakeWordAgent.dir/WakeWordException.cpp.o: CMakeFiles/wakeWordAgent.dir/flags.make
CMakeFiles/wakeWordAgent.dir/WakeWordException.cpp.o: WakeWordException.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/wakeWordAgent.dir/WakeWordException.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/wakeWordAgent.dir/WakeWordException.cpp.o -c /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/WakeWordException.cpp

CMakeFiles/wakeWordAgent.dir/WakeWordException.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wakeWordAgent.dir/WakeWordException.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/WakeWordException.cpp > CMakeFiles/wakeWordAgent.dir/WakeWordException.cpp.i

CMakeFiles/wakeWordAgent.dir/WakeWordException.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wakeWordAgent.dir/WakeWordException.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/WakeWordException.cpp -o CMakeFiles/wakeWordAgent.dir/WakeWordException.cpp.s

CMakeFiles/wakeWordAgent.dir/WakeWordException.cpp.o.requires:

.PHONY : CMakeFiles/wakeWordAgent.dir/WakeWordException.cpp.o.requires

CMakeFiles/wakeWordAgent.dir/WakeWordException.cpp.o.provides: CMakeFiles/wakeWordAgent.dir/WakeWordException.cpp.o.requires
	$(MAKE) -f CMakeFiles/wakeWordAgent.dir/build.make CMakeFiles/wakeWordAgent.dir/WakeWordException.cpp.o.provides.build
.PHONY : CMakeFiles/wakeWordAgent.dir/WakeWordException.cpp.o.provides

CMakeFiles/wakeWordAgent.dir/WakeWordException.cpp.o.provides.build: CMakeFiles/wakeWordAgent.dir/WakeWordException.cpp.o


CMakeFiles/wakeWordAgent.dir/KittAiSnowboyWakeWordEngine.cpp.o: CMakeFiles/wakeWordAgent.dir/flags.make
CMakeFiles/wakeWordAgent.dir/KittAiSnowboyWakeWordEngine.cpp.o: KittAiSnowboyWakeWordEngine.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/wakeWordAgent.dir/KittAiSnowboyWakeWordEngine.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/wakeWordAgent.dir/KittAiSnowboyWakeWordEngine.cpp.o -c /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/KittAiSnowboyWakeWordEngine.cpp

CMakeFiles/wakeWordAgent.dir/KittAiSnowboyWakeWordEngine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wakeWordAgent.dir/KittAiSnowboyWakeWordEngine.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/KittAiSnowboyWakeWordEngine.cpp > CMakeFiles/wakeWordAgent.dir/KittAiSnowboyWakeWordEngine.cpp.i

CMakeFiles/wakeWordAgent.dir/KittAiSnowboyWakeWordEngine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wakeWordAgent.dir/KittAiSnowboyWakeWordEngine.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/KittAiSnowboyWakeWordEngine.cpp -o CMakeFiles/wakeWordAgent.dir/KittAiSnowboyWakeWordEngine.cpp.s

CMakeFiles/wakeWordAgent.dir/KittAiSnowboyWakeWordEngine.cpp.o.requires:

.PHONY : CMakeFiles/wakeWordAgent.dir/KittAiSnowboyWakeWordEngine.cpp.o.requires

CMakeFiles/wakeWordAgent.dir/KittAiSnowboyWakeWordEngine.cpp.o.provides: CMakeFiles/wakeWordAgent.dir/KittAiSnowboyWakeWordEngine.cpp.o.requires
	$(MAKE) -f CMakeFiles/wakeWordAgent.dir/build.make CMakeFiles/wakeWordAgent.dir/KittAiSnowboyWakeWordEngine.cpp.o.provides.build
.PHONY : CMakeFiles/wakeWordAgent.dir/KittAiSnowboyWakeWordEngine.cpp.o.provides

CMakeFiles/wakeWordAgent.dir/KittAiSnowboyWakeWordEngine.cpp.o.provides.build: CMakeFiles/wakeWordAgent.dir/KittAiSnowboyWakeWordEngine.cpp.o


CMakeFiles/wakeWordAgent.dir/PortAudioWrapper.cpp.o: CMakeFiles/wakeWordAgent.dir/flags.make
CMakeFiles/wakeWordAgent.dir/PortAudioWrapper.cpp.o: PortAudioWrapper.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/wakeWordAgent.dir/PortAudioWrapper.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/wakeWordAgent.dir/PortAudioWrapper.cpp.o -c /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/PortAudioWrapper.cpp

CMakeFiles/wakeWordAgent.dir/PortAudioWrapper.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wakeWordAgent.dir/PortAudioWrapper.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/PortAudioWrapper.cpp > CMakeFiles/wakeWordAgent.dir/PortAudioWrapper.cpp.i

CMakeFiles/wakeWordAgent.dir/PortAudioWrapper.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wakeWordAgent.dir/PortAudioWrapper.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/PortAudioWrapper.cpp -o CMakeFiles/wakeWordAgent.dir/PortAudioWrapper.cpp.s

CMakeFiles/wakeWordAgent.dir/PortAudioWrapper.cpp.o.requires:

.PHONY : CMakeFiles/wakeWordAgent.dir/PortAudioWrapper.cpp.o.requires

CMakeFiles/wakeWordAgent.dir/PortAudioWrapper.cpp.o.provides: CMakeFiles/wakeWordAgent.dir/PortAudioWrapper.cpp.o.requires
	$(MAKE) -f CMakeFiles/wakeWordAgent.dir/build.make CMakeFiles/wakeWordAgent.dir/PortAudioWrapper.cpp.o.provides.build
.PHONY : CMakeFiles/wakeWordAgent.dir/PortAudioWrapper.cpp.o.provides

CMakeFiles/wakeWordAgent.dir/PortAudioWrapper.cpp.o.provides.build: CMakeFiles/wakeWordAgent.dir/PortAudioWrapper.cpp.o


CMakeFiles/wakeWordAgent.dir/SensoryWakeWordEngine.cpp.o: CMakeFiles/wakeWordAgent.dir/flags.make
CMakeFiles/wakeWordAgent.dir/SensoryWakeWordEngine.cpp.o: SensoryWakeWordEngine.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/wakeWordAgent.dir/SensoryWakeWordEngine.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/wakeWordAgent.dir/SensoryWakeWordEngine.cpp.o -c /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/SensoryWakeWordEngine.cpp

CMakeFiles/wakeWordAgent.dir/SensoryWakeWordEngine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wakeWordAgent.dir/SensoryWakeWordEngine.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/SensoryWakeWordEngine.cpp > CMakeFiles/wakeWordAgent.dir/SensoryWakeWordEngine.cpp.i

CMakeFiles/wakeWordAgent.dir/SensoryWakeWordEngine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wakeWordAgent.dir/SensoryWakeWordEngine.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/SensoryWakeWordEngine.cpp -o CMakeFiles/wakeWordAgent.dir/SensoryWakeWordEngine.cpp.s

CMakeFiles/wakeWordAgent.dir/SensoryWakeWordEngine.cpp.o.requires:

.PHONY : CMakeFiles/wakeWordAgent.dir/SensoryWakeWordEngine.cpp.o.requires

CMakeFiles/wakeWordAgent.dir/SensoryWakeWordEngine.cpp.o.provides: CMakeFiles/wakeWordAgent.dir/SensoryWakeWordEngine.cpp.o.requires
	$(MAKE) -f CMakeFiles/wakeWordAgent.dir/build.make CMakeFiles/wakeWordAgent.dir/SensoryWakeWordEngine.cpp.o.provides.build
.PHONY : CMakeFiles/wakeWordAgent.dir/SensoryWakeWordEngine.cpp.o.provides

CMakeFiles/wakeWordAgent.dir/SensoryWakeWordEngine.cpp.o.provides.build: CMakeFiles/wakeWordAgent.dir/SensoryWakeWordEngine.cpp.o


CMakeFiles/wakeWordAgent.dir/GPIOWakeWordEngine.cpp.o: CMakeFiles/wakeWordAgent.dir/flags.make
CMakeFiles/wakeWordAgent.dir/GPIOWakeWordEngine.cpp.o: GPIOWakeWordEngine.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/wakeWordAgent.dir/GPIOWakeWordEngine.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/wakeWordAgent.dir/GPIOWakeWordEngine.cpp.o -c /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/GPIOWakeWordEngine.cpp

CMakeFiles/wakeWordAgent.dir/GPIOWakeWordEngine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wakeWordAgent.dir/GPIOWakeWordEngine.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/GPIOWakeWordEngine.cpp > CMakeFiles/wakeWordAgent.dir/GPIOWakeWordEngine.cpp.i

CMakeFiles/wakeWordAgent.dir/GPIOWakeWordEngine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wakeWordAgent.dir/GPIOWakeWordEngine.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/GPIOWakeWordEngine.cpp -o CMakeFiles/wakeWordAgent.dir/GPIOWakeWordEngine.cpp.s

CMakeFiles/wakeWordAgent.dir/GPIOWakeWordEngine.cpp.o.requires:

.PHONY : CMakeFiles/wakeWordAgent.dir/GPIOWakeWordEngine.cpp.o.requires

CMakeFiles/wakeWordAgent.dir/GPIOWakeWordEngine.cpp.o.provides: CMakeFiles/wakeWordAgent.dir/GPIOWakeWordEngine.cpp.o.requires
	$(MAKE) -f CMakeFiles/wakeWordAgent.dir/build.make CMakeFiles/wakeWordAgent.dir/GPIOWakeWordEngine.cpp.o.provides.build
.PHONY : CMakeFiles/wakeWordAgent.dir/GPIOWakeWordEngine.cpp.o.provides

CMakeFiles/wakeWordAgent.dir/GPIOWakeWordEngine.cpp.o.provides.build: CMakeFiles/wakeWordAgent.dir/GPIOWakeWordEngine.cpp.o


# Object files for target wakeWordAgent
wakeWordAgent_OBJECTS = \
"CMakeFiles/wakeWordAgent.dir/main.cpp.o" \
"CMakeFiles/wakeWordAgent.dir/WakeWordAgent.cpp.o" \
"CMakeFiles/wakeWordAgent.dir/WakeWordEngineFactory.cpp.o" \
"CMakeFiles/wakeWordAgent.dir/WakeWordEngine.cpp.o" \
"CMakeFiles/wakeWordAgent.dir/WakeWordIPCFactory.cpp.o" \
"CMakeFiles/wakeWordAgent.dir/WakeWordIPC.cpp.o" \
"CMakeFiles/wakeWordAgent.dir/WakeWordIPCSocket.cpp.o" \
"CMakeFiles/wakeWordAgent.dir/IPCInterface.cpp.o" \
"CMakeFiles/wakeWordAgent.dir/Logger.cpp.o" \
"CMakeFiles/wakeWordAgent.dir/WakeWordException.cpp.o" \
"CMakeFiles/wakeWordAgent.dir/KittAiSnowboyWakeWordEngine.cpp.o" \
"CMakeFiles/wakeWordAgent.dir/PortAudioWrapper.cpp.o" \
"CMakeFiles/wakeWordAgent.dir/SensoryWakeWordEngine.cpp.o" \
"CMakeFiles/wakeWordAgent.dir/GPIOWakeWordEngine.cpp.o"

# External object files for target wakeWordAgent
wakeWordAgent_EXTERNAL_OBJECTS =

wakeWordAgent: CMakeFiles/wakeWordAgent.dir/main.cpp.o
wakeWordAgent: CMakeFiles/wakeWordAgent.dir/WakeWordAgent.cpp.o
wakeWordAgent: CMakeFiles/wakeWordAgent.dir/WakeWordEngineFactory.cpp.o
wakeWordAgent: CMakeFiles/wakeWordAgent.dir/WakeWordEngine.cpp.o
wakeWordAgent: CMakeFiles/wakeWordAgent.dir/WakeWordIPCFactory.cpp.o
wakeWordAgent: CMakeFiles/wakeWordAgent.dir/WakeWordIPC.cpp.o
wakeWordAgent: CMakeFiles/wakeWordAgent.dir/WakeWordIPCSocket.cpp.o
wakeWordAgent: CMakeFiles/wakeWordAgent.dir/IPCInterface.cpp.o
wakeWordAgent: CMakeFiles/wakeWordAgent.dir/Logger.cpp.o
wakeWordAgent: CMakeFiles/wakeWordAgent.dir/WakeWordException.cpp.o
wakeWordAgent: CMakeFiles/wakeWordAgent.dir/KittAiSnowboyWakeWordEngine.cpp.o
wakeWordAgent: CMakeFiles/wakeWordAgent.dir/PortAudioWrapper.cpp.o
wakeWordAgent: CMakeFiles/wakeWordAgent.dir/SensoryWakeWordEngine.cpp.o
wakeWordAgent: CMakeFiles/wakeWordAgent.dir/GPIOWakeWordEngine.cpp.o
wakeWordAgent: CMakeFiles/wakeWordAgent.dir/build.make
wakeWordAgent: ../ext/lib/libsnowboy-detect.a
wakeWordAgent: ../ext/lib/libblas.so.3
wakeWordAgent: ../ext/lib/libportaudio.a
wakeWordAgent: ../ext/lib/libsnsr.a
wakeWordAgent: CMakeFiles/wakeWordAgent.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Linking CXX executable wakeWordAgent"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wakeWordAgent.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/wakeWordAgent.dir/build: wakeWordAgent

.PHONY : CMakeFiles/wakeWordAgent.dir/build

CMakeFiles/wakeWordAgent.dir/requires: CMakeFiles/wakeWordAgent.dir/main.cpp.o.requires
CMakeFiles/wakeWordAgent.dir/requires: CMakeFiles/wakeWordAgent.dir/WakeWordAgent.cpp.o.requires
CMakeFiles/wakeWordAgent.dir/requires: CMakeFiles/wakeWordAgent.dir/WakeWordEngineFactory.cpp.o.requires
CMakeFiles/wakeWordAgent.dir/requires: CMakeFiles/wakeWordAgent.dir/WakeWordEngine.cpp.o.requires
CMakeFiles/wakeWordAgent.dir/requires: CMakeFiles/wakeWordAgent.dir/WakeWordIPCFactory.cpp.o.requires
CMakeFiles/wakeWordAgent.dir/requires: CMakeFiles/wakeWordAgent.dir/WakeWordIPC.cpp.o.requires
CMakeFiles/wakeWordAgent.dir/requires: CMakeFiles/wakeWordAgent.dir/WakeWordIPCSocket.cpp.o.requires
CMakeFiles/wakeWordAgent.dir/requires: CMakeFiles/wakeWordAgent.dir/IPCInterface.cpp.o.requires
CMakeFiles/wakeWordAgent.dir/requires: CMakeFiles/wakeWordAgent.dir/Logger.cpp.o.requires
CMakeFiles/wakeWordAgent.dir/requires: CMakeFiles/wakeWordAgent.dir/WakeWordException.cpp.o.requires
CMakeFiles/wakeWordAgent.dir/requires: CMakeFiles/wakeWordAgent.dir/KittAiSnowboyWakeWordEngine.cpp.o.requires
CMakeFiles/wakeWordAgent.dir/requires: CMakeFiles/wakeWordAgent.dir/PortAudioWrapper.cpp.o.requires
CMakeFiles/wakeWordAgent.dir/requires: CMakeFiles/wakeWordAgent.dir/SensoryWakeWordEngine.cpp.o.requires
CMakeFiles/wakeWordAgent.dir/requires: CMakeFiles/wakeWordAgent.dir/GPIOWakeWordEngine.cpp.o.requires

.PHONY : CMakeFiles/wakeWordAgent.dir/requires

CMakeFiles/wakeWordAgent.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/wakeWordAgent.dir/cmake_clean.cmake
.PHONY : CMakeFiles/wakeWordAgent.dir/clean

CMakeFiles/wakeWordAgent.dir/depend:
	cd /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src /home/pi/Desktop/SentinelAI/alexa-avs-sample-app/samples/wakeWordAgent/src/CMakeFiles/wakeWordAgent.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/wakeWordAgent.dir/depend

