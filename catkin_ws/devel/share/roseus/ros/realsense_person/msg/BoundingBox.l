;; Auto-generated. Do not edit!


(when (boundp 'realsense_person::BoundingBox)
  (if (not (find-package "REALSENSE_PERSON"))
    (make-package "REALSENSE_PERSON"))
  (shadow 'BoundingBox (find-package "REALSENSE_PERSON")))
(unless (find-package "REALSENSE_PERSON::BOUNDINGBOX")
  (make-package "REALSENSE_PERSON::BOUNDINGBOX"))

(in-package "ROS")
;;//! \htmlinclude BoundingBox.msg.html


(defclass realsense_person::BoundingBox
  :super ros::object
  :slots (_x _y _w _h _confidence ))

(defmethod realsense_person::BoundingBox
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    ((:w __w) 0)
    ((:h __h) 0)
    ((:confidence __confidence) 0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _w (round __w))
   (setq _h (round __h))
   (setq _confidence (round __confidence))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:w
   (&optional __w)
   (if __w (setq _w __w)) _w)
  (:h
   (&optional __h)
   (if __h (setq _h __h)) _h)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; int32 _x
    4
    ;; int32 _y
    4
    ;; int32 _w
    4
    ;; int32 _h
    4
    ;; int32 _confidence
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;; int32 _w
       (write-long _w s)
     ;; int32 _h
       (write-long _h s)
     ;; int32 _confidence
       (write-long _confidence s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _w
     (setq _w (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _h
     (setq _h (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _confidence
     (setq _confidence (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get realsense_person::BoundingBox :md5sum-) "a4e91affcb4ac5719e71f56994988f12")
(setf (get realsense_person::BoundingBox :datatype-) "realsense_person/BoundingBox")
(setf (get realsense_person::BoundingBox :definition-)
      "int32 x
int32 y
int32 w #width of the box
int32 h #height of the box
int32 confidence

")



(provide :realsense_person/BoundingBox "a4e91affcb4ac5719e71f56994988f12")


