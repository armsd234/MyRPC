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
CMAKE_SOURCE_DIR = /home/cc/Desktop/ccspace/kama-webserver

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cc/Desktop/ccspace/kama-webserver/build

# Include any dependencies generated for this target.
include src/CMakeFiles/src_lib.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/src_lib.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/src_lib.dir/flags.make

src/CMakeFiles/src_lib.dir/Acceptor.cc.o: src/CMakeFiles/src_lib.dir/flags.make
src/CMakeFiles/src_lib.dir/Acceptor.cc.o: ../src/Acceptor.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cc/Desktop/ccspace/kama-webserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/src_lib.dir/Acceptor.cc.o"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/src_lib.dir/Acceptor.cc.o -c /home/cc/Desktop/ccspace/kama-webserver/src/Acceptor.cc

src/CMakeFiles/src_lib.dir/Acceptor.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src_lib.dir/Acceptor.cc.i"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cc/Desktop/ccspace/kama-webserver/src/Acceptor.cc > CMakeFiles/src_lib.dir/Acceptor.cc.i

src/CMakeFiles/src_lib.dir/Acceptor.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src_lib.dir/Acceptor.cc.s"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cc/Desktop/ccspace/kama-webserver/src/Acceptor.cc -o CMakeFiles/src_lib.dir/Acceptor.cc.s

src/CMakeFiles/src_lib.dir/Buffer.cc.o: src/CMakeFiles/src_lib.dir/flags.make
src/CMakeFiles/src_lib.dir/Buffer.cc.o: ../src/Buffer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cc/Desktop/ccspace/kama-webserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/src_lib.dir/Buffer.cc.o"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/src_lib.dir/Buffer.cc.o -c /home/cc/Desktop/ccspace/kama-webserver/src/Buffer.cc

src/CMakeFiles/src_lib.dir/Buffer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src_lib.dir/Buffer.cc.i"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cc/Desktop/ccspace/kama-webserver/src/Buffer.cc > CMakeFiles/src_lib.dir/Buffer.cc.i

src/CMakeFiles/src_lib.dir/Buffer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src_lib.dir/Buffer.cc.s"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cc/Desktop/ccspace/kama-webserver/src/Buffer.cc -o CMakeFiles/src_lib.dir/Buffer.cc.s

src/CMakeFiles/src_lib.dir/Channel.cc.o: src/CMakeFiles/src_lib.dir/flags.make
src/CMakeFiles/src_lib.dir/Channel.cc.o: ../src/Channel.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cc/Desktop/ccspace/kama-webserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/src_lib.dir/Channel.cc.o"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/src_lib.dir/Channel.cc.o -c /home/cc/Desktop/ccspace/kama-webserver/src/Channel.cc

src/CMakeFiles/src_lib.dir/Channel.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src_lib.dir/Channel.cc.i"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cc/Desktop/ccspace/kama-webserver/src/Channel.cc > CMakeFiles/src_lib.dir/Channel.cc.i

src/CMakeFiles/src_lib.dir/Channel.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src_lib.dir/Channel.cc.s"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cc/Desktop/ccspace/kama-webserver/src/Channel.cc -o CMakeFiles/src_lib.dir/Channel.cc.s

src/CMakeFiles/src_lib.dir/CurrentThread.cc.o: src/CMakeFiles/src_lib.dir/flags.make
src/CMakeFiles/src_lib.dir/CurrentThread.cc.o: ../src/CurrentThread.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cc/Desktop/ccspace/kama-webserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/CMakeFiles/src_lib.dir/CurrentThread.cc.o"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/src_lib.dir/CurrentThread.cc.o -c /home/cc/Desktop/ccspace/kama-webserver/src/CurrentThread.cc

src/CMakeFiles/src_lib.dir/CurrentThread.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src_lib.dir/CurrentThread.cc.i"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cc/Desktop/ccspace/kama-webserver/src/CurrentThread.cc > CMakeFiles/src_lib.dir/CurrentThread.cc.i

