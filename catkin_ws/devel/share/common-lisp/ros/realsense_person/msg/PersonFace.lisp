; Auto-generated. Do not edit!


(cl:in-package realsense_person-msg)


;//! \htmlinclude PersonFace.msg.html

(cl:defclass <PersonFace> (roslisp-msg-protocol:ros-message)
  ((orientation
    :reader orientation
    :initarg :orientation
    :type cl:string
    :initform "")
   (orientation_confidence
    :reader orientation_confidence
    :initarg :orientation_confidence
    :type cl:integer
    :initform 0)
   (head_bounding_box
    :reader head_bounding_box
    :initarg :head_bounding_box
    :type realsense_person-msg:BoundingBox
    :initform (cl:make-instance 'realsense_person-msg:BoundingBox))
   (head_pose
    :reader head_pose
    :initarg :head_pose
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (landmarks
    :reader landmarks
    :initarg :landmarks
    :type (cl:vector realsense_person-msg:RegisteredPoint)
   :initform (cl:make-array 0 :element-type 'realsense_person-msg:RegisteredPoint :initial-element (cl:make-instance 'realsense_person-msg:RegisteredPoint)))
   (landmarks_confidence
    :reader landmarks_confidence
    :initarg :landmarks_confidence
    :type cl:integer
    :initform 0))
)

(cl:defclass PersonFace (<PersonFace>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PersonFace>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PersonFace)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_person-msg:<PersonFace> is deprecated: use realsense_person-msg:PersonFace instead.")))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <PersonFace>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-msg:orientation-val is deprecated.  Use realsense_person-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'orientation_confidence-val :lambda-list '(m))
(cl:defmethod orientation_confidence-val ((m <PersonFace>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-msg:orientation_confidence-val is deprecated.  Use realsense_person-msg:orientation_confidence instead.")
  (orientation_confidence m))

(cl:ensure-generic-function 'head_bounding_box-val :lambda-list '(m))
(cl:defmethod head_bounding_box-val ((m <PersonFace>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-msg:head_bounding_box-val is deprecated.  Use realsense_person-msg:head_bounding_box instead.")
  (head_bounding_box m))

(cl:ensure-generic-function 'head_pose-val :lambda-list '(m))
(cl:defmethod head_pose-val ((m <PersonFace>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-msg:head_pose-val is deprecated.  Use realsense_person-msg:head_pose instead.")
  (head_pose m))

(cl:ensure-generic-function 'landmarks-val :lambda-list '(m))
(cl:defmethod landmarks-val ((m <PersonFace>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-msg:landmarks-val is deprecated.  Use realsense_person-msg:landmarks instead.")
  (landmarks m))

(cl:ensure-generic-function 'landmarks_confidence-val :lambda-list '(m))
(cl:defmethod landmarks_confidence-val ((m <PersonFace>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-msg:landmarks_confidence-val is deprecated.  Use realsense_person-msg:landmarks_confidence instead.")
  (landmarks_confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PersonFace>) ostream)
  "Serializes a message object of type '<PersonFace>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'orientation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'orientation))
  (cl:let* ((signed (cl:slot-value msg 'orientation_confidence)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'head_bounding_box) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'head_pose) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'landmarks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'landmarks))
  (cl:let* ((signed (cl:slot-value msg 'landmarks_confidence)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PersonFace>) istream)
  "Deserializes a message object of type '<PersonFace>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'orientation) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'orientation) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'orientation_confidence) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'head_bounding_box) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'head_pose) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'landmarks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'landmarks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'realsense_person-msg:RegisteredPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'landmarks_confidence) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PersonFace>)))
  "Returns string type for a message object of type '<PersonFace>"
  "realsense_person/PersonFace")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PersonFace)))
  "Returns string type for a message object of type 'PersonFace"
  "realsense_person/PersonFace")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PersonFace>)))
  "Returns md5sum for a message object of type '<PersonFace>"
  "3a9e6d7f59e4f091518a51ac905c4d3f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PersonFace)))
  "Returns md5sum for a message object of type 'PersonFace"
  "3a9e6d7f59e4f091518a51ac905c4d3f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PersonFace>)))
  "Returns full string definition for message of type '<PersonFace>"
  (cl:format cl:nil "string orientation~%int32 orientation_confidence~%realsense_person/BoundingBox head_bounding_box~%geometry_msgs/Point head_pose                         #head_pose.x = pitch, head_pose.y = roll, head_pose.z = yaw~%realsense_person/RegisteredPoint[] landmarks~%int32 landmarks_confidence~%~%================================================================================~%MSG: realsense_person/BoundingBox~%int32 x~%int32 y~%int32 w #width of the box~%int32 h #height of the box~%int32 confidence~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: realsense_person/RegisteredPoint~%geometry_msgs/Point world~%int32 world_confidence~%geometry_msgs/Point image~%int32 image_confidence~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PersonFace)))
  "Returns full string definition for message of type 'PersonFace"
  (cl:format cl:nil "string orientation~%int32 orientation_confidence~%realsense_person/BoundingBox head_bounding_box~%geometry_msgs/Point head_pose                         #head_pose.x = pitch, head_pose.y = roll, head_pose.z = yaw~%realsense_person/RegisteredPoint[] landmarks~%int32 landmarks_confidence~%~%================================================================================~%MSG: realsense_person/BoundingBox~%int32 x~%int32 y~%int32 w #width of the box~%int32 h #height of the box~%int32 confidence~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: realsense_person/RegisteredPoint~%geometry_msgs/Point world~%int32 world_confidence~%geometry_msgs/Point image~%int32 image_confidence~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PersonFace>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'orientation))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'head_bounding_box))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'head_pose))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'landmarks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PersonFace>))
  "Converts a ROS message object to a list"
  (cl:list 'PersonFace
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':orientation_confidence (orientation_confidence msg))
    (cl:cons ':head_bounding_box (head_bounding_box msg))
    (cl:cons ':head_pose (head_pose msg))
    (cl:cons ':landmarks (landmarks msg))
    (cl:cons ':landmarks_confidence (landmarks_confidence msg))
))
