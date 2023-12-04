; Auto-generated. Do not edit!


(cl:in-package realsense_person-srv)


;//! \htmlinclude Recognize-request.msg.html

(cl:defclass <Recognize-request> (roslisp-msg-protocol:ros-message)
  ((tracking_id
    :reader tracking_id
    :initarg :tracking_id
    :type cl:integer
    :initform 0))
)

(cl:defclass Recognize-request (<Recognize-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Recognize-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Recognize-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_person-srv:<Recognize-request> is deprecated: use realsense_person-srv:Recognize-request instead.")))

(cl:ensure-generic-function 'tracking_id-val :lambda-list '(m))
(cl:defmethod tracking_id-val ((m <Recognize-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-srv:tracking_id-val is deprecated.  Use realsense_person-srv:tracking_id instead.")
  (tracking_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Recognize-request>) ostream)
  "Serializes a message object of type '<Recognize-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tracking_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tracking_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tracking_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tracking_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Recognize-request>) istream)
  "Deserializes a message object of type '<Recognize-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tracking_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tracking_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tracking_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tracking_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Recognize-request>)))
  "Returns string type for a service object of type '<Recognize-request>"
  "realsense_person/RecognizeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Recognize-request)))
  "Returns string type for a service object of type 'Recognize-request"
  "realsense_person/RecognizeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Recognize-request>)))
  "Returns md5sum for a message object of type '<Recognize-request>"
  "7775c362719a4ed09f720639398479f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Recognize-request)))
  "Returns md5sum for a message object of type 'Recognize-request"
  "7775c362719a4ed09f720639398479f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Recognize-request>)))
  "Returns full string definition for message of type '<Recognize-request>"
  (cl:format cl:nil "uint32 tracking_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Recognize-request)))
  "Returns full string definition for message of type 'Recognize-request"
  (cl:format cl:nil "uint32 tracking_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Recognize-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Recognize-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Recognize-request
    (cl:cons ':tracking_id (tracking_id msg))
))
;//! \htmlinclude Recognize-response.msg.html

(cl:defclass <Recognize-response> (roslisp-msg-protocol:ros-message)
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
    :initform 0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass Recognize-response (<Recognize-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Recognize-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Recognize-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_person-srv:<Recognize-response> is deprecated: use realsense_person-srv:Recognize-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Recognize-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-srv:status-val is deprecated.  Use realsense_person-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'status_desc-val :lambda-list '(m))
(cl:defmethod status_desc-val ((m <Recognize-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-srv:status_desc-val is deprecated.  Use realsense_person-srv:status_desc instead.")
  (status_desc m))

(cl:ensure-generic-function 'recognition_id-val :lambda-list '(m))
(cl:defmethod recognition_id-val ((m <Recognize-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-srv:recognition_id-val is deprecated.  Use realsense_person-srv:recognition_id instead.")
  (recognition_id m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <Recognize-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-srv:confidence-val is deprecated.  Use realsense_person-srv:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Recognize-response>) ostream)
  "Serializes a message object of type '<Recognize-response>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Recognize-response>) istream)
  "Deserializes a message object of type '<Recognize-response>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Recognize-response>)))
  "Returns string type for a service object of type '<Recognize-response>"
  "realsense_person/RecognizeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Recognize-response)))
  "Returns string type for a service object of type 'Recognize-response"
  "realsense_person/RecognizeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Recognize-response>)))
  "Returns md5sum for a message object of type '<Recognize-response>"
  "7775c362719a4ed09f720639398479f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Recognize-response)))
  "Returns md5sum for a message object of type 'Recognize-response"
  "7775c362719a4ed09f720639398479f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Recognize-response>)))
  "Returns full string definition for message of type '<Recognize-response>"
  (cl:format cl:nil "int32 status~%string status_desc~%int32 recognition_id~%float32 confidence~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Recognize-response)))
  "Returns full string definition for message of type 'Recognize-response"
  (cl:format cl:nil "int32 status~%string status_desc~%int32 recognition_id~%float32 confidence~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Recognize-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'status_desc))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Recognize-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Recognize-response
    (cl:cons ':status (status msg))
    (cl:cons ':status_desc (status_desc msg))
    (cl:cons ':recognition_id (recognition_id msg))
    (cl:cons ':confidence (confidence msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Recognize)))
  'Recognize-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Recognize)))
  'Recognize-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Recognize)))
  "Returns string type for a service object of type '<Recognize>"
  "realsense_person/Recognize")