src/CMakeFiles/src_lib.dir/CurrentThread.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src_lib.dir/CurrentThread.cc.s"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cc/Desktop/ccspace/kama-webserver/src/CurrentThread.cc -o CMakeFiles/src_lib.dir/CurrentThread.cc.s

src/CMakeFiles/src_lib.dir/DefaultPoller.cc.o: src/CMakeFiles/src_lib.dir/flags.make
src/CMakeFiles/src_lib.dir/DefaultPoller.cc.o: ../src/DefaultPoller.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cc/Desktop/ccspace/kama-webserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/CMakeFiles/src_lib.dir/DefaultPoller.cc.o"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/src_lib.dir/DefaultPoller.cc.o -c /home/cc/Desktop/ccspace/kama-webserver/src/DefaultPoller.cc

src/CMakeFiles/src_lib.dir/DefaultPoller.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src_lib.dir/DefaultPoller.cc.i"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cc/Desktop/ccspace/kama-webserver/src/DefaultPoller.cc > CMakeFiles/src_lib.dir/DefaultPoller.cc.i

src/CMakeFiles/src_lib.dir/DefaultPoller.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src_lib.dir/DefaultPoller.cc.s"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cc/Desktop/ccspace/kama-webserver/src/DefaultPoller.cc -o CMakeFiles/src_lib.dir/DefaultPoller.cc.s

src/CMakeFiles/src_lib.dir/EPollPoller.cc.o: src/CMakeFiles/src_lib.dir/flags.make
src/CMakeFiles/src_lib.dir/EPollPoller.cc.o: ../src/EPollPoller.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cc/Desktop/ccspace/kama-webserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/CMakeFiles/src_lib.dir/EPollPoller.cc.o"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/src_lib.dir/EPollPoller.cc.o -c /home/cc/Desktop/ccspace/kama-webserver/src/EPollPoller.cc

src/CMakeFiles/src_lib.dir/EPollPoller.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src_lib.dir/EPollPoller.cc.i"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cc/Desktop/ccspace/kama-webserver/src/EPollPoller.cc > CMakeFiles/src_lib.dir/EPollPoller.cc.i

src/CMakeFiles/src_lib.dir/EPollPoller.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src_lib.dir/EPollPoller.cc.s"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cc/Desktop/ccspace/kama-webserver/src/EPollPoller.cc -o CMakeFiles/src_lib.dir/EPollPoller.cc.s

src/CMakeFiles/src_lib.dir/EventLoop.cc.o: src/CMakeFiles/src_lib.dir/flags.make
src/CMakeFiles/src_lib.dir/EventLoop.cc.o: ../src/EventLoop.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cc/Desktop/ccspace/kama-webserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/CMakeFiles/src_lib.dir/EventLoop.cc.o"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/src_lib.dir/EventLoop.cc.o -c /home/cc/Desktop/ccspace/kama-webserver/src/EventLoop.cc

src/CMakeFiles/src_lib.dir/EventLoop.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src_lib.dir/EventLoop.cc.i"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cc/Desktop/ccspace/kama-webserver/src/EventLoop.cc > CMakeFiles/src_lib.dir/EventLoop.cc.i

src/CMakeFiles/src_lib.dir/EventLoop.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src_lib.dir/EventLoop.cc.s"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cc/Desktop/ccspace/kama-webserver/src/EventLoop.cc -o CMakeFiles/src_lib.dir/EventLoop.cc.s

src/CMakeFiles/src_lib.dir/EventLoopThread.cc.o: src/CMakeFiles/src_lib.dir/flags.make
src/CMakeFiles/src_lib.dir/EventLoopThread.cc.o: ../src/EventLoopThread.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cc/Desktop/ccspace/kama-webserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/CMakeFiles/src_lib.dir/EventLoopThread.cc.o"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/src_lib.dir/EventLoopThread.cc.o -c /home/cc/Desktop/ccspace/kama-webserver/src/EventLoopThread.cc

src/CMakeFiles/src_lib.dir/EventLoopThread.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src_lib.dir/EventLoopThread.cc.i"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cc/Desktop/ccspace/kama-webserver/src/EventLoopThread.cc > CMakeFiles/src_lib.dir/EventLoopThread.cc.i

