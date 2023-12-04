;; Auto-generated. Do not edit!


(when (boundp 'realsense_person::Recognize)
  (if (not (find-package "REALSENSE_PERSON"))
    (make-package "REALSENSE_PERSON"))
  (shadow 'Recognize (find-package "REALSENSE_PERSON")))
(unless (find-package "REALSENSE_PERSON::RECOGNIZE")
  (make-package "REALSENSE_PERSON::RECOGNIZE"))
(unless (find-package "REALSENSE_PERSON::RECOGNIZEREQUEST")
  (make-package "REALSENSE_PERSON::RECOGNIZEREQUEST"))
(unless (find-package "REALSENSE_PERSON::RECOGNIZERESPONSE")
  (make-package "REALSENSE_PERSON::RECOGNIZERESPONSE"))

(in-package "ROS")





(defclass realsense_person::RecognizeRequest
  :super ros::object
  :slots (_tracking_id ))

(defmethod realsense_person::RecognizeRequest
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

(defclass realsense_person::RecognizeResponse
  :super ros::object
  :slots (_status _status_desc _recognition_id _confidence ))

(defmethod realsense_person::RecognizeResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:status_desc __status_desc) "")
    ((:recognition_id __recognition_id) 0)
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _status_desc (string __status_desc))
   (setq _recognition_id (round __recognition_id))
   (setq _confidence (float __confidence))
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
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _status_desc
    4 (length _status_desc)
    ;; int32 _recognition_id
    4
    ;; float32 _confidence
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
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass realsense_person::Recognize
  :super ros::object
  :slots ())

(setf (get realsense_person::Recognize :md5sum-) "7775c362719a4ed09f720639398479f1")
(setf (get realsense_person::Recognize :datatype-) "realsense_person/Recognize")
(setf (get realsense_person::Recognize :request) realsense_person::RecognizeRequest)
(setf (get realsense_person::Recognize :response) realsense_person::RecognizeResponse)

(defmethod realsense_person::RecognizeRequest
  (:response () (instance realsense_person::RecognizeResponse :init)))

(setf (get realsense_person::RecognizeRequest :md5sum-) "7775c362719a4ed09f720639398479f1")
(setf (get realsense_person::RecognizeRequest :datatype-) "realsense_person/RecognizeRequest")
(setf (get realsense_person::RecognizeRequest :definition-)
      "uint32 tracking_id
---
int32 status
string status_desc
int32 recognition_id
float32 confidence


")

(setf (get realsense_person::RecognizeResponse :md5sum-) "7775c362719a4ed09f720639398479f1")
(setf (get realsense_person::RecognizeResponse :datatype-) "realsense_person/RecognizeResponse")
(setf (get realsense_person::RecognizeResponse :definition-)
      "uint32 tracking_id
---
int32 status
string status_desc
int32 recognition_id
float32 confidence


")



(provide :realsense_person/Recognize "7775c362719a4ed09f720639398479f1")


