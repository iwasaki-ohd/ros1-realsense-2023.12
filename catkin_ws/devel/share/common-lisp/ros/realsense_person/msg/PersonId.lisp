; Auto-generated. Do not edit!


(cl:in-package realsense_person-msg)


;//! \htmlinclude PersonId.msg.html

(cl:defclass <PersonId> (roslisp-msg-protocol:ros-message)
  ((tracking_id
    :reader tracking_id
    :initarg :tracking_id
    :type cl:integer
    :initform 0)
   (recognition_id
    :reader recognition_id
    :initarg :recognition_id
    :type cl:integer
    :initform 0)
   (recognition_name
    :reader recognition_name
    :initarg :recognition_name
    :type cl:string
    :initform ""))
)

(cl:defclass PersonId (<PersonId>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PersonId>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PersonId)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_person-msg:<PersonId> is deprecated: use realsense_person-msg:PersonId instead.")))

(cl:ensure-generic-function 'tracking_id-val :lambda-list '(m))
(cl:defmethod tracking_id-val ((m <PersonId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-msg:tracking_id-val is deprecated.  Use realsense_person-msg:tracking_id instead.")
  (tracking_id m))

(cl:ensure-generic-function 'recognition_id-val :lambda-list '(m))
(cl:defmethod recognition_id-val ((m <PersonId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-msg:recognition_id-val is deprecated.  Use realsense_person-msg:recognition_id instead.")
  (recognition_id m))

(cl:ensure-generic-function 'recognition_name-val :lambda-list '(m))
(cl:defmethod recognition_name-val ((m <PersonId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-msg:recognition_name-val is deprecated.  Use realsense_person-msg:recognition_name instead.")
  (recognition_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PersonId>) ostream)
  "Serializes a message object of type '<PersonId>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'recognition_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'recognition_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PersonId>) istream)
  "Deserializes a message object of type '<PersonId>"
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'recognition_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'recognition_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PersonId>)))
  "Returns string type for a message object of type '<PersonId>"
  "realsense_person/PersonId")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PersonId)))
  "Returns string type for a message object of type 'PersonId"
  "realsense_person/PersonId")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PersonId>)))
  "Returns md5sum for a message object of type '<PersonId>"
  "a5eb5b111f0e9bfed7be82e0b5f5a69a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PersonId)))
  "Returns md5sum for a message object of type 'PersonId"
  "a5eb5b111f0e9bfed7be82e0b5f5a69a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PersonId>)))
  "Returns full string definition for message of type '<PersonId>"
  (cl:format cl:nil "uint32 tracking_id~%int32 recognition_id         #currently not populated.~%string recognition_name      #placeholder in case application associates a name to the recognition_id. ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PersonId)))
  "Returns full string definition for message of type 'PersonId"
  (cl:format cl:nil "uint32 tracking_id~%int32 recognition_id         #currently not populated.~%string recognition_name      #placeholder in case application associates a name to the recognition_id. ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PersonId>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'recognition_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PersonId>))
  "Converts a ROS message object to a list"
  (cl:list 'PersonId
    (cl:cons ':tracking_id (tracking_id msg))
    (cl:cons ':recognition_id (recognition_id msg))
    (cl:cons ':recognition_name (recognition_name msg))
))