src/CMakeFiles/src_lib.dir/EventLoopThread.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src_lib.dir/EventLoopThread.cc.s"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cc/Desktop/ccspace/kama-webserver/src/EventLoopThread.cc -o CMakeFiles/src_lib.dir/EventLoopThread.cc.s

src/CMakeFiles/src_lib.dir/EventLoopThreadPool.cc.o: src/CMakeFiles/src_lib.dir/flags.make
src/CMakeFiles/src_lib.dir/EventLoopThreadPool.cc.o: ../src/EventLoopThreadPool.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cc/Desktop/ccspace/kama-webserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object src/CMakeFiles/src_lib.dir/EventLoopThreadPool.cc.o"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/src_lib.dir/EventLoopThreadPool.cc.o -c /home/cc/Desktop/ccspace/kama-webserver/src/EventLoopThreadPool.cc

src/CMakeFiles/src_lib.dir/EventLoopThreadPool.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src_lib.dir/EventLoopThreadPool.cc.i"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cc/Desktop/ccspace/kama-webserver/src/EventLoopThreadPool.cc > CMakeFiles/src_lib.dir/EventLoopThreadPool.cc.i

src/CMakeFiles/src_lib.dir/EventLoopThreadPool.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src_lib.dir/EventLoopThreadPool.cc.s"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cc/Desktop/ccspace/kama-webserver/src/EventLoopThreadPool.cc -o CMakeFiles/src_lib.dir/EventLoopThreadPool.cc.s

src/CMakeFiles/src_lib.dir/InetAddress.cc.o: src/CMakeFiles/src_lib.dir/flags.make
src/CMakeFiles/src_lib.dir/InetAddress.cc.o: ../src/InetAddress.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cc/Desktop/ccspace/kama-webserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object src/CMakeFiles/src_lib.dir/InetAddress.cc.o"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/src_lib.dir/InetAddress.cc.o -c /home/cc/Desktop/ccspace/kama-webserver/src/InetAddress.cc

src/CMakeFiles/src_lib.dir/InetAddress.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src_lib.dir/InetAddress.cc.i"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cc/Desktop/ccspace/kama-webserver/src/InetAddress.cc > CMakeFiles/src_lib.dir/InetAddress.cc.i

src/CMakeFiles/src_lib.dir/InetAddress.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src_lib.dir/InetAddress.cc.s"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cc/Desktop/ccspace/kama-webserver/src/InetAddress.cc -o CMakeFiles/src_lib.dir/InetAddress.cc.s

src/CMakeFiles/src_lib.dir/Logger.cc.o: src/CMakeFiles/src_lib.dir/flags.make
src/CMakeFiles/src_lib.dir/Logger.cc.o: ../src/Logger.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cc/Desktop/ccspace/kama-webserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object src/CMakeFiles/src_lib.dir/Logger.cc.o"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/src_lib.dir/Logger.cc.o -c /home/cc/Desktop/ccspace/kama-webserver/src/Logger.cc

src/CMakeFiles/src_lib.dir/Logger.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src_lib.dir/Logger.cc.i"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cc/Desktop/ccspace/kama-webserver/src/Logger.cc > CMakeFiles/src_lib.dir/Logger.cc.i

src/CMakeFiles/src_lib.dir/Logger.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src_lib.dir/Logger.cc.s"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cc/Desktop/ccspace/kama-webserver/src/Logger.cc -o CMakeFiles/src_lib.dir/Logger.cc.s

src/CMakeFiles/src_lib.dir/Poller.cc.o: src/CMakeFiles/src_lib.dir/flags.make
src/CMakeFiles/src_lib.dir/Poller.cc.o: ../src/Poller.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cc/Desktop/ccspace/kama-webserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object src/CMakeFiles/src_lib.dir/Poller.cc.o"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/src_lib.dir/Poller.cc.o -c /home/cc/Desktop/ccspace/kama-webserver/src/Poller.cc

