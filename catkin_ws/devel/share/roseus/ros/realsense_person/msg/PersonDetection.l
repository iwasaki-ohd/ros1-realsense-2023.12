;; Auto-generated. Do not edit!


(when (boundp 'realsense_person::PersonDetection)
  (if (not (find-package "REALSENSE_PERSON"))
    (make-package "REALSENSE_PERSON"))
  (shadow 'PersonDetection (find-package "REALSENSE_PERSON")))
(unless (find-package "REALSENSE_PERSON::PERSONDETECTION")
  (make-package "REALSENSE_PERSON::PERSONDETECTION"))

(in-package "ROS")
;;//! \htmlinclude PersonDetection.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass realsense_person::PersonDetection
  :super ros::object
  :slots (_header _detected_person_count _persons ))

(defmethod realsense_person::PersonDetection
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:detected_person_count __detected_person_count) 0)
    ((:persons __persons) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _detected_person_count (round __detected_person_count))
   (setq _persons __persons)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:detected_person_count
   (&optional __detected_person_count)
   (if __detected_person_count (setq _detected_person_count __detected_person_count)) _detected_person_count)
  (:persons
   (&rest __persons)
   (if (keywordp (car __persons))
       (send* _persons __persons)
     (progn
       (if __persons (setq _persons (car __persons)))
       _persons)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _detected_person_count
    4
    ;; realsense_person/Person[] _persons
    (apply #'+ (send-all _persons :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _detected_person_count
       (write-long _detected_person_count s)
     ;; realsense_person/Person[] _persons
     (write-long (length _persons) s)
     (dolist (elem _persons)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _detected_person_count
     (setq _detected_person_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; realsense_person/Person[] _persons
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _persons (let (r) (dotimes (i n) (push (instance realsense_person::Person :init) r)) r))
     (dolist (elem- _persons)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get realsense_person::PersonDetection :md5sum-) "fcb6ddad07788a68cae398b4b226fa64")
(setf (get realsense_person::PersonDetection :datatype-) "realsense_person/PersonDetection")
(setf (get realsense_person::PersonDetection :definition-)
      "std_msgs/Header header
uint32 detected_person_count
realsense_person/Person[] persons
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

")



(provide :realsense_person/PersonDetection "fcb6ddad07788a68cae398b4b226fa64")


