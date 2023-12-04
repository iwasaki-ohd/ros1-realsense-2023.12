; Auto-generated. Do not edit!


(cl:in-package realsense_person-srv)


;//! \htmlinclude Serialize-request.msg.html

(cl:defclass <Serialize-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Serialize-request (<Serialize-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Serialize-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Serialize-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_person-srv:<Serialize-request> is deprecated: use realsense_person-srv:Serialize-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Serialize-request>) ostream)
  "Serializes a message object of type '<Serialize-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Serialize-request>) istream)
  "Deserializes a message object of type '<Serialize-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Serialize-request>)))
  "Returns string type for a service object of type '<Serialize-request>"
  "realsense_person/SerializeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Serialize-request)))
  "Returns string type for a service object of type 'Serialize-request"
  "realsense_person/SerializeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Serialize-request>)))
  "Returns md5sum for a message object of type '<Serialize-request>"
  "f43a8e1b362b75baa741461b46adc7e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Serialize-request)))
  "Returns md5sum for a message object of type 'Serialize-request"
  "f43a8e1b362b75baa741461b46adc7e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Serialize-request>)))
  "Returns full string definition for message of type '<Serialize-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Serialize-request)))
  "Returns full string definition for message of type 'Serialize-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Serialize-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Serialize-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Serialize-request
))
;//! \htmlinclude Serialize-response.msg.html

(cl:defclass <Serialize-response> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass Serialize-response (<Serialize-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Serialize-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Serialize-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_person-srv:<Serialize-response> is deprecated: use realsense_person-srv:Serialize-response instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Serialize-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-srv:data-val is deprecated.  Use realsense_person-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Serialize-response>) ostream)
  "Serializes a message object of type '<Serialize-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Serialize-response>) istream)
  "Deserializes a message object of type '<Serialize-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Serialize-response>)))
  "Returns string type for a service object of type '<Serialize-response>"
  "realsense_person/SerializeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Serialize-response)))
  "Returns string type for a service object of type 'Serialize-response"
  "realsense_person/SerializeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Serialize-response>)))
  "Returns md5sum for a message object of type '<Serialize-response>"
  "f43a8e1b362b75baa741461b46adc7e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Serialize-response)))
  "Returns md5sum for a message object of type 'Serialize-response"
  "f43a8e1b362b75baa741461b46adc7e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Serialize-response>)))
  "Returns full string definition for message of type '<Serialize-response>"
  (cl:format cl:nil "uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Serialize-response)))
  "Returns full string definition for message of type 'Serialize-response"
  (cl:format cl:nil "uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Serialize-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Serialize-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Serialize-response
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Serialize)))
  'Serialize-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Serialize)))
  'Serialize-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Serialize)))
  "Returns string type for a service object of type '<Serialize>"
  "realsense_person/Serialize")