; Auto-generated. Do not edit!


(cl:in-package realsense_person-srv)


;//! \htmlinclude StopTracking-request.msg.html

(cl:defclass <StopTracking-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StopTracking-request (<StopTracking-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopTracking-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopTracking-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_person-srv:<StopTracking-request> is deprecated: use realsense_person-srv:StopTracking-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopTracking-request>) ostream)
  "Serializes a message object of type '<StopTracking-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopTracking-request>) istream)
  "Deserializes a message object of type '<StopTracking-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopTracking-request>)))
  "Returns string type for a service object of type '<StopTracking-request>"
  "realsense_person/StopTrackingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopTracking-request)))
  "Returns string type for a service object of type 'StopTracking-request"
  "realsense_person/StopTrackingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopTracking-request>)))
  "Returns md5sum for a message object of type '<StopTracking-request>"
  "dbfa2262d85d80c0b56ce4d61f4542fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopTracking-request)))
  "Returns md5sum for a message object of type 'StopTracking-request"
  "dbfa2262d85d80c0b56ce4d61f4542fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopTracking-request>)))
  "Returns full string definition for message of type '<StopTracking-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopTracking-request)))
  "Returns full string definition for message of type 'StopTracking-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopTracking-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopTracking-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StopTracking-request
))
;//! \htmlinclude StopTracking-response.msg.html

(cl:defclass <StopTracking-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (status_desc
    :reader status_desc
    :initarg :status_desc
    :type cl:string
    :initform ""))
)

(cl:defclass StopTracking-response (<StopTracking-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopTracking-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopTracking-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_person-srv:<StopTracking-response> is deprecated: use realsense_person-srv:StopTracking-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <StopTracking-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-srv:status-val is deprecated.  Use realsense_person-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'status_desc-val :lambda-list '(m))
(cl:defmethod status_desc-val ((m <StopTracking-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-srv:status_desc-val is deprecated.  Use realsense_person-srv:status_desc instead.")
  (status_desc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopTracking-response>) ostream)
  "Serializes a message object of type '<StopTracking-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_desc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_desc))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopTracking-response>) istream)
  "Deserializes a message object of type '<StopTracking-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status_desc) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status_desc) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopTracking-response>)))
  "Returns string type for a service object of type '<StopTracking-response>"
  "realsense_person/StopTrackingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopTracking-response)))
  "Returns string type for a service object of type 'StopTracking-response"
  "realsense_person/StopTrackingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopTracking-response>)))
  "Returns md5sum for a message object of type '<StopTracking-response>"
  "dbfa2262d85d80c0b56ce4d61f4542fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopTracking-response)))
  "Returns md5sum for a message object of type 'StopTracking-response"
  "dbfa2262d85d80c0b56ce4d61f4542fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopTracking-response>)))
  "Returns full string definition for message of type '<StopTracking-response>"
  (cl:format cl:nil "int32 status~%string status_desc~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopTracking-response)))
  "Returns full string definition for message of type 'StopTracking-response"
  (cl:format cl:nil "int32 status~%string status_desc~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopTracking-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'status_desc))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopTracking-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StopTracking-response
    (cl:cons ':status (status msg))
    (cl:cons ':status_desc (status_desc msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StopTracking)))
  'StopTracking-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StopTracking)))
  'StopTracking-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopTracking)))
  "Returns string type for a service object of type '<StopTracking>"
  "realsense_person/StopTracking")