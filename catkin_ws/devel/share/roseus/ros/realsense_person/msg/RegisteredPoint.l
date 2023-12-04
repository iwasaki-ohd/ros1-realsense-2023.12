;; Auto-generated. Do not edit!


(when (boundp 'realsense_person::RegisteredPoint)
  (if (not (find-package "REALSENSE_PERSON"))
    (make-package "REALSENSE_PERSON"))
  (shadow 'RegisteredPoint (find-package "REALSENSE_PERSON")))
(unless (find-package "REALSENSE_PERSON::REGISTEREDPOINT")
  (make-package "REALSENSE_PERSON::REGISTEREDPOINT"))

(in-package "ROS")
;;//! \htmlinclude RegisteredPoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass realsense_person::RegisteredPoint
  :super ros::object
  :slots (_world _world_confidence _image _image_confidence ))

(defmethod realsense_person::RegisteredPoint
  (:init
   (&key
    ((:world __world) (instance geometry_msgs::Point :init))
    ((:world_confidence __world_confidence) 0)
    ((:image __image) (instance geometry_msgs::Point :init))
    ((:image_confidence __image_confidence) 0)
    )
   (send-super :init)
   (setq _world __world)
   (setq _world_confidence (round __world_confidence))
   (setq _image __image)
   (setq _image_confidence (round __image_confidence))
   self)
  (:world
   (&rest __world)
   (if (keywordp (car __world))
       (send* _world __world)
     (progn
       (if __world (setq _world (car __world)))
       _world)))
  (:world_confidence
   (&optional __world_confidence)
   (if __world_confidence (setq _world_confidence __world_confidence)) _world_confidence)
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:image_confidence
   (&optional __image_confidence)
   (if __image_confidence (setq _image_confidence __image_confidence)) _image_confidence)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _world
    (send _world :serialization-length)
    ;; int32 _world_confidence
    4
    ;; geometry_msgs/Point _image
    (send _image :serialization-length)
    ;; int32 _image_confidence
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _world
       (send _world :serialize s)
     ;; int32 _world_confidence
       (write-long _world_confidence s)
     ;; geometry_msgs/Point _image
       (send _image :serialize s)
     ;; int32 _image_confidence
       (write-long _image_confidence s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _world
     (send _world :deserialize buf ptr-) (incf ptr- (send _world :serialization-length))
   ;; int32 _world_confidence
     (setq _world_confidence (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;; int32 _image_confidence
     (setq _image_confidence (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get realsense_person::RegisteredPoint :md5sum-) "377e1b201e51fdf9a771993c3be57884")
(setf (get realsense_person::RegisteredPoint :datatype-) "realsense_person/RegisteredPoint")
(setf (get realsense_person::RegisteredPoint :definition-)
      "geometry_msgs/Point world
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



(provide :realsense_person/RegisteredPoint "377e1b201e51fdf9a771993c3be57884")


