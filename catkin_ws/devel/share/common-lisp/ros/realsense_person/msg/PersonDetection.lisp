; Auto-generated. Do not edit!


(cl:in-package realsense_person-msg)


;//! \htmlinclude PersonDetection.msg.html

(cl:defclass <PersonDetection> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (detected_person_count
    :reader detected_person_count
    :initarg :detected_person_count
    :type cl:integer
    :initform 0)
   (persons
    :reader persons
    :initarg :persons
    :type (cl:vector realsense_person-msg:Person)
   :initform (cl:make-array 0 :element-type 'realsense_person-msg:Person :initial-element (cl:make-instance 'realsense_person-msg:Person))))
)

(cl:defclass PersonDetection (<PersonDetection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PersonDetection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PersonDetection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_person-msg:<PersonDetection> is deprecated: use realsense_person-msg:PersonDetection instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PersonDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-msg:header-val is deprecated.  Use realsense_person-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'detected_person_count-val :lambda-list '(m))
(cl:defmethod detected_person_count-val ((m <PersonDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-msg:detected_person_count-val is deprecated.  Use realsense_person-msg:detected_person_count instead.")
  (detected_person_count m))

(cl:ensure-generic-function 'persons-val :lambda-list '(m))
(cl:defmethod persons-val ((m <PersonDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-msg:persons-val is deprecated.  Use realsense_person-msg:persons instead.")
  (persons m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PersonDetection>) ostream)
  "Serializes a message object of type '<PersonDetection>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'detected_person_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'detected_person_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'detected_person_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'detected_person_count)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'persons))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'persons))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PersonDetection>) istream)
  "Deserializes a message object of type '<PersonDetection>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'detected_person_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'detected_person_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'detected_person_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'detected_person_count)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'persons) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'persons)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'realsense_person-msg:Person))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PersonDetection>)))
  "Returns string type for a message object of type '<PersonDetection>"
  "realsense_person/PersonDetection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PersonDetection)))
  "Returns string type for a message object of type 'PersonDetection"
  "realsense_person/PersonDetection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PersonDetection>)))
  "Returns md5sum for a message object of type '<PersonDetection>"
  "fcb6ddad07788a68cae398b4b226fa64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PersonDetection)))
  "Returns md5sum for a message object of type 'PersonDetection"
  "fcb6ddad07788a68cae398b4b226fa64")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PersonDetection>)))
  "Returns full string definition for message of type '<PersonDetection>"
  (cl:format cl:nil "std_msgs/Header header~%uint32 detected_person_count~%realsense_person/Person[] persons~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: realsense_person/Person~%realsense_person/PersonId person_id~%realsense_person/BoundingBox bounding_box~%realsense_person/RegisteredPoint center_of_mass~%================================================================================~%MSG: realsense_person/PersonId~%uint32 tracking_id~%int32 recognition_id         #currently not populated.~%string recognition_name      #placeholder in case application associates a name to the recognition_id. ~%================================================================================~%MSG: realsense_person/BoundingBox~%int32 x~%int32 y~%int32 w #width of the box~%int32 h #height of the box~%int32 confidence~%~%================================================================================~%MSG: realsense_person/RegisteredPoint~%geometry_msgs/Point world~%int32 world_confidence~%geometry_msgs/Point image~%int32 image_confidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PersonDetection)))
  "Returns full string definition for message of type 'PersonDetection"
  (cl:format cl:nil "std_msgs/Header header~%uint32 detected_person_count~%realsense_person/Person[] persons~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: realsense_person/Person~%realsense_person/PersonId person_id~%realsense_person/BoundingBox bounding_box~%realsense_person/RegisteredPoint center_of_mass~%================================================================================~%MSG: realsense_person/PersonId~%uint32 tracking_id~%int32 recognition_id         #currently not populated.~%string recognition_name      #placeholder in case application associates a name to the recognition_id. ~%================================================================================~%MSG: realsense_person/BoundingBox~%int32 x~%int32 y~%int32 w #width of the box~%int32 h #height of the box~%int32 confidence~%~%================================================================================~%MSG: realsense_person/RegisteredPoint~%geometry_msgs/Point world~%int32 world_confidence~%geometry_msgs/Point image~%int32 image_confidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PersonDetection>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'persons) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PersonDetection>))
  "Converts a ROS message object to a list"
  (cl:list 'PersonDetection
    (cl:cons ':header (header msg))
    (cl:cons ':detected_person_count (detected_person_count msg))
    (cl:cons ':persons (persons msg))
))
