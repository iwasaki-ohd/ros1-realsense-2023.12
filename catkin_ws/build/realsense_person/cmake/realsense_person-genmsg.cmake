# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "realsense_person: 9 messages, 8 services")

set(MSG_I_FLAGS "-Irealsense_person:/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(realsense_person_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/BoundingBox.msg" NAME_WE)
add_custom_target(_realsense_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_person" "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/BoundingBox.msg" ""
)

get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg" NAME_WE)
add_custom_target(_realsense_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_person" "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonId.msg" NAME_WE)
add_custom_target(_realsense_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_person" "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonId.msg" ""
)

get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/Person.msg" NAME_WE)
add_custom_target(_realsense_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_person" "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/Person.msg" "realsense_person/PersonId:geometry_msgs/Point:realsense_person/BoundingBox:realsense_person/RegisteredPoint"
)

get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonDetection.msg" NAME_WE)
add_custom_target(_realsense_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_person" "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonDetection.msg" "realsense_person/Person:realsense_person/PersonId:realsense_person/BoundingBox:std_msgs/Header:geometry_msgs/Point:realsense_person/RegisteredPoint"
)

get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonFace.msg" NAME_WE)
add_custom_target(_realsense_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_person" "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonFace.msg" "geometry_msgs/Point:realsense_person/BoundingBox:realsense_person/RegisteredPoint"
)

get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonSkeleton.msg" NAME_WE)
add_custom_target(_realsense_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_person" "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonSkeleton.msg" "geometry_msgs/Point:realsense_person/RegisteredPoint"
)

get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonBody.msg" NAME_WE)
add_custom_target(_realsense_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_person" "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonBody.msg" "realsense_person/PersonSkeleton:geometry_msgs/Point:realsense_person/RegisteredPoint"
)

get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonTracking.msg" NAME_WE)
add_custom_target(_realsense_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_person" "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonTracking.msg" "realsense_person/PersonBody:realsense_person/PersonSkeleton:realsense_person/PersonFace:realsense_person/Person:realsense_person/PersonId:realsense_person/BoundingBox:std_msgs/Header:geometry_msgs/Point:realsense_person/RegisteredPoint"
)

get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/GetTrackingId.srv" NAME_WE)
add_custom_target(_realsense_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_person" "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/GetTrackingId.srv" ""
)

get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Register.srv" NAME_WE)
add_custom_target(_realsense_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_person" "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Register.srv" ""
)

get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Recognize.srv" NAME_WE)
add_custom_target(_realsense_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_person" "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Recognize.srv" ""
)

get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Reinforce.srv" NAME_WE)
add_custom_target(_realsense_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_person" "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Reinforce.srv" ""
)

get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/StartTracking.srv" NAME_WE)
add_custom_target(_realsense_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_person" "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/StartTracking.srv" ""
)

get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/StopTracking.srv" NAME_WE)
add_custom_target(_realsense_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_person" "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/StopTracking.srv" ""
)

get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Serialize.srv" NAME_WE)
add_custom_target(_realsense_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_person" "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Serialize.srv" ""
)

get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Deserialize.srv" NAME_WE)
add_custom_target(_realsense_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_person" "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Deserialize.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_person
)
_generate_msg_cpp(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_person
)
_generate_msg_cpp(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonId.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_person
)
_generate_msg_cpp(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/Person.msg"
  "${MSG_I_FLAGS}"
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonId.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/BoundingBox.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_person
)
_generate_msg_cpp(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonDetection.msg"
  "${MSG_I_FLAGS}"
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/Person.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonId.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/BoundingBox.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_person
)
_generate_msg_cpp(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonFace.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/BoundingBox.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_person
)
_generate_msg_cpp(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonSkeleton.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_person
)
_generate_msg_cpp(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonBody.msg"
  "${MSG_I_FLAGS}"
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonSkeleton.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_person
)
_generate_msg_cpp(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonTracking.msg"
  "${MSG_I_FLAGS}"
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonBody.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonSkeleton.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonFace.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/Person.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonId.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/BoundingBox.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_person
)

### Generating Services
_generate_srv_cpp(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/GetTrackingId.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_person
)
_generate_srv_cpp(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Register.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_person
)
_generate_srv_cpp(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Recognize.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_person
)
_generate_srv_cpp(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Reinforce.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_person
)
_generate_srv_cpp(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/StartTracking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_person
)
_generate_srv_cpp(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/StopTracking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_person
)
_generate_srv_cpp(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Serialize.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_person
)
_generate_srv_cpp(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Deserialize.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_person
)

### Generating Module File
_generate_module_cpp(realsense_person
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_person
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(realsense_person_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(realsense_person_generate_messages realsense_person_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/BoundingBox.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_cpp _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_cpp _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonId.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_cpp _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/Person.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_cpp _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonDetection.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_cpp _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonFace.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_cpp _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonSkeleton.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_cpp _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonBody.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_cpp _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonTracking.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_cpp _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/GetTrackingId.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_cpp _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Register.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_cpp _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Recognize.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_cpp _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Reinforce.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_cpp _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/StartTracking.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_cpp _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/StopTracking.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_cpp _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Serialize.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_cpp _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Deserialize.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_cpp _realsense_person_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(realsense_person_gencpp)
add_dependencies(realsense_person_gencpp realsense_person_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS realsense_person_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_person
)
_generate_msg_eus(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_person
)
_generate_msg_eus(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonId.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_person
)
_generate_msg_eus(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/Person.msg"
  "${MSG_I_FLAGS}"
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonId.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/BoundingBox.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_person
)
_generate_msg_eus(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonDetection.msg"
  "${MSG_I_FLAGS}"
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/Person.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonId.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/BoundingBox.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_person
)
_generate_msg_eus(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonFace.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/BoundingBox.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_person
)
_generate_msg_eus(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonSkeleton.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_person
)
_generate_msg_eus(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonBody.msg"
  "${MSG_I_FLAGS}"
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonSkeleton.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_person
)
_generate_msg_eus(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonTracking.msg"
  "${MSG_I_FLAGS}"
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonBody.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonSkeleton.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonFace.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/Person.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonId.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/BoundingBox.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_person
)

### Generating Services
_generate_srv_eus(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/GetTrackingId.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_person
)
_generate_srv_eus(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Register.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_person
)
_generate_srv_eus(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Recognize.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_person
)
_generate_srv_eus(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Reinforce.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_person
)
_generate_srv_eus(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/StartTracking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_person
)
_generate_srv_eus(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/StopTracking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_person
)
_generate_srv_eus(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Serialize.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_person
)
_generate_srv_eus(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Deserialize.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_person
)

### Generating Module File
_generate_module_eus(realsense_person
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_person
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(realsense_person_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(realsense_person_generate_messages realsense_person_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/BoundingBox.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_eus _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_eus _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonId.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_eus _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/Person.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_eus _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonDetection.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_eus _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonFace.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_eus _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonSkeleton.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_eus _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonBody.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_eus _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonTracking.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_eus _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/GetTrackingId.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_eus _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Register.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_eus _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Recognize.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_eus _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Reinforce.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_eus _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/StartTracking.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_eus _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/StopTracking.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_eus _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Serialize.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_eus _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Deserialize.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_eus _realsense_person_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(realsense_person_geneus)
add_dependencies(realsense_person_geneus realsense_person_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS realsense_person_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_person
)
_generate_msg_lisp(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_person
)
_generate_msg_lisp(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonId.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_person
)
_generate_msg_lisp(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/Person.msg"
  "${MSG_I_FLAGS}"
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonId.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/BoundingBox.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_person
)
_generate_msg_lisp(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonDetection.msg"
  "${MSG_I_FLAGS}"
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/Person.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonId.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/BoundingBox.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_person
)
_generate_msg_lisp(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonFace.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/BoundingBox.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_person
)
_generate_msg_lisp(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonSkeleton.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_person
)
_generate_msg_lisp(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonBody.msg"
  "${MSG_I_FLAGS}"
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonSkeleton.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_person
)
_generate_msg_lisp(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonTracking.msg"
  "${MSG_I_FLAGS}"
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonBody.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonSkeleton.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonFace.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/Person.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonId.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/BoundingBox.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_person
)

### Generating Services
_generate_srv_lisp(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/GetTrackingId.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_person
)
_generate_srv_lisp(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Register.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_person
)
_generate_srv_lisp(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Recognize.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_person
)
_generate_srv_lisp(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Reinforce.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_person
)
_generate_srv_lisp(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/StartTracking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_person
)
_generate_srv_lisp(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/StopTracking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_person
)
_generate_srv_lisp(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Serialize.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_person
)
_generate_srv_lisp(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Deserialize.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_person
)

### Generating Module File
_generate_module_lisp(realsense_person
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_person
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(realsense_person_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(realsense_person_generate_messages realsense_person_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/BoundingBox.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_lisp _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_lisp _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonId.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_lisp _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/Person.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_lisp _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonDetection.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_lisp _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonFace.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_lisp _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonSkeleton.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_lisp _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonBody.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_lisp _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonTracking.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_lisp _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/GetTrackingId.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_lisp _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Register.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_lisp _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Recognize.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_lisp _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Reinforce.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_lisp _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/StartTracking.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_lisp _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/StopTracking.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_lisp _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Serialize.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_lisp _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Deserialize.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_lisp _realsense_person_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(realsense_person_genlisp)
add_dependencies(realsense_person_genlisp realsense_person_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS realsense_person_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_person
)
_generate_msg_nodejs(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_person
)
_generate_msg_nodejs(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonId.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_person
)
_generate_msg_nodejs(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/Person.msg"
  "${MSG_I_FLAGS}"
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonId.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/BoundingBox.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_person
)
_generate_msg_nodejs(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonDetection.msg"
  "${MSG_I_FLAGS}"
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/Person.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonId.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/BoundingBox.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_person
)
_generate_msg_nodejs(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonFace.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/BoundingBox.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_person
)
_generate_msg_nodejs(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonSkeleton.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_person
)
_generate_msg_nodejs(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonBody.msg"
  "${MSG_I_FLAGS}"
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonSkeleton.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_person
)
_generate_msg_nodejs(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonTracking.msg"
  "${MSG_I_FLAGS}"
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonBody.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonSkeleton.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonFace.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/Person.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonId.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/BoundingBox.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_person
)

### Generating Services
_generate_srv_nodejs(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/GetTrackingId.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_person
)
_generate_srv_nodejs(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Register.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_person
)
_generate_srv_nodejs(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Recognize.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_person
)
_generate_srv_nodejs(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Reinforce.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_person
)
_generate_srv_nodejs(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/StartTracking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_person
)
_generate_srv_nodejs(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/StopTracking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_person
)
_generate_srv_nodejs(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Serialize.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_person
)
_generate_srv_nodejs(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Deserialize.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_person
)

### Generating Module File
_generate_module_nodejs(realsense_person
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_person
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(realsense_person_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(realsense_person_generate_messages realsense_person_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/BoundingBox.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_nodejs _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_nodejs _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonId.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_nodejs _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/Person.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_nodejs _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonDetection.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_nodejs _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonFace.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_nodejs _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonSkeleton.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_nodejs _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonBody.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_nodejs _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonTracking.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_nodejs _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/GetTrackingId.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_nodejs _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Register.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_nodejs _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Recognize.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_nodejs _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Reinforce.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_nodejs _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/StartTracking.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_nodejs _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/StopTracking.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_nodejs _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Serialize.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_nodejs _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Deserialize.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_nodejs _realsense_person_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(realsense_person_gennodejs)
add_dependencies(realsense_person_gennodejs realsense_person_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS realsense_person_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_person
)
_generate_msg_py(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_person
)
_generate_msg_py(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonId.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_person
)
_generate_msg_py(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/Person.msg"
  "${MSG_I_FLAGS}"
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonId.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/BoundingBox.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_person
)
_generate_msg_py(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonDetection.msg"
  "${MSG_I_FLAGS}"
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/Person.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonId.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/BoundingBox.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_person
)
_generate_msg_py(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonFace.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/BoundingBox.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_person
)
_generate_msg_py(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonSkeleton.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_person
)
_generate_msg_py(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonBody.msg"
  "${MSG_I_FLAGS}"
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonSkeleton.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_person
)
_generate_msg_py(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonTracking.msg"
  "${MSG_I_FLAGS}"
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonBody.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonSkeleton.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonFace.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/Person.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonId.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/BoundingBox.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_person
)

### Generating Services
_generate_srv_py(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/GetTrackingId.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_person
)
_generate_srv_py(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Register.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_person
)
_generate_srv_py(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Recognize.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_person
)
_generate_srv_py(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Reinforce.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_person
)
_generate_srv_py(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/StartTracking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_person
)
_generate_srv_py(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/StopTracking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_person
)
_generate_srv_py(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Serialize.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_person
)
_generate_srv_py(realsense_person
  "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Deserialize.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_person
)

### Generating Module File
_generate_module_py(realsense_person
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_person
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(realsense_person_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(realsense_person_generate_messages realsense_person_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/BoundingBox.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_py _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/RegisteredPoint.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_py _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonId.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_py _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/Person.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_py _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonDetection.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_py _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonFace.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_py _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonSkeleton.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_py _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonBody.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_py _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/msg/PersonTracking.msg" NAME_WE)
add_dependencies(realsense_person_generate_messages_py _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/GetTrackingId.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_py _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Register.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_py _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Recognize.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_py _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Reinforce.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_py _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/StartTracking.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_py _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/StopTracking.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_py _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Serialize.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_py _realsense_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moriokalab-pc16/catkin_ws/src/realsense_person/srv/Deserialize.srv" NAME_WE)
add_dependencies(realsense_person_generate_messages_py _realsense_person_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(realsense_person_genpy)
add_dependencies(realsense_person_genpy realsense_person_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS realsense_person_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_person)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_person
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(realsense_person_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(realsense_person_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(realsense_person_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_person)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_person
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(realsense_person_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(realsense_person_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(realsense_person_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_person)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_person
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(realsense_person_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(realsense_person_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(realsense_person_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_person)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_person
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(realsense_person_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(realsense_person_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(realsense_person_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_person)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_person\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_person
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(realsense_person_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(realsense_person_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(realsense_person_generate_messages_py geometry_msgs_generate_messages_py)
endif()
