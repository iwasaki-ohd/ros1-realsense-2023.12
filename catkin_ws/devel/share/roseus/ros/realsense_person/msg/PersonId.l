;; Auto-generated. Do not edit!


(when (boundp 'realsense_person::PersonId)
  (if (not (find-package "REALSENSE_PERSON"))
    (make-package "REALSENSE_PERSON"))
  (shadow 'PersonId (find-package "REALSENSE_PERSON")))
(unless (find-package "REALSENSE_PERSON::PERSONID")
  (make-package "REALSENSE_PERSON::PERSONID"))

(in-package "ROS")
;;//! \htmlinclude PersonId.msg.html


(defclass realsense_person::PersonId
  :super ros::object
  :slots (_tracking_id _recognition_id _recognition_name ))

(defmethod realsense_person::PersonId
  (:init
   (&key
    ((:tracking_id __tracking_id) 0)
    ((:recognition_id __recognition_id) 0)
    ((:recognition_name __recognition_name) "")
    )
   (send-super :init)
   (setq _tracking_id (round __tracking_id))
   (setq _recognition_id (round __recognition_id))
   (setq _recognition_name (string __recognition_name))
   self)
  (:tracking_id
   (&optional __tracking_id)
   (if __tracking_id (setq _tracking_id __tracking_id)) _tracking_id)
  (:recognition_id
   (&optional __recognition_id)
   (if __recognition_id (setq _recognition_id __recognition_id)) _recognition_id)
  (:recognition_name
   (&optional __recognition_name)
   (if __recognition_name (setq _recognition_name __recognition_name)) _recognition_name)
  (:serialization-length
   ()
   (+
    ;; uint32 _tracking_id
    4
    ;; int32 _recognition_id
    4
    ;; string _recognition_name
    4 (length _recognition_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _tracking_id
       (write-long _tracking_id s)
     ;; int32 _recognition_id
       (write-long _recognition_id s)
     ;; string _recognition_name
       (write-long (length _recognition_name) s) (princ _recognition_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _tracking_id
     (setq _tracking_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _recognition_id
     (setq _recognition_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _recognition_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _recognition_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get realsense_person::PersonId :md5sum-) "a5eb5b111f0e9bfed7be82e0b5f5a69a")
(setf (get realsense_person::PersonId :datatype-) "realsense_person/PersonId")
(setf (get realsense_person::PersonId :definition-)
      "uint32 tracking_id
int32 recognition_id         #currently not populated.
string recognition_name      #placeholder in case application associates a name to the recognition_id. 
")



(provide :realsense_person/PersonId "a5eb5b111f0e9bfed7be82e0b5f5a69a")


