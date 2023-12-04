;; Auto-generated. Do not edit!


(when (boundp 'realsense_person::Register)
  (if (not (find-package "REALSENSE_PERSON"))
    (make-package "REALSENSE_PERSON"))
  (shadow 'Register (find-package "REALSENSE_PERSON")))
(unless (find-package "REALSENSE_PERSON::REGISTER")
  (make-package "REALSENSE_PERSON::REGISTER"))
(unless (find-package "REALSENSE_PERSON::REGISTERREQUEST")
  (make-package "REALSENSE_PERSON::REGISTERREQUEST"))
(unless (find-package "REALSENSE_PERSON::REGISTERRESPONSE")
  (make-package "REALSENSE_PERSON::REGISTERRESPONSE"))

(in-package "ROS")





(defclass realsense_person::RegisterRequest
  :super ros::object
  :slots (_tracking_id ))

(defmethod realsense_person::RegisterRequest
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

(defclass realsense_person::RegisterResponse
  :super ros::object
  :slots (_status _status_desc _recognition_id ))

(defmethod realsense_person::RegisterResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:status_desc __status_desc) "")
    ((:recognition_id __recognition_id) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _status_desc (string __status_desc))
   (setq _recognition_id (round __recognition_id))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:status_desc
   (&optional __status_desc)
   (if __status_desc (setq _status_desc __status_desc)) _status_desc)
  (:recognition_id
   (&optional __recognition_id)
   (if __recognition_id (setq _recognition_id __recognition_id)) _recognition_id)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _status_desc
    4 (length _status_desc)
    ;; int32 _recognition_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _status_desc
       (write-long (length _status_desc) s) (princ _status_desc s)
     ;; int32 _recognition_id
       (write-long _recognition_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _status_desc
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status_desc (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _recognition_id
     (setq _recognition_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass realsense_person::Register
  :super ros::object
  :slots ())

(setf (get realsense_person::Register :md5sum-) "4b79a7657f840c1ae74654d7047749a5")
(setf (get realsense_person::Register :datatype-) "realsense_person/Register")
(setf (get realsense_person::Register :request) realsense_person::RegisterRequest)
(setf (get realsense_person::Register :response) realsense_person::RegisterResponse)

(defmethod realsense_person::RegisterRequest
  (:response () (instance realsense_person::RegisterResponse :init)))

(setf (get realsense_person::RegisterRequest :md5sum-) "4b79a7657f840c1ae74654d7047749a5")
(setf (get realsense_person::RegisterRequest :datatype-) "realsense_person/RegisterRequest")
(setf (get realsense_person::RegisterRequest :definition-)
      "uint32 tracking_id
---
int32 status
string status_desc
int32 recognition_id

")

(setf (get realsense_person::RegisterResponse :md5sum-) "4b79a7657f840c1ae74654d7047749a5")
(setf (get realsense_person::RegisterResponse :datatype-) "realsense_person/RegisterResponse")
(setf (get realsense_person::RegisterResponse :definition-)
      "uint32 tracking_id
---
int32 status
string status_desc
int32 recognition_id

")



(provide :realsense_person/Register "4b79a7657f840c1ae74654d7047749a5")