src/CMakeFiles/src_lib.dir/Poller.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src_lib.dir/Poller.cc.i"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cc/Desktop/ccspace/kama-webserver/src/Poller.cc > CMakeFiles/src_lib.dir/Poller.cc.i

src/CMakeFiles/src_lib.dir/Poller.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src_lib.dir/Poller.cc.s"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cc/Desktop/ccspace/kama-webserver/src/Poller.cc -o CMakeFiles/src_lib.dir/Poller.cc.s

src/CMakeFiles/src_lib.dir/Socket.cc.o: src/CMakeFiles/src_lib.dir/flags.make
src/CMakeFiles/src_lib.dir/Socket.cc.o: ../src/Socket.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cc/Desktop/ccspace/kama-webserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object src/CMakeFiles/src_lib.dir/Socket.cc.o"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/src_lib.dir/Socket.cc.o -c /home/cc/Desktop/ccspace/kama-webserver/src/Socket.cc

src/CMakeFiles/src_lib.dir/Socket.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src_lib.dir/Socket.cc.i"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cc/Desktop/ccspace/kama-webserver/src/Socket.cc > CMakeFiles/src_lib.dir/Socket.cc.i

src/CMakeFiles/src_lib.dir/Socket.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src_lib.dir/Socket.cc.s"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cc/Desktop/ccspace/kama-webserver/src/Socket.cc -o CMakeFiles/src_lib.dir/Socket.cc.s

src/CMakeFiles/src_lib.dir/TcpConnection.cc.o: src/CMakeFiles/src_lib.dir/flags.make
src/CMakeFiles/src_lib.dir/TcpConnection.cc.o: ../src/TcpConnection.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cc/Desktop/ccspace/kama-webserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object src/CMakeFiles/src_lib.dir/TcpConnection.cc.o"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/src_lib.dir/TcpConnection.cc.o -c /home/cc/Desktop/ccspace/kama-webserver/src/TcpConnection.cc

src/CMakeFiles/src_lib.dir/TcpConnection.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src_lib.dir/TcpConnection.cc.i"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cc/Desktop/ccspace/kama-webserver/src/TcpConnection.cc > CMakeFiles/src_lib.dir/TcpConnection.cc.i

src/CMakeFiles/src_lib.dir/TcpConnection.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src_lib.dir/TcpConnection.cc.s"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cc/Desktop/ccspace/kama-webserver/src/TcpConnection.cc -o CMakeFiles/src_lib.dir/TcpConnection.cc.s

src/CMakeFiles/src_lib.dir/TcpServer.cc.o: src/CMakeFiles/src_lib.dir/flags.make
src/CMakeFiles/src_lib.dir/TcpServer.cc.o: ../src/TcpServer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cc/Desktop/ccspace/kama-webserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object src/CMakeFiles/src_lib.dir/TcpServer.cc.o"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/src_lib.dir/TcpServer.cc.o -c /home/cc/Desktop/ccspace/kama-webserver/src/TcpServer.cc

src/CMakeFiles/src_lib.dir/TcpServer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src_lib.dir/TcpServer.cc.i"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cc/Desktop/ccspace/kama-webserver/src/TcpServer.cc > CMakeFiles/src_lib.dir/TcpServer.cc.i

src/CMakeFiles/src_lib.dir/TcpServer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src_lib.dir/TcpServer.cc.s"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cc/Desktop/ccspace/kama-webserver/src/TcpServer.cc -o CMakeFiles/src_lib.dir/TcpServer.cc.s

src/CMakeFiles/src_lib.dir/Thread.cc.o: src/CMakeFiles/src_lib.dir/flags.make
src/CMakeFiles/src_lib.dir/Thread.cc.o: ../src/Thread.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cc/Desktop/ccspace/kama-webserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object src/CMakeFiles/src_lib.dir/Thread.cc.o"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/src_lib.dir/Thread.cc.o -c /home/cc/Desktop/ccspace/kama-webserver/src/Thread.cc

src/CMakeFiles/src_lib.dir/Thread.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src_lib.dir/Thread.cc.i"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cc/Desktop/ccspace/kama-webserver/src/Thread.cc > CMakeFiles/src_lib.dir/Thread.cc.i

