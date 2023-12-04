;; Auto-generated. Do not edit!


(when (boundp 'realsense_person::Reinforce)
  (if (not (find-package "REALSENSE_PERSON"))
    (make-package "REALSENSE_PERSON"))
  (shadow 'Reinforce (find-package "REALSENSE_PERSON")))
(unless (find-package "REALSENSE_PERSON::REINFORCE")
  (make-package "REALSENSE_PERSON::REINFORCE"))
(unless (find-package "REALSENSE_PERSON::REINFORCEREQUEST")
  (make-package "REALSENSE_PERSON::REINFORCEREQUEST"))
(unless (find-package "REALSENSE_PERSON::REINFORCERESPONSE")
  (make-package "REALSENSE_PERSON::REINFORCERESPONSE"))

(in-package "ROS")





(defclass realsense_person::ReinforceRequest
  :super ros::object
  :slots (_tracking_id _recognition_id ))

(defmethod realsense_person::ReinforceRequest
  (:init
   (&key
    ((:tracking_id __tracking_id) 0)
    ((:recognition_id __recognition_id) 0)
    )
   (send-super :init)
   (setq _tracking_id (round __tracking_id))
   (setq _recognition_id (round __recognition_id))
   self)
  (:tracking_id
   (&optional __tracking_id)
   (if __tracking_id (setq _tracking_id __tracking_id)) _tracking_id)
  (:recognition_id
   (&optional __recognition_id)
   (if __recognition_id (setq _recognition_id __recognition_id)) _recognition_id)
  (:serialization-length
   ()
   (+
    ;; uint32 _tracking_id
    4
    ;; int32 _recognition_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _tracking_id
       (write-long _tracking_id s)
     ;; int32 _recognition_id
       (write-long _recognition_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _tracking_id
     (setq _tracking_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _recognition_id
     (setq _recognition_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass realsense_person::ReinforceResponse
  :super ros::object
  :slots (_status _status_desc ))

(defmethod realsense_person::ReinforceResponse
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

(defclass realsense_person::Reinforce
  :super ros::object
  :slots ())

(setf (get realsense_person::Reinforce :md5sum-) "2b7c244f8f3a54458eeafecb4a88c517")
(setf (get realsense_person::Reinforce :datatype-) "realsense_person/Reinforce")
(setf (get realsense_person::Reinforce :request) realsense_person::ReinforceRequest)
(setf (get realsense_person::Reinforce :response) realsense_person::ReinforceResponse)

(defmethod realsense_person::ReinforceRequest
  (:response () (instance realsense_person::ReinforceResponse :init)))

(setf (get realsense_person::ReinforceRequest :md5sum-) "2b7c244f8f3a54458eeafecb4a88c517")
(setf (get realsense_person::ReinforceRequest :datatype-) "realsense_person/ReinforceRequest")
(setf (get realsense_person::ReinforceRequest :definition-)
      "uint32 tracking_id
int32 recognition_id
---
int32 status
string status_desc

")

(setf (get realsense_person::ReinforceResponse :md5sum-) "2b7c244f8f3a54458eeafecb4a88c517")
(setf (get realsense_person::ReinforceResponse :datatype-) "realsense_person/ReinforceResponse")
(setf (get realsense_person::ReinforceResponse :definition-)
      "uint32 tracking_id
int32 recognition_id
---
int32 status
string status_desc

")



(provide :realsense_person/Reinforce "2b7c244f8f3a54458eeafecb4a88c517")


