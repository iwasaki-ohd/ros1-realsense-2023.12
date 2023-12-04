; Auto-generated. Do not edit!


(cl:in-package realsense_person-msg)


;//! \htmlinclude PersonBody.msg.html

(cl:defclass <PersonBody> (roslisp-msg-protocol:ros-message)
  ((skeleton
    :reader skeleton
    :initarg :skeleton
    :type (cl:vector realsense_person-msg:PersonSkeleton)
   :initform (cl:make-array 0 :element-type 'realsense_person-msg:PersonSkeleton :initial-element (cl:make-instance 'realsense_person-msg:PersonSkeleton)))
   (gesture_origin
    :reader gesture_origin
    :initarg :gesture_origin
    :type realsense_person-msg:RegisteredPoint
    :initform (cl:make-instance 'realsense_person-msg:RegisteredPoint))
   (gesture_direction
    :reader gesture_direction
    :initarg :gesture_direction
    :type realsense_person-msg:RegisteredPoint
    :initform (cl:make-instance 'realsense_person-msg:RegisteredPoint))
   (gesture_confidence
    :reader gesture_confidence
    :initarg :gesture_confidence
    :type cl:integer
    :initform 0))
)

(cl:defclass PersonBody (<PersonBody>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PersonBody>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PersonBody)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_person-msg:<PersonBody> is deprecated: use realsense_person-msg:PersonBody instead.")))

(cl:ensure-generic-function 'skeleton-val :lambda-list '(m))
(cl:defmethod skeleton-val ((m <PersonBody>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-msg:skeleton-val is deprecated.  Use realsense_person-msg:skeleton instead.")
  (skeleton m))

(cl:ensure-generic-function 'gesture_origin-val :lambda-list '(m))
(cl:defmethod gesture_origin-val ((m <PersonBody>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-msg:gesture_origin-val is deprecated.  Use realsense_person-msg:gesture_origin instead.")
  (gesture_origin m))

(cl:ensure-generic-function 'gesture_direction-val :lambda-list '(m))
(cl:defmethod gesture_direction-val ((m <PersonBody>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-msg:gesture_direction-val is deprecated.  Use realsense_person-msg:gesture_direction instead.")
  (gesture_direction m))

(cl:ensure-generic-function 'gesture_confidence-val :lambda-list '(m))
(cl:defmethod gesture_confidence-val ((m <PersonBody>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-msg:gesture_confidence-val is deprecated.  Use realsense_person-msg:gesture_confidence instead.")
  (gesture_confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PersonBody>) ostream)
  "Serializes a message object of type '<PersonBody>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'skeleton))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'skeleton))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gesture_origin) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gesture_direction) ostream)
  (cl:let* ((signed (cl:slot-value msg 'gesture_confidence)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PersonBody>) istream)
  "Deserializes a message object of type '<PersonBody>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'skeleton) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'skeleton)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'realsense_person-msg:PersonSkeleton))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gesture_origin) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gesture_direction) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gesture_confidence) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PersonBody>)))
  "Returns string type for a message object of type '<PersonBody>"
  "realsense_person/PersonBody")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PersonBody)))
  "Returns string type for a message object of type 'PersonBody"
  "realsense_person/PersonBody")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PersonBody>)))
  "Returns md5sum for a message object of type '<PersonBody>"
  "a9bfd5f8f67d8fbcfe06054caaec91ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PersonBody)))
  "Returns md5sum for a message object of type 'PersonBody"
  "a9bfd5f8f67d8fbcfe06054caaec91ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PersonBody>)))
  "Returns full string definition for message of type '<PersonBody>"
  (cl:format cl:nil "realsense_person/PersonSkeleton[] skeleton~%realsense_person/RegisteredPoint gesture_origin~%realsense_person/RegisteredPoint gesture_direction~%int32 gesture_confidence~%~%~%================================================================================~%MSG: realsense_person/PersonSkeleton~%string joint_type~%realsense_person/RegisteredPoint skeleton_point~%~%~%================================================================================~%MSG: realsense_person/RegisteredPoint~%geometry_msgs/Point world~%int32 world_confidence~%geometry_msgs/Point image~%int32 image_confidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PersonBody)))
  "Returns full string definition for message of type 'PersonBody"
  (cl:format cl:nil "realsense_person/PersonSkeleton[] skeleton~%realsense_person/RegisteredPoint gesture_origin~%realsense_person/RegisteredPoint gesture_direction~%int32 gesture_confidence~%~%~%================================================================================~%MSG: realsense_person/PersonSkeleton~%string joint_type~%realsense_person/RegisteredPoint skeleton_point~%~%~%================================================================================~%MSG: realsense_person/RegisteredPoint~%geometry_msgs/Point world~%int32 world_confidence~%geometry_msgs/Point image~%int32 image_confidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PersonBody>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'skeleton) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gesture_origin))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gesture_direction))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PersonBody>))
  "Converts a ROS message object to a list"
  (cl:list 'PersonBody
    (cl:cons ':skeleton (skeleton msg))
    (cl:cons ':gesture_origin (gesture_origin msg))
    (cl:cons ':gesture_direction (gesture_direction msg))
    (cl:cons ':gesture_confidence (gesture_confidence msg))
))
