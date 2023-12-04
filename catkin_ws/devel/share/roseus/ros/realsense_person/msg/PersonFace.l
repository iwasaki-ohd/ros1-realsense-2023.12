;; Auto-generated. Do not edit!


(when (boundp 'realsense_person::PersonFace)
  (if (not (find-package "REALSENSE_PERSON"))
    (make-package "REALSENSE_PERSON"))
  (shadow 'PersonFace (find-package "REALSENSE_PERSON")))
(unless (find-package "REALSENSE_PERSON::PERSONFACE")
  (make-package "REALSENSE_PERSON::PERSONFACE"))

(in-package "ROS")
;;//! \htmlinclude PersonFace.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass realsense_person::PersonFace
  :super ros::object
  :slots (_orientation _orientation_confidence _head_bounding_box _head_pose _landmarks _landmarks_confidence ))

(defmethod realsense_person::PersonFace
  (:init
   (&key
    ((:orientation __orientation) "")
    ((:orientation_confidence __orientation_confidence) 0)
    ((:head_bounding_box __head_bounding_box) (instance realsense_person::BoundingBox :init))
    ((:head_pose __head_pose) (instance geometry_msgs::Point :init))
    ((:landmarks __landmarks) ())
    ((:landmarks_confidence __landmarks_confidence) 0)
    )
   (send-super :init)
   (setq _orientation (string __orientation))
   (setq _orientation_confidence (round __orientation_confidence))
   (setq _head_bounding_box __head_bounding_box)
   (setq _head_pose __head_pose)
   (setq _landmarks __landmarks)
   (setq _landmarks_confidence (round __landmarks_confidence))
   self)
  (:orientation
   (&optional __orientation)
   (if __orientation (setq _orientation __orientation)) _orientation)
  (:orientation_confidence
   (&optional __orientation_confidence)
   (if __orientation_confidence (setq _orientation_confidence __orientation_confidence)) _orientation_confidence)
  (:head_bounding_box
   (&rest __head_bounding_box)
   (if (keywordp (car __head_bounding_box))
       (send* _head_bounding_box __head_bounding_box)
     (progn
       (if __head_bounding_box (setq _head_bounding_box (car __head_bounding_box)))
       _head_bounding_box)))
  (:head_pose
   (&rest __head_pose)
   (if (keywordp (car __head_pose))
       (send* _head_pose __head_pose)
     (progn
       (if __head_pose (setq _head_pose (car __head_pose)))
       _head_pose)))
  (:landmarks
   (&rest __landmarks)
   (if (keywordp (car __landmarks))
       (send* _landmarks __landmarks)
     (progn
       (if __landmarks (setq _landmarks (car __landmarks)))
       _landmarks)))
  (:landmarks_confidence
   (&optional __landmarks_confidence)
   (if __landmarks_confidence (setq _landmarks_confidence __landmarks_confidence)) _landmarks_confidence)
  (:serialization-length
   ()
   (+
    ;; string _orientation
    4 (length _orientation)
    ;; int32 _orientation_confidence
    4
    ;; realsense_person/BoundingBox _head_bounding_box
    (send _head_bounding_box :serialization-length)
    ;; geometry_msgs/Point _head_pose
    (send _head_pose :serialization-length)
    ;; realsense_person/RegisteredPoint[] _landmarks
    (apply #'+ (send-all _landmarks :serialization-length)) 4
    ;; int32 _landmarks_confidence
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _orientation
       (write-long (length _orientation) s) (princ _orientation s)
     ;; int32 _orientation_confidence
       (write-long _orientation_confidence s)
     ;; realsense_person/BoundingBox _head_bounding_box
       (send _head_bounding_box :serialize s)
     ;; geometry_msgs/Point _head_pose
       (send _head_pose :serialize s)
     ;; realsense_person/RegisteredPoint[] _landmarks
     (write-long (length _landmarks) s)
     (dolist (elem _landmarks)
       (send elem :serialize s)
       )
     ;; int32 _landmarks_confidence
       (write-long _landmarks_confidence s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _orientation
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _orientation (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _orientation_confidence
     (setq _orientation_confidence (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; realsense_person/BoundingBox _head_bounding_box
     (send _head_bounding_box :deserialize buf ptr-) (incf ptr- (send _head_bounding_box :serialization-length))
   ;; geometry_msgs/Point _head_pose
     (send _head_pose :deserialize buf ptr-) (incf ptr- (send _head_pose :serialization-length))
   ;; realsense_person/RegisteredPoint[] _landmarks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _landmarks (let (r) (dotimes (i n) (push (instance realsense_person::RegisteredPoint :init) r)) r))
     (dolist (elem- _landmarks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _landmarks_confidence
     (setq _landmarks_confidence (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get realsense_person::PersonFace :md5sum-) "3a9e6d7f59e4f091518a51ac905c4d3f")
(setf (get realsense_person::PersonFace :datatype-) "realsense_person/PersonFace")
(setf (get realsense_person::PersonFace :definition-)
      "string orientation
int32 orientation_confidence
realsense_person/BoundingBox head_bounding_box
geometry_msgs/Point head_pose                         #head_pose.x = pitch, head_pose.y = roll, head_pose.z = yaw
realsense_person/RegisteredPoint[] landmarks
int32 landmarks_confidence

================================================================================
MSG: realsense_person/BoundingBox
int32 x
int32 y
int32 w #width of the box
int32 h #height of the box
int32 confidence

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: realsense_person/RegisteredPoint
geometry_msgs/Point world
int32 world_confidence
geometry_msgs/Point image
int32 image_confidence
")



(provide :realsense_person/PersonFace "3a9e6d7f59e4f091518a51ac905c4d3f")