src/CMakeFiles/src_lib.dir/Thread.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src_lib.dir/Thread.cc.s"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cc/Desktop/ccspace/kama-webserver/src/Thread.cc -o CMakeFiles/src_lib.dir/Thread.cc.s

src/CMakeFiles/src_lib.dir/Timer.cc.o: src/CMakeFiles/src_lib.dir/flags.make
src/CMakeFiles/src_lib.dir/Timer.cc.o: ../src/Timer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cc/Desktop/ccspace/kama-webserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object src/CMakeFiles/src_lib.dir/Timer.cc.o"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/src_lib.dir/Timer.cc.o -c /home/cc/Desktop/ccspace/kama-webserver/src/Timer.cc

src/CMakeFiles/src_lib.dir/Timer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src_lib.dir/Timer.cc.i"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cc/Desktop/ccspace/kama-webserver/src/Timer.cc > CMakeFiles/src_lib.dir/Timer.cc.i

src/CMakeFiles/src_lib.dir/Timer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src_lib.dir/Timer.cc.s"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cc/Desktop/ccspace/kama-webserver/src/Timer.cc -o CMakeFiles/src_lib.dir/Timer.cc.s

src/CMakeFiles/src_lib.dir/TimerQueue.cc.o: src/CMakeFiles/src_lib.dir/flags.make
src/CMakeFiles/src_lib.dir/TimerQueue.cc.o: ../src/TimerQueue.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cc/Desktop/ccspace/kama-webserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building CXX object src/CMakeFiles/src_lib.dir/TimerQueue.cc.o"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/src_lib.dir/TimerQueue.cc.o -c /home/cc/Desktop/ccspace/kama-webserver/src/TimerQueue.cc

src/CMakeFiles/src_lib.dir/TimerQueue.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src_lib.dir/TimerQueue.cc.i"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cc/Desktop/ccspace/kama-webserver/src/TimerQueue.cc > CMakeFiles/src_lib.dir/TimerQueue.cc.i

src/CMakeFiles/src_lib.dir/TimerQueue.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src_lib.dir/TimerQueue.cc.s"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cc/Desktop/ccspace/kama-webserver/src/TimerQueue.cc -o CMakeFiles/src_lib.dir/TimerQueue.cc.s

src/CMakeFiles/src_lib.dir/Timestamp.cc.o: src/CMakeFiles/src_lib.dir/flags.make
src/CMakeFiles/src_lib.dir/Timestamp.cc.o: ../src/Timestamp.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cc/Desktop/ccspace/kama-webserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building CXX object src/CMakeFiles/src_lib.dir/Timestamp.cc.o"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/src_lib.dir/Timestamp.cc.o -c /home/cc/Desktop/ccspace/kama-webserver/src/Timestamp.cc

src/CMakeFiles/src_lib.dir/Timestamp.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src_lib.dir/Timestamp.cc.i"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cc/Desktop/ccspace/kama-webserver/src/Timestamp.cc > CMakeFiles/src_lib.dir/Timestamp.cc.i

src/CMakeFiles/src_lib.dir/Timestamp.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src_lib.dir/Timestamp.cc.s"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cc/Desktop/ccspace/kama-webserver/src/Timestamp.cc -o CMakeFiles/src_lib.dir/Timestamp.cc.s

