; Auto-generated. Do not edit!


(cl:in-package realsense_person-msg)


;//! \htmlinclude Person.msg.html

(cl:defclass <Person> (roslisp-msg-protocol:ros-message)
  ((person_id
    :reader person_id
    :initarg :person_id
    :type realsense_person-msg:PersonId
    :initform (cl:make-instance 'realsense_person-msg:PersonId))
   (bounding_box
    :reader bounding_box
    :initarg :bounding_box
    :type realsense_person-msg:BoundingBox
    :initform (cl:make-instance 'realsense_person-msg:BoundingBox))
   (center_of_mass
    :reader center_of_mass
    :initarg :center_of_mass
    :type realsense_person-msg:RegisteredPoint
    :initform (cl:make-instance 'realsense_person-msg:RegisteredPoint)))
)

(cl:defclass Person (<Person>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Person>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Person)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_person-msg:<Person> is deprecated: use realsense_person-msg:Person instead.")))

(cl:ensure-generic-function 'person_id-val :lambda-list '(m))
(cl:defmethod person_id-val ((m <Person>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-msg:person_id-val is deprecated.  Use realsense_person-msg:person_id instead.")
  (person_id m))

(cl:ensure-generic-function 'bounding_box-val :lambda-list '(m))
(cl:defmethod bounding_box-val ((m <Person>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-msg:bounding_box-val is deprecated.  Use realsense_person-msg:bounding_box instead.")
  (bounding_box m))

(cl:ensure-generic-function 'center_of_mass-val :lambda-list '(m))
(cl:defmethod center_of_mass-val ((m <Person>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-msg:center_of_mass-val is deprecated.  Use realsense_person-msg:center_of_mass instead.")
  (center_of_mass m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Person>) ostream)
  "Serializes a message object of type '<Person>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'person_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bounding_box) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center_of_mass) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Person>) istream)
  "Deserializes a message object of type '<Person>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'person_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bounding_box) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center_of_mass) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Person>)))
  "Returns string type for a message object of type '<Person>"
  "realsense_person/Person")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Person)))
  "Returns string type for a message object of type 'Person"
  "realsense_person/Person")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Person>)))
  "Returns md5sum for a message object of type '<Person>"
  "6933144e4378998756b146a1cd151c9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Person)))
  "Returns md5sum for a message object of type 'Person"
  "6933144e4378998756b146a1cd151c9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Person>)))
  "Returns full string definition for message of type '<Person>"
  (cl:format cl:nil "realsense_person/PersonId person_id~%realsense_person/BoundingBox bounding_box~%realsense_person/RegisteredPoint center_of_mass~%================================================================================~%MSG: realsense_person/PersonId~%uint32 tracking_id~%int32 recognition_id         #currently not populated.~%string recognition_name      #placeholder in case application associates a name to the recognition_id. ~%================================================================================~%MSG: realsense_person/BoundingBox~%int32 x~%int32 y~%int32 w #width of the box~%int32 h #height of the box~%int32 confidence~%~%================================================================================~%MSG: realsense_person/RegisteredPoint~%geometry_msgs/Point world~%int32 world_confidence~%geometry_msgs/Point image~%int32 image_confidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Person)))
  "Returns full string definition for message of type 'Person"
  (cl:format cl:nil "realsense_person/PersonId person_id~%realsense_person/BoundingBox bounding_box~%realsense_person/RegisteredPoint center_of_mass~%================================================================================~%MSG: realsense_person/PersonId~%uint32 tracking_id~%int32 recognition_id         #currently not populated.~%string recognition_name      #placeholder in case application associates a name to the recognition_id. ~%================================================================================~%MSG: realsense_person/BoundingBox~%int32 x~%int32 y~%int32 w #width of the box~%int32 h #height of the box~%int32 confidence~%~%================================================================================~%MSG: realsense_person/RegisteredPoint~%geometry_msgs/Point world~%int32 world_confidence~%geometry_msgs/Point image~%int32 image_confidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Person>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'person_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bounding_box))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center_of_mass))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Person>))
  "Converts a ROS message object to a list"
  (cl:list 'Person
    (cl:cons ':person_id (person_id msg))
    (cl:cons ':bounding_box (bounding_box msg))
    (cl:cons ':center_of_mass (center_of_mass msg))
))
