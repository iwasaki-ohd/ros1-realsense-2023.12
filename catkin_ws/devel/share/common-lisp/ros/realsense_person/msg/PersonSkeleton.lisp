; Auto-generated. Do not edit!


(cl:in-package realsense_person-msg)


;//! \htmlinclude PersonSkeleton.msg.html

(cl:defclass <PersonSkeleton> (roslisp-msg-protocol:ros-message)
  ((joint_type
    :reader joint_type
    :initarg :joint_type
    :type cl:string
    :initform "")
   (skeleton_point
    :reader skeleton_point
    :initarg :skeleton_point
    :type realsense_person-msg:RegisteredPoint
    :initform (cl:make-instance 'realsense_person-msg:RegisteredPoint)))
)

(cl:defclass PersonSkeleton (<PersonSkeleton>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PersonSkeleton>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PersonSkeleton)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_person-msg:<PersonSkeleton> is deprecated: use realsense_person-msg:PersonSkeleton instead.")))

(cl:ensure-generic-function 'joint_type-val :lambda-list '(m))
(cl:defmethod joint_type-val ((m <PersonSkeleton>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-msg:joint_type-val is deprecated.  Use realsense_person-msg:joint_type instead.")
  (joint_type m))

(cl:ensure-generic-function 'skeleton_point-val :lambda-list '(m))
(cl:defmethod skeleton_point-val ((m <PersonSkeleton>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-msg:skeleton_point-val is deprecated.  Use realsense_person-msg:skeleton_point instead.")
  (skeleton_point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PersonSkeleton>) ostream)
  "Serializes a message object of type '<PersonSkeleton>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'joint_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'joint_type))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'skeleton_point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PersonSkeleton>) istream)
  "Deserializes a message object of type '<PersonSkeleton>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'joint_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'joint_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'skeleton_point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PersonSkeleton>)))
  "Returns string type for a message object of type '<PersonSkeleton>"
  "realsense_person/PersonSkeleton")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PersonSkeleton)))
  "Returns string type for a message object of type 'PersonSkeleton"
  "realsense_person/PersonSkeleton")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PersonSkeleton>)))
  "Returns md5sum for a message object of type '<PersonSkeleton>"
  "830cfdb700931a76a5884c7211cc3672")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PersonSkeleton)))
  "Returns md5sum for a message object of type 'PersonSkeleton"
  "830cfdb700931a76a5884c7211cc3672")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PersonSkeleton>)))
  "Returns full string definition for message of type '<PersonSkeleton>"
  (cl:format cl:nil "string joint_type~%realsense_person/RegisteredPoint skeleton_point~%~%~%================================================================================~%MSG: realsense_person/RegisteredPoint~%geometry_msgs/Point world~%int32 world_confidence~%geometry_msgs/Point image~%int32 image_confidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PersonSkeleton)))
  "Returns full string definition for message of type 'PersonSkeleton"
  (cl:format cl:nil "string joint_type~%realsense_person/RegisteredPoint skeleton_point~%~%~%================================================================================~%MSG: realsense_person/RegisteredPoint~%geometry_msgs/Point world~%int32 world_confidence~%geometry_msgs/Point image~%int32 image_confidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PersonSkeleton>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'joint_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'skeleton_point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PersonSkeleton>))
  "Converts a ROS message object to a list"
  (cl:list 'PersonSkeleton
    (cl:cons ':joint_type (joint_type msg))
    (cl:cons ':skeleton_point (skeleton_point msg))
))
