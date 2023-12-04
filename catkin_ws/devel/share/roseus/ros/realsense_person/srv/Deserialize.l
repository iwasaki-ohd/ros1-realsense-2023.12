;; Auto-generated. Do not edit!


(when (boundp 'realsense_person::Deserialize)
  (if (not (find-package "REALSENSE_PERSON"))
    (make-package "REALSENSE_PERSON"))
  (shadow 'Deserialize (find-package "REALSENSE_PERSON")))
(unless (find-package "REALSENSE_PERSON::DESERIALIZE")
  (make-package "REALSENSE_PERSON::DESERIALIZE"))
(unless (find-package "REALSENSE_PERSON::DESERIALIZEREQUEST")
  (make-package "REALSENSE_PERSON::DESERIALIZEREQUEST"))
(unless (find-package "REALSENSE_PERSON::DESERIALIZERESPONSE")
  (make-package "REALSENSE_PERSON::DESERIALIZERESPONSE"))

(in-package "ROS")





(defclass realsense_person::DeserializeRequest
  :super ros::object
  :slots (_data ))

(defmethod realsense_person::DeserializeRequest
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

(defclass realsense_person::DeserializeResponse
  :super ros::object
  :slots (_success ))

(defmethod realsense_person::DeserializeResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass realsense_person::Deserialize
  :super ros::object
  :slots ())

(setf (get realsense_person::Deserialize :md5sum-) "494333eb6aca57aeb8eaa1906a3508ec")
(setf (get realsense_person::Deserialize :datatype-) "realsense_person/Deserialize")
(setf (get realsense_person::Deserialize :request) realsense_person::DeserializeRequest)
(setf (get realsense_person::Deserialize :response) realsense_person::DeserializeResponse)

(defmethod realsense_person::DeserializeRequest
  (:response () (instance realsense_person::DeserializeResponse :init)))

(setf (get realsense_person::DeserializeRequest :md5sum-) "494333eb6aca57aeb8eaa1906a3508ec")
(setf (get realsense_person::DeserializeRequest :datatype-) "realsense_person/DeserializeRequest")
(setf (get realsense_person::DeserializeRequest :definition-)
      "uint8[] data
---
bool success
")

(setf (get realsense_person::DeserializeResponse :md5sum-) "494333eb6aca57aeb8eaa1906a3508ec")
(setf (get realsense_person::DeserializeResponse :datatype-) "realsense_person/DeserializeResponse")
(setf (get realsense_person::DeserializeResponse :definition-)
      "uint8[] data
---
bool success
")



(provide :realsense_person/Deserialize "494333eb6aca57aeb8eaa1906a3508ec")


