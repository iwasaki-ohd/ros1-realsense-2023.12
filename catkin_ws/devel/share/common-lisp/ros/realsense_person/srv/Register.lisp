; Auto-generated. Do not edit!


(cl:in-package realsense_person-srv)


;//! \htmlinclude Register-request.msg.html

(cl:defclass <Register-request> (roslisp-msg-protocol:ros-message)
  ((tracking_id
    :reader tracking_id
    :initarg :tracking_id
    :type cl:integer
    :initform 0))
)

(cl:defclass Register-request (<Register-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Register-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Register-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_person-srv:<Register-request> is deprecated: use realsense_person-srv:Register-request instead.")))

(cl:ensure-generic-function 'tracking_id-val :lambda-list '(m))
(cl:defmethod tracking_id-val ((m <Register-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-srv:tracking_id-val is deprecated.  Use realsense_person-srv:tracking_id instead.")
  (tracking_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Register-request>) ostream)
  "Serializes a message object of type '<Register-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tracking_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tracking_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tracking_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tracking_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Register-request>) istream)
  "Deserializes a message object of type '<Register-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tracking_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tracking_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tracking_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tracking_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Register-request>)))
  "Returns string type for a service object of type '<Register-request>"
  "realsense_person/RegisterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Register-request)))
  "Returns string type for a service object of type 'Register-request"
  "realsense_person/RegisterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Register-request>)))
  "Returns md5sum for a message object of type '<Register-request>"
  "4b79a7657f840c1ae74654d7047749a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Register-request)))
  "Returns md5sum for a message object of type 'Register-request"
  "4b79a7657f840c1ae74654d7047749a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Register-request>)))
  "Returns full string definition for message of type '<Register-request>"
  (cl:format cl:nil "uint32 tracking_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Register-request)))
  "Returns full string definition for message of type 'Register-request"
  (cl:format cl:nil "uint32 tracking_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Register-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Register-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Register-request
    (cl:cons ':tracking_id (tracking_id msg))
))
;//! \htmlinclude Register-response.msg.html

(cl:defclass <Register-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (status_desc
    :reader status_desc
    :initarg :status_desc
    :type cl:string
    :initform "")
   (recognition_id
    :reader recognition_id
    :initarg :recognition_id
    :type cl:integer
    :initform 0))
)

(cl:defclass Register-response (<Register-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Register-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Register-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_person-srv:<Register-response> is deprecated: use realsense_person-srv:Register-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Register-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-srv:status-val is deprecated.  Use realsense_person-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'status_desc-val :lambda-list '(m))
(cl:defmethod status_desc-val ((m <Register-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-srv:status_desc-val is deprecated.  Use realsense_person-srv:status_desc instead.")
  (status_desc m))

(cl:ensure-generic-function 'recognition_id-val :lambda-list '(m))
(cl:defmethod recognition_id-val ((m <Register-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-srv:recognition_id-val is deprecated.  Use realsense_person-srv:recognition_id instead.")
  (recognition_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Register-response>) ostream)
  "Serializes a message object of type '<Register-response>"
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
  (cl:let* ((signed (cl:slot-value msg 'recognition_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Register-response>) istream)
  "Deserializes a message object of type '<Register-response>"
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'recognition_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Register-response>)))
  "Returns string type for a service object of type '<Register-response>"
  "realsense_person/RegisterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Register-response)))
  "Returns string type for a service object of type 'Register-response"
  "realsense_person/RegisterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Register-response>)))
  "Returns md5sum for a message object of type '<Register-response>"
  "4b79a7657f840c1ae74654d7047749a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Register-response)))
  "Returns md5sum for a message object of type 'Register-response"
  "4b79a7657f840c1ae74654d7047749a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Register-response>)))
  "Returns full string definition for message of type '<Register-response>"
  (cl:format cl:nil "int32 status~%string status_desc~%int32 recognition_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Register-response)))
  "Returns full string definition for message of type 'Register-response"
  (cl:format cl:nil "int32 status~%string status_desc~%int32 recognition_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Register-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'status_desc))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Register-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Register-response
    (cl:cons ':status (status msg))
    (cl:cons ':status_desc (status_desc msg))
    (cl:cons ':recognition_id (recognition_id msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Register)))
  'Register-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Register)))
  'Register-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Register)))
  "Returns string type for a service object of type '<Register>"
  "realsense_person/Register")