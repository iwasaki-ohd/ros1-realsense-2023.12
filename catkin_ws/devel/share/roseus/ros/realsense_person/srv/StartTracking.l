;; Auto-generated. Do not edit!


(when (boundp 'realsense_person::StartTracking)
  (if (not (find-package "REALSENSE_PERSON"))
    (make-package "REALSENSE_PERSON"))
  (shadow 'StartTracking (find-package "REALSENSE_PERSON")))
(unless (find-package "REALSENSE_PERSON::STARTTRACKING")
  (make-package "REALSENSE_PERSON::STARTTRACKING"))
(unless (find-package "REALSENSE_PERSON::STARTTRACKINGREQUEST")
  (make-package "REALSENSE_PERSON::STARTTRACKINGREQUEST"))
(unless (find-package "REALSENSE_PERSON::STARTTRACKINGRESPONSE")
  (make-package "REALSENSE_PERSON::STARTTRACKINGRESPONSE"))

(in-package "ROS")





(defclass realsense_person::StartTrackingRequest
  :super ros::object
  :slots (_tracking_id ))

(defmethod realsense_person::StartTrackingRequest
  (:init
   (&key
    ((:tracking_id __tracking_id) 0)
    )
   (send-super :init)
   (setq _tracking_id (round __tracking_id))
   self)
  (:tracking_id
   (&optional __tracking_id)
   (if __tracking_id (setq _tracking_id __tracking_id)) _tracking_id)
  (:serialization-length
   ()
   (+
    ;; uint32 _tracking_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _tracking_id
       (write-long _tracking_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _tracking_id
     (setq _tracking_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass realsense_person::StartTrackingResponse
  :super ros::object
  :slots (_status _status_desc ))

(defmethod realsense_person::StartTrackingResponse
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

(defclass realsense_person::StartTracking
  :super ros::object
  :slots ())

(setf (get realsense_person::StartTracking :md5sum-) "7687c97d5fb7aff1fb66700f7f14766e")
(setf (get realsense_person::StartTracking :datatype-) "realsense_person/StartTracking")
(setf (get realsense_person::StartTracking :request) realsense_person::StartTrackingRequest)
(setf (get realsense_person::StartTracking :response) realsense_person::StartTrackingResponse)

(defmethod realsense_person::StartTrackingRequest
  (:response () (instance realsense_person::StartTrackingResponse :init)))

(setf (get realsense_person::StartTrackingRequest :md5sum-) "7687c97d5fb7aff1fb66700f7f14766e")
(setf (get realsense_person::StartTrackingRequest :datatype-) "realsense_person/StartTrackingRequest")
(setf (get realsense_person::StartTrackingRequest :definition-)
      "uint32 tracking_id
---
int32 status
string status_desc


")

(setf (get realsense_person::StartTrackingResponse :md5sum-) "7687c97d5fb7aff1fb66700f7f14766e")
(setf (get realsense_person::StartTrackingResponse :datatype-) "realsense_person/StartTrackingResponse")
(setf (get realsense_person::StartTrackingResponse :definition-)
      "uint32 tracking_id
---
int32 status
string status_desc


")



(provide :realsense_person/StartTracking "7687c97d5fb7aff1fb66700f7f14766e")


