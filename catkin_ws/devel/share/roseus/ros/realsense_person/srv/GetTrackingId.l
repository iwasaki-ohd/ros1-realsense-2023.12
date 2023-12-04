;; Auto-generated. Do not edit!


(when (boundp 'realsense_person::GetTrackingId)
  (if (not (find-package "REALSENSE_PERSON"))
    (make-package "REALSENSE_PERSON"))
  (shadow 'GetTrackingId (find-package "REALSENSE_PERSON")))
(unless (find-package "REALSENSE_PERSON::GETTRACKINGID")
  (make-package "REALSENSE_PERSON::GETTRACKINGID"))
(unless (find-package "REALSENSE_PERSON::GETTRACKINGIDREQUEST")
  (make-package "REALSENSE_PERSON::GETTRACKINGIDREQUEST"))
(unless (find-package "REALSENSE_PERSON::GETTRACKINGIDRESPONSE")
  (make-package "REALSENSE_PERSON::GETTRACKINGIDRESPONSE"))

(in-package "ROS")





(defclass realsense_person::GetTrackingIdRequest
  :super ros::object
  :slots ())

(defmethod realsense_person::GetTrackingIdRequest
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

(defclass realsense_person::GetTrackingIdResponse
  :super ros::object
  :slots (_status _status_desc _detected_person_count _tracking_ids ))

(defmethod realsense_person::GetTrackingIdResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:status_desc __status_desc) "")
    ((:detected_person_count __detected_person_count) 0)
    ((:tracking_ids __tracking_ids) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _status_desc (string __status_desc))
   (setq _detected_person_count (round __detected_person_count))
   (setq _tracking_ids __tracking_ids)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:status_desc
   (&optional __status_desc)
   (if __status_desc (setq _status_desc __status_desc)) _status_desc)
  (:detected_person_count
   (&optional __detected_person_count)
   (if __detected_person_count (setq _detected_person_count __detected_person_count)) _detected_person_count)
  (:tracking_ids
   (&optional __tracking_ids)
   (if __tracking_ids (setq _tracking_ids __tracking_ids)) _tracking_ids)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _status_desc
    4 (length _status_desc)
    ;; uint32 _detected_person_count
    4
    ;; uint32[] _tracking_ids
    (* 4    (length _tracking_ids)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _status_desc
       (write-long (length _status_desc) s) (princ _status_desc s)
     ;; uint32 _detected_person_count
       (write-long _detected_person_count s)
     ;; uint32[] _tracking_ids
     (write-long (length _tracking_ids) s)
     (dotimes (i (length _tracking_ids))
       (write-long (elt _tracking_ids i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _status_desc
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status_desc (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _detected_person_count
     (setq _detected_person_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32[] _tracking_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tracking_ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _tracking_ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass realsense_person::GetTrackingId
  :super ros::object
  :slots ())

(setf (get realsense_person::GetTrackingId :md5sum-) "20a696d550f9aee4109fc97b5b8cd0b7")
(setf (get realsense_person::GetTrackingId :datatype-) "realsense_person/GetTrackingId")
(setf (get realsense_person::GetTrackingId :request) realsense_person::GetTrackingIdRequest)
(setf (get realsense_person::GetTrackingId :response) realsense_person::GetTrackingIdResponse)

(defmethod realsense_person::GetTrackingIdRequest
  (:response () (instance realsense_person::GetTrackingIdResponse :init)))

(setf (get realsense_person::GetTrackingIdRequest :md5sum-) "20a696d550f9aee4109fc97b5b8cd0b7")
(setf (get realsense_person::GetTrackingIdRequest :datatype-) "realsense_person/GetTrackingIdRequest")
(setf (get realsense_person::GetTrackingIdRequest :definition-)
      "---
int32 status
string status_desc
uint32 detected_person_count
uint32[] tracking_ids #list of tracking_ids of detected people


")

(setf (get realsense_person::GetTrackingIdResponse :md5sum-) "20a696d550f9aee4109fc97b5b8cd0b7")
(setf (get realsense_person::GetTrackingIdResponse :datatype-) "realsense_person/GetTrackingIdResponse")
(setf (get realsense_person::GetTrackingIdResponse :definition-)
      "---
int32 status
string status_desc
uint32 detected_person_count
uint32[] tracking_ids #list of tracking_ids of detected people


")



(provide :realsense_person/GetTrackingId "20a696d550f9aee4109fc97b5b8cd0b7")


