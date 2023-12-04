;; Auto-generated. Do not edit!


(when (boundp 'realsense_person::StopTracking)
  (if (not (find-package "REALSENSE_PERSON"))
    (make-package "REALSENSE_PERSON"))
  (shadow 'StopTracking (find-package "REALSENSE_PERSON")))
(unless (find-package "REALSENSE_PERSON::STOPTRACKING")
  (make-package "REALSENSE_PERSON::STOPTRACKING"))
(unless (find-package "REALSENSE_PERSON::STOPTRACKINGREQUEST")
  (make-package "REALSENSE_PERSON::STOPTRACKINGREQUEST"))
(unless (find-package "REALSENSE_PERSON::STOPTRACKINGRESPONSE")
  (make-package "REALSENSE_PERSON::STOPTRACKINGRESPONSE"))

(in-package "ROS")





(defclass realsense_person::StopTrackingRequest
  :super ros::object
  :slots ())

(defmethod realsense_person::StopTrackingRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass realsense_person::StopTrackingResponse
  :super ros::object
  :slots (_status _status_desc ))

(defmethod realsense_person::StopTrackingResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:status_desc __status_desc) "")
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _status_desc (string __status_desc))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:status_desc
   (&optional __status_desc)
   (if __status_desc (setq _status_desc __status_desc)) _status_desc)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _status_desc
    4 (length _status_desc)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _status_desc
       (write-long (length _status_desc) s) (princ _status_desc s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _status_desc
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status_desc (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass realsense_person::StopTracking
  :super ros::object
  :slots ())

(setf (get realsense_person::StopTracking :md5sum-) "dbfa2262d85d80c0b56ce4d61f4542fd")
(setf (get realsense_person::StopTracking :datatype-) "realsense_person/StopTracking")
(setf (get realsense_person::StopTracking :request) realsense_person::StopTrackingRequest)
(setf (get realsense_person::StopTracking :response) realsense_person::StopTrackingResponse)

(defmethod realsense_person::StopTrackingRequest
  (:response () (instance realsense_person::StopTrackingResponse :init)))

(setf (get realsense_person::StopTrackingRequest :md5sum-) "dbfa2262d85d80c0b56ce4d61f4542fd")
(setf (get realsense_person::StopTrackingRequest :datatype-) "realsense_person/StopTrackingRequest")
(setf (get realsense_person::StopTrackingRequest :definition-)
      "---
int32 status
string status_desc


")

(setf (get realsense_person::StopTrackingResponse :md5sum-) "dbfa2262d85d80c0b56ce4d61f4542fd")
(setf (get realsense_person::StopTrackingResponse :datatype-) "realsense_person/StopTrackingResponse")
(setf (get realsense_person::StopTrackingResponse :definition-)
      "---
int32 status
string status_desc


")



(provide :realsense_person/StopTracking "dbfa2262d85d80c0b56ce4d61f4542fd")


