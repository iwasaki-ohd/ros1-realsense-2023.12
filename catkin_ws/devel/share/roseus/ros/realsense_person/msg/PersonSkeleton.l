;; Auto-generated. Do not edit!


(when (boundp 'realsense_person::PersonSkeleton)
  (if (not (find-package "REALSENSE_PERSON"))
    (make-package "REALSENSE_PERSON"))
  (shadow 'PersonSkeleton (find-package "REALSENSE_PERSON")))
(unless (find-package "REALSENSE_PERSON::PERSONSKELETON")
  (make-package "REALSENSE_PERSON::PERSONSKELETON"))

(in-package "ROS")
;;//! \htmlinclude PersonSkeleton.msg.html


(defclass realsense_person::PersonSkeleton
  :super ros::object
  :slots (_joint_type _skeleton_point ))

(defmethod realsense_person::PersonSkeleton
  (:init
   (&key
    ((:joint_type __joint_type) "")
    ((:skeleton_point __skeleton_point) (instance realsense_person::RegisteredPoint :init))
    )
   (send-super :init)
   (setq _joint_type (string __joint_type))
   (setq _skeleton_point __skeleton_point)
   self)
  (:joint_type
   (&optional __joint_type)
   (if __joint_type (setq _joint_type __joint_type)) _joint_type)
  (:skeleton_point
   (&rest __skeleton_point)
   (if (keywordp (car __skeleton_point))
       (send* _skeleton_point __skeleton_point)
     (progn
       (if __skeleton_point (setq _skeleton_point (car __skeleton_point)))
       _skeleton_point)))
  (:serialization-length
   ()
   (+
    ;; string _joint_type
    4 (length _joint_type)
    ;; realsense_person/RegisteredPoint _skeleton_point
    (send _skeleton_point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _joint_type
       (write-long (length _joint_type) s) (princ _joint_type s)
     ;; realsense_person/RegisteredPoint _skeleton_point
       (send _skeleton_point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _joint_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _joint_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; realsense_person/RegisteredPoint _skeleton_point
     (send _skeleton_point :deserialize buf ptr-) (incf ptr- (send _skeleton_point :serialization-length))
   ;;
   self)
  )

(setf (get realsense_person::PersonSkeleton :md5sum-) "830cfdb700931a76a5884c7211cc3672")
(setf (get realsense_person::PersonSkeleton :datatype-) "realsense_person/PersonSkeleton")
(setf (get realsense_person::PersonSkeleton :definition-)
      "string joint_type
realsense_person/RegisteredPoint skeleton_point


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



(provide :realsense_person/PersonSkeleton "830cfdb700931a76a5884c7211cc3672")


