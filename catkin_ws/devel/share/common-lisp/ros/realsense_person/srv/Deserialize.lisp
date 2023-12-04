; Auto-generated. Do not edit!


(cl:in-package realsense_person-srv)


;//! \htmlinclude Deserialize-request.msg.html

(cl:defclass <Deserialize-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass Deserialize-request (<Deserialize-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Deserialize-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Deserialize-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_person-srv:<Deserialize-request> is deprecated: use realsense_person-srv:Deserialize-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Deserialize-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-srv:data-val is deprecated.  Use realsense_person-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Deserialize-request>) ostream)
  "Serializes a message object of type '<Deserialize-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Deserialize-request>) istream)
  "Deserializes a message object of type '<Deserialize-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Deserialize-request>)))
  "Returns string type for a service object of type '<Deserialize-request>"
  "realsense_person/DeserializeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Deserialize-request)))
  "Returns string type for a service object of type 'Deserialize-request"
  "realsense_person/DeserializeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Deserialize-request>)))
  "Returns md5sum for a message object of type '<Deserialize-request>"
  "494333eb6aca57aeb8eaa1906a3508ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Deserialize-request)))
  "Returns md5sum for a message object of type 'Deserialize-request"
  "494333eb6aca57aeb8eaa1906a3508ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Deserialize-request>)))
  "Returns full string definition for message of type '<Deserialize-request>"
  (cl:format cl:nil "uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Deserialize-request)))
  "Returns full string definition for message of type 'Deserialize-request"
  (cl:format cl:nil "uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Deserialize-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Deserialize-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Deserialize-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude Deserialize-response.msg.html

(cl:defclass <Deserialize-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Deserialize-response (<Deserialize-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Deserialize-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Deserialize-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_person-srv:<Deserialize-response> is deprecated: use realsense_person-srv:Deserialize-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Deserialize-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_person-srv:success-val is deprecated.  Use realsense_person-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Deserialize-response>) ostream)
  "Serializes a message object of type '<Deserialize-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Deserialize-response>) istream)
  "Deserializes a message object of type '<Deserialize-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Deserialize-response>)))
  "Returns string type for a service object of type '<Deserialize-response>"
  "realsense_person/DeserializeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Deserialize-response)))
  "Returns string type for a service object of type 'Deserialize-response"
  "realsense_person/DeserializeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Deserialize-response>)))
  "Returns md5sum for a message object of type '<Deserialize-response>"
  "494333eb6aca57aeb8eaa1906a3508ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Deserialize-response)))
  "Returns md5sum for a message object of type 'Deserialize-response"
  "494333eb6aca57aeb8eaa1906a3508ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Deserialize-response>)))
  "Returns full string definition for message of type '<Deserialize-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Deserialize-response)))
  "Returns full string definition for message of type 'Deserialize-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Deserialize-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Deserialize-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Deserialize-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Deserialize)))
  'Deserialize-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Deserialize)))
  'Deserialize-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Deserialize)))
  "Returns string type for a service object of type '<Deserialize>"
  "realsense_person/Deserialize")