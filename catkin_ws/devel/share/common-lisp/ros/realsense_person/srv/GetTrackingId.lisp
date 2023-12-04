; Auto-generated. Do not edit!


(cl:in-package realsense_person-srv)


;//! \htmlinclude GetTrackingId-request.msg.html

(cl:defclass <GetTrackingId-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetTrackingId-request (<GetTrackingId-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTrackingId-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTrackingId-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_person-srv:<GetTrackingId-request> is deprecated: use realsense_person-srv:GetTrackingId-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTrackingId-request>) ostream)
  "Serializes a message object of type '<GetTrackingId-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTrackingId-request>) istream)
  "Deserializes a message object of type '<GetTrackingId-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTrackingId-request>)))
  "Returns string type for a service object of type '<GetTrackingId-request>"
  "realsense_person/GetTrackingIdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTrackingId-request)))
  "Returns string type for a service object of type 'GetTrackingId-request"
  "realsense_person/GetTrackingIdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTrackingId-request>)))
  "Returns md5sum for a message object of type '<GetTrackingId-request>"
  "20a696d550f9aee4109fc97b5b8cd0b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTrackingId-request)))
  "Returns md5sum for a message object of type 'GetTrackingId-request"
  "20a696d550f9aee4109fc97b5b8cd0b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTrackingId-request>)))
  "Returns full string definition for message of type '<GetTrackingId-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTrackingId-request)))
  "Returns full string definition for message of type 'GetTrackingId-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTrackingId-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTrackingId-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTrackingId-request
))
;//! \htmlinclude GetTrackingId-response.msg.html

(cl:defclass <GetTrackingId-response> (roslisp-msg-protocol:ros-message)
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
   (detected_person_count
    :reader detected_person_count
    :initarg :detected_person_count
    :type cl:integer
    :initform 0)
   (tracking_ids
    :reader tracking_ids
    :initarg :tracking_ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass GetTrackingId-response (<GetTrackingId-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTrackingId-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTrackingId-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_person-srv:<GetTrackingId-response> is deprecated: use realsense_person-srv:GetTrackingId-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GetTrackingId-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-srv:status-val is deprecated.  Use realsense_person-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'status_desc-val :lambda-list '(m))
(cl:defmethod status_desc-val ((m <GetTrackingId-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-srv:status_desc-val is deprecated.  Use realsense_person-srv:status_desc instead.")
  (status_desc m))

(cl:ensure-generic-function 'detected_person_count-val :lambda-list '(m))
(cl:defmethod detected_person_count-val ((m <GetTrackingId-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-srv:detected_person_count-val is deprecated.  Use realsense_person-srv:detected_person_count instead.")
  (detected_person_count m))

(cl:ensure-generic-function 'tracking_ids-val :lambda-list '(m))
(cl:defmethod tracking_ids-val ((m <GetTrackingId-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-srv:tracking_ids-val is deprecated.  Use realsense_person-srv:tracking_ids instead.")
  (tracking_ids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTrackingId-response>) ostream)
  "Serializes a message object of type '<GetTrackingId-response>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'detected_person_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'detected_person_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'detected_person_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'detected_person_count)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tracking_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'tracking_ids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTrackingId-response>) istream)
  "Deserializes a message object of type '<GetTrackingId-response>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'detected_person_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'detected_person_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'detected_person_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'detected_person_count)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tracking_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tracking_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTrackingId-response>)))
  "Returns string type for a service object of type '<GetTrackingId-response>"
  "realsense_person/GetTrackingIdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTrackingId-response)))
  "Returns string type for a service object of type 'GetTrackingId-response"
  "realsense_person/GetTrackingIdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTrackingId-response>)))
  "Returns md5sum for a message object of type '<GetTrackingId-response>"
  "20a696d550f9aee4109fc97b5b8cd0b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTrackingId-response)))
  "Returns md5sum for a message object of type 'GetTrackingId-response"
  "20a696d550f9aee4109fc97b5b8cd0b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTrackingId-response>)))
  "Returns full string definition for message of type '<GetTrackingId-response>"
  (cl:format cl:nil "int32 status~%string status_desc~%uint32 detected_person_count~%uint32[] tracking_ids #list of tracking_ids of detected people~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTrackingId-response)))
  "Returns full string definition for message of type 'GetTrackingId-response"
  (cl:format cl:nil "int32 status~%string status_desc~%uint32 detected_person_count~%uint32[] tracking_ids #list of tracking_ids of detected people~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTrackingId-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'status_desc))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tracking_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTrackingId-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTrackingId-response
    (cl:cons ':status (status msg))
    (cl:cons ':status_desc (status_desc msg))
    (cl:cons ':detected_person_count (detected_person_count msg))
    (cl:cons ':tracking_ids (tracking_ids msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTrackingId)))
  'GetTrackingId-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTrackingId)))
  'GetTrackingId-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTrackingId)))
  "Returns string type for a service object of type '<GetTrackingId>"
  "realsense_person/GetTrackingId")