# Object files for target src_lib
src_lib_OBJECTS = \
"CMakeFiles/src_lib.dir/Acceptor.cc.o" \
"CMakeFiles/src_lib.dir/Buffer.cc.o" \
"CMakeFiles/src_lib.dir/Channel.cc.o" \
"CMakeFiles/src_lib.dir/CurrentThread.cc.o" \
"CMakeFiles/src_lib.dir/DefaultPoller.cc.o" \
"CMakeFiles/src_lib.dir/EPollPoller.cc.o" \
"CMakeFiles/src_lib.dir/EventLoop.cc.o" \
"CMakeFiles/src_lib.dir/EventLoopThread.cc.o" \
"CMakeFiles/src_lib.dir/EventLoopThreadPool.cc.o" \
"CMakeFiles/src_lib.dir/InetAddress.cc.o" \
"CMakeFiles/src_lib.dir/Logger.cc.o" \
"CMakeFiles/src_lib.dir/Poller.cc.o" \
"CMakeFiles/src_lib.dir/Socket.cc.o" \
"CMakeFiles/src_lib.dir/TcpConnection.cc.o" \
"CMakeFiles/src_lib.dir/TcpServer.cc.o" \
"CMakeFiles/src_lib.dir/Thread.cc.o" \
"CMakeFiles/src_lib.dir/Timer.cc.o" \
"CMakeFiles/src_lib.dir/TimerQueue.cc.o" \
"CMakeFiles/src_lib.dir/Timestamp.cc.o"

# External object files for target src_lib
src_lib_EXTERNAL_OBJECTS =

../lib/libsrc_lib.so: src/CMakeFiles/src_lib.dir/Acceptor.cc.o
../lib/libsrc_lib.so: src/CMakeFiles/src_lib.dir/Buffer.cc.o
../lib/libsrc_lib.so: src/CMakeFiles/src_lib.dir/Channel.cc.o
../lib/libsrc_lib.so: src/CMakeFiles/src_lib.dir/CurrentThread.cc.o
../lib/libsrc_lib.so: src/CMakeFiles/src_lib.dir/DefaultPoller.cc.o
../lib/libsrc_lib.so: src/CMakeFiles/src_lib.dir/EPollPoller.cc.o
../lib/libsrc_lib.so: src/CMakeFiles/src_lib.dir/EventLoop.cc.o
../lib/libsrc_lib.so: src/CMakeFiles/src_lib.dir/EventLoopThread.cc.o
../lib/libsrc_lib.so: src/CMakeFiles/src_lib.dir/EventLoopThreadPool.cc.o
../lib/libsrc_lib.so: src/CMakeFiles/src_lib.dir/InetAddress.cc.o
../lib/libsrc_lib.so: src/CMakeFiles/src_lib.dir/Logger.cc.o
../lib/libsrc_lib.so: src/CMakeFiles/src_lib.dir/Poller.cc.o
../lib/libsrc_lib.so: src/CMakeFiles/src_lib.dir/Socket.cc.o
../lib/libsrc_lib.so: src/CMakeFiles/src_lib.dir/TcpConnection.cc.o
../lib/libsrc_lib.so: src/CMakeFiles/src_lib.dir/TcpServer.cc.o
../lib/libsrc_lib.so: src/CMakeFiles/src_lib.dir/Thread.cc.o
../lib/libsrc_lib.so: src/CMakeFiles/src_lib.dir/Timer.cc.o
../lib/libsrc_lib.so: src/CMakeFiles/src_lib.dir/TimerQueue.cc.o
../lib/libsrc_lib.so: src/CMakeFiles/src_lib.dir/Timestamp.cc.o
../lib/libsrc_lib.so: src/CMakeFiles/src_lib.dir/build.make
../lib/libsrc_lib.so: src/CMakeFiles/src_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/cc/Desktop/ccspace/kama-webserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Linking CXX shared library ../../lib/libsrc_lib.so"
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/src_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/src_lib.dir/build: ../lib/libsrc_lib.so

.PHONY : src/CMakeFiles/src_lib.dir/build

src/CMakeFiles/src_lib.dir/clean:
	cd /home/cc/Desktop/ccspace/kama-webserver/build/src && $(CMAKE_COMMAND) -P CMakeFiles/src_lib.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/src_lib.dir/clean

src/CMakeFiles/src_lib.dir/depend:
	cd /home/cc/Desktop/ccspace/kama-webserver/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cc/Desktop/ccspace/kama-webserver /home/cc/Desktop/ccspace/kama-webserver/src /home/cc/Desktop/ccspace/kama-webserver/build /home/cc/Desktop/ccspace/kama-webserver/build/src /home/cc/Desktop/ccspace/kama-webserver/build/src/CMakeFiles/src_lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/src_lib.dir/depend

