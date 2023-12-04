;; Auto-generated. Do not edit!


(when (boundp 'realsense_person::Person)
  (if (not (find-package "REALSENSE_PERSON"))
    (make-package "REALSENSE_PERSON"))
  (shadow 'Person (find-package "REALSENSE_PERSON")))
(unless (find-package "REALSENSE_PERSON::PERSON")
  (make-package "REALSENSE_PERSON::PERSON"))

(in-package "ROS")
;;//! \htmlinclude Person.msg.html


(defclass realsense_person::Person
  :super ros::object
  :slots (_person_id _bounding_box _center_of_mass ))

(defmethod realsense_person::Person
  (:init
   (&key
    ((:person_id __person_id) (instance realsense_person::PersonId :init))
    ((:bounding_box __bounding_box) (instance realsense_person::BoundingBox :init))
    ((:center_of_mass __center_of_mass) (instance realsense_person::RegisteredPoint :init))
    )
   (send-super :init)
   (setq _person_id __person_id)
   (setq _bounding_box __bounding_box)
   (setq _center_of_mass __center_of_mass)
   self)
  (:person_id
   (&rest __person_id)
   (if (keywordp (car __person_id))
       (send* _person_id __person_id)
     (progn
       (if __person_id (setq _person_id (car __person_id)))
       _person_id)))
  (:bounding_box
   (&rest __bounding_box)
   (if (keywordp (car __bounding_box))
       (send* _bounding_box __bounding_box)
     (progn
       (if __bounding_box (setq _bounding_box (car __bounding_box)))
       _bounding_box)))
  (:center_of_mass
   (&rest __center_of_mass)
   (if (keywordp (car __center_of_mass))
       (send* _center_of_mass __center_of_mass)
     (progn
       (if __center_of_mass (setq _center_of_mass (car __center_of_mass)))
       _center_of_mass)))
  (:serialization-length
   ()
   (+
    ;; realsense_person/PersonId _person_id
    (send _person_id :serialization-length)
    ;; realsense_person/BoundingBox _bounding_box
    (send _bounding_box :serialization-length)
    ;; realsense_person/RegisteredPoint _center_of_mass
    (send _center_of_mass :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; realsense_person/PersonId _person_id
       (send _person_id :serialize s)
     ;; realsense_person/BoundingBox _bounding_box
       (send _bounding_box :serialize s)
     ;; realsense_person/RegisteredPoint _center_of_mass
       (send _center_of_mass :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; realsense_person/PersonId _person_id
     (send _person_id :deserialize buf ptr-) (incf ptr- (send _person_id :serialization-length))
   ;; realsense_person/BoundingBox _bounding_box
     (send _bounding_box :deserialize buf ptr-) (incf ptr- (send _bounding_box :serialization-length))
   ;; realsense_person/RegisteredPoint _center_of_mass
     (send _center_of_mass :deserialize buf ptr-) (incf ptr- (send _center_of_mass :serialization-length))
   ;;
   self)
  )

(setf (get realsense_person::Person :md5sum-) "6933144e4378998756b146a1cd151c9e")
(setf (get realsense_person::Person :datatype-) "realsense_person/Person")
(setf (get realsense_person::Person :definition-)
      "realsense_person/PersonId person_id
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



(provide :realsense_person/Person "6933144e4378998756b146a1cd151c9e")


