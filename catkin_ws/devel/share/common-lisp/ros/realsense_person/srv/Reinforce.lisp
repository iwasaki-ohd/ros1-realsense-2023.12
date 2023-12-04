; Auto-generated. Do not edit!


(cl:in-package realsense_person-srv)


;//! \htmlinclude Reinforce-request.msg.html

(cl:defclass <Reinforce-request> (roslisp-msg-protocol:ros-message)
  ((tracking_id
    :reader tracking_id
    :initarg :tracking_id
    :type cl:integer
    :initform 0)
   (recognition_id
    :reader recognition_id
    :initarg :recognition_id
    :type cl:integer
    :initform 0))
)

(cl:defclass Reinforce-request (<Reinforce-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Reinforce-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Reinforce-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_person-srv:<Reinforce-request> is deprecated: use realsense_person-srv:Reinforce-request instead.")))

(cl:ensure-generic-function 'tracking_id-val :lambda-list '(m))
(cl:defmethod tracking_id-val ((m <Reinforce-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-srv:tracking_id-val is deprecated.  Use realsense_person-srv:tracking_id instead.")
  (tracking_id m))

(cl:ensure-generic-function 'recognition_id-val :lambda-list '(m))
(cl:defmethod recognition_id-val ((m <Reinforce-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-srv:recognition_id-val is deprecated.  Use realsense_person-srv:recognition_id instead.")
  (recognition_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Reinforce-request>) ostream)
  "Serializes a message object of type '<Reinforce-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tracking_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tracking_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tracking_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tracking_id)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'recognition_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Reinforce-request>) istream)
  "Deserializes a message object of type '<Reinforce-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tracking_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tracking_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tracking_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tracking_id)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'recognition_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Reinforce-request>)))
  "Returns string type for a service object of type '<Reinforce-request>"
  "realsense_person/ReinforceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Reinforce-request)))
  "Returns string type for a service object of type 'Reinforce-request"
  "realsense_person/ReinforceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Reinforce-request>)))
  "Returns md5sum for a message object of type '<Reinforce-request>"
  "2b7c244f8f3a54458eeafecb4a88c517")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Reinforce-request)))
  "Returns md5sum for a message object of type 'Reinforce-request"
  "2b7c244f8f3a54458eeafecb4a88c517")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Reinforce-request>)))
  "Returns full string definition for message of type '<Reinforce-request>"
  (cl:format cl:nil "uint32 tracking_id~%int32 recognition_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Reinforce-request)))
  "Returns full string definition for message of type 'Reinforce-request"
  (cl:format cl:nil "uint32 tracking_id~%int32 recognition_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Reinforce-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Reinforce-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Reinforce-request
    (cl:cons ':tracking_id (tracking_id msg))
    (cl:cons ':recognition_id (recognition_id msg))
))
;//! \htmlinclude Reinforce-response.msg.html

(cl:defclass <Reinforce-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Reinforce-response (<Reinforce-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Reinforce-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Reinforce-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_person-srv:<Reinforce-response> is deprecated: use realsense_person-srv:Reinforce-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Reinforce-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-srv:status-val is deprecated.  Use realsense_person-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'status_desc-val :lambda-list '(m))
(cl:defmethod status_desc-val ((m <Reinforce-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-srv:status_desc-val is deprecated.  Use realsense_person-srv:status_desc instead.")
  (status_desc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Reinforce-response>) ostream)
  "Serializes a message object of type '<Reinforce-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Reinforce-response>) istream)
  "Deserializes a message object of type '<Reinforce-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Reinforce-response>)))
  "Returns string type for a service object of type '<Reinforce-response>"
  "realsense_person/ReinforceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Reinforce-response)))
  "Returns string type for a service object of type 'Reinforce-response"
  "realsense_person/ReinforceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Reinforce-response>)))
  "Returns md5sum for a message object of type '<Reinforce-response>"
  "2b7c244f8f3a54458eeafecb4a88c517")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Reinforce-response)))
  "Returns md5sum for a message object of type 'Reinforce-response"
  "2b7c244f8f3a54458eeafecb4a88c517")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Reinforce-response>)))
  "Returns full string definition for message of type '<Reinforce-response>"
  (cl:format cl:nil "int32 status~%string status_desc~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Reinforce-response)))
  "Returns full string definition for message of type 'Reinforce-response"
  (cl:format cl:nil "int32 status~%string status_desc~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Reinforce-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'status_desc))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Reinforce-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Reinforce-response
    (cl:cons ':status (status msg))
    (cl:cons ':status_desc (status_desc msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Reinforce)))
  'Reinforce-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Reinforce)))
  'Reinforce-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Reinforce)))
  "Returns string type for a service object of type '<Reinforce>"
  "realsense_person/Reinforce")