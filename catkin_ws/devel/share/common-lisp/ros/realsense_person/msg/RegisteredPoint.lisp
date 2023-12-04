; Auto-generated. Do not edit!


(cl:in-package realsense_person-msg)


;//! \htmlinclude RegisteredPoint.msg.html

(cl:defclass <RegisteredPoint> (roslisp-msg-protocol:ros-message)
  ((world
    :reader world
    :initarg :world
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (world_confidence
    :reader world_confidence
    :initarg :world_confidence
    :type cl:integer
    :initform 0)
   (image
    :reader image
    :initarg :image
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (image_confidence
    :reader image_confidence
    :initarg :image_confidence
    :type cl:integer
    :initform 0))
)

(cl:defclass RegisteredPoint (<RegisteredPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RegisteredPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RegisteredPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_person-msg:<RegisteredPoint> is deprecated: use realsense_person-msg:RegisteredPoint instead.")))

(cl:ensure-generic-function 'world-val :lambda-list '(m))
(cl:defmethod world-val ((m <RegisteredPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-msg:world-val is deprecated.  Use realsense_person-msg:world instead.")
  (world m))

(cl:ensure-generic-function 'world_confidence-val :lambda-list '(m))
(cl:defmethod world_confidence-val ((m <RegisteredPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-msg:world_confidence-val is deprecated.  Use realsense_person-msg:world_confidence instead.")
  (world_confidence m))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <RegisteredPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-msg:image-val is deprecated.  Use realsense_person-msg:image instead.")
  (image m))

(cl:ensure-generic-function 'image_confidence-val :lambda-list '(m))
(cl:defmethod image_confidence-val ((m <RegisteredPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-msg:image_confidence-val is deprecated.  Use realsense_person-msg:image_confidence instead.")
  (image_confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RegisteredPoint>) ostream)
  "Serializes a message object of type '<RegisteredPoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'world) ostream)
  (cl:let* ((signed (cl:slot-value msg 'world_confidence)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
  (cl:let* ((signed (cl:slot-value msg 'image_confidence)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RegisteredPoint>) istream)
  "Deserializes a message object of type '<RegisteredPoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'world) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'world_confidence) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'image_confidence) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RegisteredPoint>)))
  "Returns string type for a message object of type '<RegisteredPoint>"
  "realsense_person/RegisteredPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegisteredPoint)))
  "Returns string type for a message object of type 'RegisteredPoint"
  "realsense_person/RegisteredPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RegisteredPoint>)))
  "Returns md5sum for a message object of type '<RegisteredPoint>"
  "377e1b201e51fdf9a771993c3be57884")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RegisteredPoint)))
  "Returns md5sum for a message object of type 'RegisteredPoint"
  "377e1b201e51fdf9a771993c3be57884")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RegisteredPoint>)))
  "Returns full string definition for message of type '<RegisteredPoint>"
  (cl:format cl:nil "geometry_msgs/Point world~%int32 world_confidence~%geometry_msgs/Point image~%int32 image_confidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RegisteredPoint)))
  "Returns full string definition for message of type 'RegisteredPoint"
  (cl:format cl:nil "geometry_msgs/Point world~%int32 world_confidence~%geometry_msgs/Point image~%int32 image_confidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RegisteredPoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'world))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RegisteredPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'RegisteredPoint
    (cl:cons ':world (world msg))
    (cl:cons ':world_confidence (world_confidence msg))
    (cl:cons ':image (image msg))
    (cl:cons ':image_confidence (image_confidence msg))
))
