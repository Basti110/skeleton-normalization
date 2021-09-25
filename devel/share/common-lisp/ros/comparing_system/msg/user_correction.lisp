; Auto-generated. Do not edit!


(cl:in-package comparing_system-msg)


;//! \htmlinclude user_correction.msg.html

(cl:defclass <user_correction> (roslisp-msg-protocol:ros-message)
  ((user_id
    :reader user_id
    :initarg :user_id
    :type cl:fixnum
    :initform 0)
   (repetition
    :reader repetition
    :initarg :repetition
    :type cl:fixnum
    :initform 0)
   (positive_correction
    :reader positive_correction
    :initarg :positive_correction
    :type cl:boolean
    :initform cl:nil)
   (display_text
    :reader display_text
    :initarg :display_text
    :type cl:string
    :initform ""))
)

(cl:defclass user_correction (<user_correction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <user_correction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'user_correction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name comparing_system-msg:<user_correction> is deprecated: use comparing_system-msg:user_correction instead.")))

(cl:ensure-generic-function 'user_id-val :lambda-list '(m))
(cl:defmethod user_id-val ((m <user_correction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader comparing_system-msg:user_id-val is deprecated.  Use comparing_system-msg:user_id instead.")
  (user_id m))

(cl:ensure-generic-function 'repetition-val :lambda-list '(m))
(cl:defmethod repetition-val ((m <user_correction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader comparing_system-msg:repetition-val is deprecated.  Use comparing_system-msg:repetition instead.")
  (repetition m))

(cl:ensure-generic-function 'positive_correction-val :lambda-list '(m))
(cl:defmethod positive_correction-val ((m <user_correction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader comparing_system-msg:positive_correction-val is deprecated.  Use comparing_system-msg:positive_correction instead.")
  (positive_correction m))

(cl:ensure-generic-function 'display_text-val :lambda-list '(m))
(cl:defmethod display_text-val ((m <user_correction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader comparing_system-msg:display_text-val is deprecated.  Use comparing_system-msg:display_text instead.")
  (display_text m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <user_correction>) ostream)
  "Serializes a message object of type '<user_correction>"
  (cl:let* ((signed (cl:slot-value msg 'user_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'repetition)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'positive_correction) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'display_text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'display_text))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <user_correction>) istream)
  "Deserializes a message object of type '<user_correction>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'user_id) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'repetition) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'positive_correction) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'display_text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'display_text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<user_correction>)))
  "Returns string type for a message object of type '<user_correction>"
  "comparing_system/user_correction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'user_correction)))
  "Returns string type for a message object of type 'user_correction"
  "comparing_system/user_correction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<user_correction>)))
  "Returns md5sum for a message object of type '<user_correction>"
  "f5faadefefb5d277a82a27faf3f41371")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'user_correction)))
  "Returns md5sum for a message object of type 'user_correction"
  "f5faadefefb5d277a82a27faf3f41371")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<user_correction>)))
  "Returns full string definition for message of type '<user_correction>"
  (cl:format cl:nil "# This message describes user correction information~%~%# The following structure reflects the REST API between the Comparing System and the Smtartphone App ~%# as specified under https://app.getguru.com/card/iGK7zMAT/Tech-Spec-REST-API-ComparingSystem-Smartphone-App~%# For questions, refer to Artur~%~%~%int16 user_id~%int16 repetition~%bool positive_correction~%string display_text~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'user_correction)))
  "Returns full string definition for message of type 'user_correction"
  (cl:format cl:nil "# This message describes user correction information~%~%# The following structure reflects the REST API between the Comparing System and the Smtartphone App ~%# as specified under https://app.getguru.com/card/iGK7zMAT/Tech-Spec-REST-API-ComparingSystem-Smartphone-App~%# For questions, refer to Artur~%~%~%int16 user_id~%int16 repetition~%bool positive_correction~%string display_text~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <user_correction>))
  (cl:+ 0
     2
     2
     1
     4 (cl:length (cl:slot-value msg 'display_text))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <user_correction>))
  "Converts a ROS message object to a list"
  (cl:list 'user_correction
    (cl:cons ':user_id (user_id msg))
    (cl:cons ':repetition (repetition msg))
    (cl:cons ':positive_correction (positive_correction msg))
    (cl:cons ':display_text (display_text msg))
))
