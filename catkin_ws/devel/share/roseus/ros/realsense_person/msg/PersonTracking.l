;; Auto-generated. Do not edit!


(when (boundp 'realsense_person::PersonTracking)
  (if (not (find-package "REALSENSE_PERSON"))
    (make-package "REALSENSE_PERSON"))
  (shadow 'PersonTracking (find-package "REALSENSE_PERSON")))
(unless (find-package "REALSENSE_PERSON::PERSONTRACKING")
  (make-package "REALSENSE_PERSON::PERSONTRACKING"))

(in-package "ROS")
;;//! \htmlinclude PersonTracking.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass realsense_person::PersonTracking
  :super ros::object
  :slots (_header _person _person_face _person_body ))

(defmethod realsense_person::PersonTracking
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:person __person) (instance realsense_person::Person :init))
    ((:person_face __person_face) (instance realsense_person::PersonFace :init))
    ((:person_body __person_body) (instance realsense_person::PersonBody :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _person __person)
   (setq _person_face __person_face)
   (setq _person_body __person_body)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:person
   (&rest __person)
   (if (keywordp (car __person))
       (send* _person __person)
     (progn
       (if __person (setq _person (car __person)))
       _person)))
  (:person_face
   (&rest __person_face)
   (if (keywordp (car __person_face))
       (send* _person_face __person_face)
     (progn
       (if __person_face (setq _person_face (car __person_face)))
       _person_face)))
  (:person_body
   (&rest __person_body)
   (if (keywordp (car __person_body))
       (send* _person_body __person_body)
     (progn
       (if __person_body (setq _person_body (car __person_body)))
       _person_body)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; realsense_person/Person _person
    (send _person :serialization-length)
    ;; realsense_person/PersonFace _person_face
    (send _person_face :serialization-length)
    ;; realsense_person/PersonBody _person_body
    (send _person_body :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; realsense_person/Person _person
       (send _person :serialize s)
     ;; realsense_person/PersonFace _person_face
       (send _person_face :serialize s)
     ;; realsense_person/PersonBody _person_body
       (send _person_body :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; realsense_person/Person _person
     (send _person :deserialize buf ptr-) (incf ptr- (send _person :serialization-length))
   ;; realsense_person/PersonFace _person_face
     (send _person_face :deserialize buf ptr-) (incf ptr- (send _person_face :serialization-length))
   ;; realsense_person/PersonBody _person_body
     (send _person_body :deserialize buf ptr-) (incf ptr- (send _person_body :serialization-length))
   ;;
   self)
  )

(setf (get realsense_person::PersonTracking :md5sum-) "cd4b605d2e359f7a66aec70c6f928898")
(setf (get realsense_person::PersonTracking :datatype-) "realsense_person/PersonTracking")
(setf (get realsense_person::PersonTracking :definition-)
      "std_msgs/Header header 
realsense_person/Person person
realsense_person/PersonFace person_face
realsense_person/PersonBody person_body
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: realsense_person/Person
realsense_person/PersonId person_id
realsense_person/BoundingBox bounding_box
realsense_person/RegisteredPoint center_of_mass
================================================================================
MSG: realsense_person/PersonId
uint32 tracking_id
int32 recognition_id         #currently not populated.
string recognition_name      #placeholder in case application associates a name to the recognition_id. 
================================================================================
MSG: realsense_person/BoundingBox
int32 x
int32 y
int32 w #width of the box
int32 h #height of the box
int32 confidence

================================================================================
MSG: realsense_person/RegisteredPoint
geometry_msgs/Point world
int32 world_confidence
geometry_msgs/Point image
int32 image_confidence
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: realsense_person/PersonFace
string orientation
int32 orientation_confidence
realsense_person/BoundingBox head_bounding_box
geometry_msgs/Point head_pose                         #head_pose.x = pitch, head_pose.y = roll, head_pose.z = yaw
realsense_person/RegisteredPoint[] landmarks
int32 landmarks_confidence

================================================================================
MSG: realsense_person/PersonBody
realsense_person/PersonSkeleton[] skeleton
realsense_person/RegisteredPoint gesture_origin
realsense_person/RegisteredPoint gesture_direction
int32 gesture_confidence


================================================================================
MSG: realsense_person/PersonSkeleton
string joint_type
realsense_person/RegisteredPoint skeleton_point


")



(provide :realsense_person/PersonTracking "cd4b605d2e359f7a66aec70c6f928898")


