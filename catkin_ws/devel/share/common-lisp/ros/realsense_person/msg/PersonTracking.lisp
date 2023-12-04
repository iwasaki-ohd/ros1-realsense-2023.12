; Auto-generated. Do not edit!


(cl:in-package realsense_person-msg)


;//! \htmlinclude PersonTracking.msg.html

(cl:defclass <PersonTracking> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (person
    :reader person
    :initarg :person
    :type realsense_person-msg:Person
    :initform (cl:make-instance 'realsense_person-msg:Person))
   (person_face
    :reader person_face
    :initarg :person_face
    :type realsense_person-msg:PersonFace
    :initform (cl:make-instance 'realsense_person-msg:PersonFace))
   (person_body
    :reader person_body
    :initarg :person_body
    :type realsense_person-msg:PersonBody
    :initform (cl:make-instance 'realsense_person-msg:PersonBody)))
)

(cl:defclass PersonTracking (<PersonTracking>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PersonTracking>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PersonTracking)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_person-msg:<PersonTracking> is deprecated: use realsense_person-msg:PersonTracking instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PersonTracking>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-msg:header-val is deprecated.  Use realsense_person-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'person-val :lambda-list '(m))
(cl:defmethod person-val ((m <PersonTracking>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-msg:person-val is deprecated.  Use realsense_person-msg:person instead.")
  (person m))

(cl:ensure-generic-function 'person_face-val :lambda-list '(m))
(cl:defmethod person_face-val ((m <PersonTracking>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-msg:person_face-val is deprecated.  Use realsense_person-msg:person_face instead.")
  (person_face m))

(cl:ensure-generic-function 'person_body-val :lambda-list '(m))
(cl:defmethod person_body-val ((m <PersonTracking>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-msg:person_body-val is deprecated.  Use realsense_person-msg:person_body instead.")
  (person_body m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PersonTracking>) ostream)
  "Serializes a message object of type '<PersonTracking>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'person) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'person_face) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'person_body) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PersonTracking>) istream)
  "Deserializes a message object of type '<PersonTracking>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'person) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'person_face) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'person_body) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PersonTracking>)))
  "Returns string type for a message object of type '<PersonTracking>"
  "realsense_person/PersonTracking")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PersonTracking)))
  "Returns string type for a message object of type 'PersonTracking"
  "realsense_person/PersonTracking")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PersonTracking>)))
  "Returns md5sum for a message object of type '<PersonTracking>"
  "cd4b605d2e359f7a66aec70c6f928898")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PersonTracking)))
  "Returns md5sum for a message object of type 'PersonTracking"
  "cd4b605d2e359f7a66aec70c6f928898")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PersonTracking>)))
  "Returns full string definition for message of type '<PersonTracking>"
  (cl:format cl:nil "std_msgs/Header header ~%realsense_person/Person person~%realsense_person/PersonFace person_face~%realsense_person/PersonBody person_body~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: realsense_person/Person~%realsense_person/PersonId person_id~%realsense_person/BoundingBox bounding_box~%realsense_person/RegisteredPoint center_of_mass~%================================================================================~%MSG: realsense_person/PersonId~%uint32 tracking_id~%int32 recognition_id         #currently not populated.~%string recognition_name      #placeholder in case application associates a name to the recognition_id. ~%================================================================================~%MSG: realsense_person/BoundingBox~%int32 x~%int32 y~%int32 w #width of the box~%int32 h #height of the box~%int32 confidence~%~%================================================================================~%MSG: realsense_person/RegisteredPoint~%geometry_msgs/Point world~%int32 world_confidence~%geometry_msgs/Point image~%int32 image_confidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: realsense_person/PersonFace~%string orientation~%int32 orientation_confidence~%realsense_person/BoundingBox head_bounding_box~%geometry_msgs/Point head_pose                         #head_pose.x = pitch, head_pose.y = roll, head_pose.z = yaw~%realsense_person/RegisteredPoint[] landmarks~%int32 landmarks_confidence~%~%================================================================================~%MSG: realsense_person/PersonBody~%realsense_person/PersonSkeleton[] skeleton~%realsense_person/RegisteredPoint gesture_origin~%realsense_person/RegisteredPoint gesture_direction~%int32 gesture_confidence~%~%~%================================================================================~%MSG: realsense_person/PersonSkeleton~%string joint_type~%realsense_person/RegisteredPoint skeleton_point~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PersonTracking)))
  "Returns full string definition for message of type 'PersonTracking"
  (cl:format cl:nil "std_msgs/Header header ~%realsense_person/Person person~%realsense_person/PersonFace person_face~%realsense_person/PersonBody person_body~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: realsense_person/Person~%realsense_person/PersonId person_id~%realsense_person/BoundingBox bounding_box~%realsense_person/RegisteredPoint center_of_mass~%================================================================================~%MSG: realsense_person/PersonId~%uint32 tracking_id~%int32 recognition_id         #currently not populated.~%string recognition_name      #placeholder in case application associates a name to the recognition_id. ~%================================================================================~%MSG: realsense_person/BoundingBox~%int32 x~%int32 y~%int32 w #width of the box~%int32 h #height of the box~%int32 confidence~%~%================================================================================~%MSG: realsense_person/RegisteredPoint~%geometry_msgs/Point world~%int32 world_confidence~%geometry_msgs/Point image~%int32 image_confidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: realsense_person/PersonFace~%string orientation~%int32 orientation_confidence~%realsense_person/BoundingBox head_bounding_box~%geometry_msgs/Point head_pose                         #head_pose.x = pitch, head_pose.y = roll, head_pose.z = yaw~%realsense_person/RegisteredPoint[] landmarks~%int32 landmarks_confidence~%~%================================================================================~%MSG: realsense_person/PersonBody~%realsense_person/PersonSkeleton[] skeleton~%realsense_person/RegisteredPoint gesture_origin~%realsense_person/RegisteredPoint gesture_direction~%int32 gesture_confidence~%~%~%================================================================================~%MSG: realsense_person/PersonSkeleton~%string joint_type~%realsense_person/RegisteredPoint skeleton_point~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PersonTracking>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'person))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'person_face))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'person_body))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PersonTracking>))
  "Converts a ROS message object to a list"
  (cl:list 'PersonTracking
    (cl:cons ':header (header msg))
    (cl:cons ':person (person msg))
    (cl:cons ':person_face (person_face msg))
    (cl:cons ':person_body (person_body msg))
))
