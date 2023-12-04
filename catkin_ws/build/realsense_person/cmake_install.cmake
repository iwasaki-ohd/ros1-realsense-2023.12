# Install script for directory: /home/moriokalab-pc16/catkin_ws/src/realsense_person

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/moriokalab-pc16/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/realsense_person" TYPE FILE FILES "/home/moriokalab-pc16/catkin_ws/devel/include/realsense_person/person_paramsConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/realsense_person" TYPE FILE FILES "/home/moriokalab-pc16/catkin_ws/devel/lib/python3/dist-packages/realsense_person/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/moriokalab-pc16/catkin_ws/devel/lib/python3/dist-packages/realsense_person/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/realsense_person" TYPE DIRECTORY FILES "/home/moriokalab-pc16/catkin_ws/devel/lib/python3/dist-packages/realsense_person/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/realsense_person/msg" TYPE FILE FILES
    "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/BoundingBox.msg"
    "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
    "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonId.msg"
    "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/Person.msg"
    "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonDetection.msg"
    "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonFace.msg"
    "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonSkeleton.msg"
    "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonBody.msg"
    "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonTracking.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/realsense_person/srv" TYPE FILE FILES
    "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/GetTrackingId.srv"
    "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Register.srv"
    "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Recognize.srv"
    "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Reinforce.srv"
    "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/StartTracking.srv"
    "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/StopTracking.srv"
    "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Serialize.srv"
    "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Deserialize.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/realsense_person/cmake" TYPE FILE FILES "/home/moriokalab-pc16/catkin_ws/build/realsense_person/catkin_generated/installspace/realsense_person-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/moriokalab-pc16/catkin_ws/devel/include/realsense_person")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/moriokalab-pc16/catkin_ws/devel/share/roseus/ros/realsense_person")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/moriokalab-pc16/catkin_ws/devel/share/common-lisp/ros/realsense_person")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/moriokalab-pc16/catkin_ws/devel/share/gennodejs/ros/realsense_person")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/moriokalab-pc16/catkin_ws/devel/lib/python3/dist-packages/realsense_person")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/moriokalab-pc16/catkin_ws/devel/lib/python3/dist-packages/realsense_person")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/moriokalab-pc16/catkin_ws/build/realsense_person/catkin_generated/installspace/realsense_person.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/realsense_person/cmake" TYPE FILE FILES "/home/moriokalab-pc16/catkin_ws/build/realsense_person/catkin_generated/installspace/realsense_person-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/realsense_person/cmake" TYPE FILE FILES
    "/home/moriokalab-pc16/catkin_ws/build/realsense_person/catkin_generated/installspace/realsense_personConfig.cmake"
    "/home/moriokalab-pc16/catkin_ws/build/realsense_person/catkin_generated/installspace/realsense_personConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/realsense_person" TYPE FILE FILES "/home/moriokalab-pc16/catkin_ws/src/realsense_person/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librealsense_person_nodelet.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librealsense_person_nodelet.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librealsense_person_nodelet.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/moriokalab-pc16/catkin_ws/devel/lib/librealsense_person_nodelet.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librealsense_person_nodelet.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librealsense_person_nodelet.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librealsense_person_nodelet.so"
         OLD_RPATH "/opt/ros/noetic/lib:/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librealsense_person_nodelet.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/realsense_person" TYPE DIRECTORY FILES "/home/moriokalab-pc16/catkin_ws/src/realsense_person/include/realsense_person/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/realsense_person/launch" TYPE DIRECTORY FILES "/home/moriokalab-pc16/catkin_ws/src/realsense_person/launch/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/realsense_person" TYPE FILE FILES "/home/moriokalab-pc16/catkin_ws/src/realsense_person/nodelet_plugins.xml")
endif()

