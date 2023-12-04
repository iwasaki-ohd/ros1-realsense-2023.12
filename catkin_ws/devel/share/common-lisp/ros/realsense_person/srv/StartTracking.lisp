; Auto-generated. Do not edit!


(cl:in-package realsense_person-srv)


;//! \htmlinclude StartTracking-request.msg.html

(cl:defclass <StartTracking-request> (roslisp-msg-protocol:ros-message)
  ((tracking_id
    :reader tracking_id
    :initarg :tracking_id
    :type cl:integer
    :initform 0))
)

(cl:defclass StartTracking-request (<StartTracking-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartTracking-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartTracking-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_person-srv:<StartTracking-request> is deprecated: use realsense_person-srv:StartTracking-request instead.")))

(cl:ensure-generic-function 'tracking_id-val :lambda-list '(m))
(cl:defmethod tracking_id-val ((m <StartTracking-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-srv:tracking_id-val is deprecated.  Use realsense_person-srv:tracking_id instead.")
  (tracking_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartTracking-request>) ostream)
  "Serializes a message object of type '<StartTracking-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tracking_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tracking_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tracking_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tracking_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartTracking-request>) istream)
  "Deserializes a message object of type '<StartTracking-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tracking_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tracking_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tracking_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tracking_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartTracking-request>)))
  "Returns string type for a service object of type '<StartTracking-request>"
  "realsense_person/StartTrackingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartTracking-request)))
  "Returns string type for a service object of type 'StartTracking-request"
  "realsense_person/StartTrackingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartTracking-request>)))
  "Returns md5sum for a message object of type '<StartTracking-request>"
  "7687c97d5fb7aff1fb66700f7f14766e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartTracking-request)))
  "Returns md5sum for a message object of type 'StartTracking-request"
  "7687c97d5fb7aff1fb66700f7f14766e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartTracking-request>)))
  "Returns full string definition for message of type '<StartTracking-request>"
  (cl:format cl:nil "uint32 tracking_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartTracking-request)))
  "Returns full string definition for message of type 'StartTracking-request"
  (cl:format cl:nil "uint32 tracking_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartTracking-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartTracking-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StartTracking-request
    (cl:cons ':tracking_id (tracking_id msg))
))
;//! \htmlinclude StartTracking-response.msg.html

(cl:defclass <StartTracking-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass StartTracking-response (<StartTracking-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartTracking-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartTracking-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_person-srv:<StartTracking-response> is deprecated: use realsense_person-srv:StartTracking-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <StartTracking-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-srv:status-val is deprecated.  Use realsense_person-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'status_desc-val :lambda-list '(m))
(cl:defmethod status_desc-val ((m <StartTracking-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-srv:status_desc-val is deprecated.  Use realsense_person-srv:status_desc instead.")
  (status_desc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartTracking-response>) ostream)
  "Serializes a message object of type '<StartTracking-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartTracking-response>) istream)
  "Deserializes a message object of type '<StartTracking-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartTracking-response>)))
  "Returns string type for a service object of type '<StartTracking-response>"
  "realsense_person/StartTrackingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartTracking-response)))
  "Returns string type for a service object of type 'StartTracking-response"
  "realsense_person/StartTrackingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartTracking-response>)))
  "Returns md5sum for a message object of type '<StartTracking-response>"
  "7687c97d5fb7aff1fb66700f7f14766e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartTracking-response)))
  "Returns md5sum for a message object of type 'StartTracking-response"
  "7687c97d5fb7aff1fb66700f7f14766e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartTracking-response>)))
  "Returns full string definition for message of type '<StartTracking-response>"
  (cl:format cl:nil "int32 status~%string status_desc~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartTracking-response)))
  "Returns full string definition for message of type 'StartTracking-response"
  (cl:format cl:nil "int32 status~%string status_desc~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartTracking-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'status_desc))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartTracking-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StartTracking-response
    (cl:cons ':status (status msg))
    (cl:cons ':status_desc (status_desc msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StartTracking)))
  'StartTracking-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StartTracking)))
  'StartTracking-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartTracking)))
  "Returns string type for a service object of type '<StartTracking>"
  "realsense_person/StartTracking")