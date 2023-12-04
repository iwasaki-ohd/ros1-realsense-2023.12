;; Auto-generated. Do not edit!


(when (boundp 'realsense_person::PersonBody)
  (if (not (find-package "REALSENSE_PERSON"))
    (make-package "REALSENSE_PERSON"))
  (shadow 'PersonBody (find-package "REALSENSE_PERSON")))
(unless (find-package "REALSENSE_PERSON::PERSONBODY")
  (make-package "REALSENSE_PERSON::PERSONBODY"))

(in-package "ROS")
;;//! \htmlinclude PersonBody.msg.html


(defclass realsense_person::PersonBody
  :super ros::object
  :slots (_skeleton _gesture_origin _gesture_direction _gesture_confidence ))

(defmethod realsense_person::PersonBody
  (:init
   (&key
    ((:skeleton __skeleton) ())
    ((:gesture_origin __gesture_origin) (instance realsense_person::RegisteredPoint :init))
    ((:gesture_direction __gesture_direction) (instance realsense_person::RegisteredPoint :init))
    ((:gesture_confidence __gesture_confidence) 0)
    )
   (send-super :init)
   (setq _skeleton __skeleton)
   (setq _gesture_origin __gesture_origin)
   (setq _gesture_direction __gesture_direction)
   (setq _gesture_confidence (round __gesture_confidence))
   self)
  (:skeleton
   (&rest __skeleton)
   (if (keywordp (car __skeleton))
       (send* _skeleton __skeleton)
     (progn
       (if __skeleton (setq _skeleton (car __skeleton)))
       _skeleton)))
  (:gesture_origin
   (&rest __gesture_origin)
   (if (keywordp (car __gesture_origin))
       (send* _gesture_origin __gesture_origin)
     (progn
       (if __gesture_origin (setq _gesture_origin (car __gesture_origin)))
       _gesture_origin)))
  (:gesture_direction
   (&rest __gesture_direction)
   (if (keywordp (car __gesture_direction))
       (send* _gesture_direction __gesture_direction)
     (progn
       (if __gesture_direction (setq _gesture_direction (car __gesture_direction)))
       _gesture_direction)))
  (:gesture_confidence
   (&optional __gesture_confidence)
   (if __gesture_confidence (setq _gesture_confidence __gesture_confidence)) _gesture_confidence)
  (:serialization-length
   ()
   (+
    ;; realsense_person/PersonSkeleton[] _skeleton
    (apply #'+ (send-all _skeleton :serialization-length)) 4
    ;; realsense_person/RegisteredPoint _gesture_origin
    (send _gesture_origin :serialization-length)
    ;; realsense_person/RegisteredPoint _gesture_direction
    (send _gesture_direction :serialization-length)
    ;; int32 _gesture_confidence
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; realsense_person/PersonSkeleton[] _skeleton
     (write-long (length _skeleton) s)
     (dolist (elem _skeleton)
       (send elem :serialize s)
       )
     ;; realsense_person/RegisteredPoint _gesture_origin
       (send _gesture_origin :serialize s)
     ;; realsense_person/RegisteredPoint _gesture_direction
       (send _gesture_direction :serialize s)
     ;; int32 _gesture_confidence
       (write-long _gesture_confidence s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; realsense_person/PersonSkeleton[] _skeleton
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _skeleton (let (r) (dotimes (i n) (push (instance realsense_person::PersonSkeleton :init) r)) r))
     (dolist (elem- _skeleton)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; realsense_person/RegisteredPoint _gesture_origin
     (send _gesture_origin :deserialize buf ptr-) (incf ptr- (send _gesture_origin :serialization-length))
   ;; realsense_person/RegisteredPoint _gesture_direction
     (send _gesture_direction :deserialize buf ptr-) (incf ptr- (send _gesture_direction :serialization-length))
   ;; int32 _gesture_confidence
     (setq _gesture_confidence (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get realsense_person::PersonBody :md5sum-) "a9bfd5f8f67d8fbcfe06054caaec91ff")
(setf (get realsense_person::PersonBody :datatype-) "realsense_person/PersonBody")
(setf (get realsense_person::PersonBody :definition-)
      "realsense_person/PersonSkeleton[] skeleton
realsense_person/RegisteredPoint gesture_origin
realsense_person/RegisteredPoint gesture_direction
int32 gesture_confidence


================================================================================
MSG: realsense_person/PersonSkeleton
string joint_type
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



(provide :realsense_person/PersonBody "a9bfd5f8f67d8fbcfe06054caaec91ff")


