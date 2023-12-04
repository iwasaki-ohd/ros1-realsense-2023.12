;; Auto-generated. Do not edit!


(when (boundp 'realsense_person::Serialize)
  (if (not (find-package "REALSENSE_PERSON"))
    (make-package "REALSENSE_PERSON"))
  (shadow 'Serialize (find-package "REALSENSE_PERSON")))
(unless (find-package "REALSENSE_PERSON::SERIALIZE")
  (make-package "REALSENSE_PERSON::SERIALIZE"))
(unless (find-package "REALSENSE_PERSON::SERIALIZEREQUEST")
  (make-package "REALSENSE_PERSON::SERIALIZEREQUEST"))
(unless (find-package "REALSENSE_PERSON::SERIALIZERESPONSE")
  (make-package "REALSENSE_PERSON::SERIALIZERESPONSE"))

(in-package "ROS")





(defclass realsense_person::SerializeRequest
  :super ros::object
  :slots ())

(defmethod realsense_person::SerializeRequest
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

(defclass realsense_person::SerializeResponse
  :super ros::object
  :slots (_data ))

(defmethod realsense_person::SerializeResponse
  (:init
   (&key
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(defclass realsense_person::Serialize
  :super ros::object
  :slots ())

(setf (get realsense_person::Serialize :md5sum-) "f43a8e1b362b75baa741461b46adc7e0")
(setf (get realsense_person::Serialize :datatype-) "realsense_person/Serialize")
(setf (get realsense_person::Serialize :request) realsense_person::SerializeRequest)
(setf (get realsense_person::Serialize :response) realsense_person::SerializeResponse)

(defmethod realsense_person::SerializeRequest
  (:response () (instance realsense_person::SerializeResponse :init)))

(setf (get realsense_person::SerializeRequest :md5sum-) "f43a8e1b362b75baa741461b46adc7e0")
(setf (get realsense_person::SerializeRequest :datatype-) "realsense_person/SerializeRequest")
(setf (get realsense_person::SerializeRequest :definition-)
      "---
uint8[] data
")

(setf (get realsense_person::SerializeResponse :md5sum-) "f43a8e1b362b75baa741461b46adc7e0")
(setf (get realsense_person::SerializeResponse :datatype-) "realsense_person/SerializeResponse")
(setf (get realsense_person::SerializeResponse :definition-)
      "---
uint8[] data
")



(provide :realsense_person/Serialize "f43a8e1b362b75baa741461b46adc7e0")


