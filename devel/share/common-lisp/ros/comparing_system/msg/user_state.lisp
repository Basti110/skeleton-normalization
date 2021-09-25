; Auto-generated. Do not edit!


(cl:in-package comparing_system-msg)


;//! \htmlinclude user_state.msg.html

(cl:defclass <user_state> (roslisp-msg-protocol:ros-message)
  ((user_id
    :reader user_id
    :initarg :user_id
    :type cl:fixnum
    :initform 0)
   (current_exercise_name
    :reader current_exercise_name
    :initarg :current_exercise_name
    :type cl:string
    :initform "")
   (repetitions
    :reader repetitions
    :initarg :repetitions
    :type cl:fixnum
    :initform 0)
   (seconds_since_last_exercise_start
    :reader seconds_since_last_exercise_start
    :initarg :seconds_since_last_exercise_start
    :type cl:fixnum
    :initform 0)
   (milliseconds_since_last_repetition
    :reader milliseconds_since_last_repetition
    :initarg :milliseconds_since_last_repetition
    :type cl:integer
    :initform 0)
   (repetition_score
    :reader repetition_score
    :initarg :repetition_score
    :type cl:fixnum
    :initform 0)
   (exercise_score
    :reader exercise_score
    :initarg :exercise_score
    :type cl:fixnum
    :initform 0)
   (user_position
    :reader user_position
    :initarg :user_position
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32)))
)

(cl:defclass user_state (<user_state>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <user_state>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'user_state)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name comparing_system-msg:<user_state> is deprecated: use comparing_system-msg:user_state instead.")))

(cl:ensure-generic-function 'user_id-val :lambda-list '(m))
(cl:defmethod user_id-val ((m <user_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader comparing_system-msg:user_id-val is deprecated.  Use comparing_system-msg:user_id instead.")
  (user_id m))

(cl:ensure-generic-function 'current_exercise_name-val :lambda-list '(m))
(cl:defmethod current_exercise_name-val ((m <user_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader comparing_system-msg:current_exercise_name-val is deprecated.  Use comparing_system-msg:current_exercise_name instead.")
  (current_exercise_name m))

(cl:ensure-generic-function 'repetitions-val :lambda-list '(m))
(cl:defmethod repetitions-val ((m <user_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader comparing_system-msg:repetitions-val is deprecated.  Use comparing_system-msg:repetitions instead.")
  (repetitions m))

(cl:ensure-generic-function 'seconds_since_last_exercise_start-val :lambda-list '(m))
(cl:defmethod seconds_since_last_exercise_start-val ((m <user_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader comparing_system-msg:seconds_since_last_exercise_start-val is deprecated.  Use comparing_system-msg:seconds_since_last_exercise_start instead.")
  (seconds_since_last_exercise_start m))

(cl:ensure-generic-function 'milliseconds_since_last_repetition-val :lambda-list '(m))
(cl:defmethod milliseconds_since_last_repetition-val ((m <user_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader comparing_system-msg:milliseconds_since_last_repetition-val is deprecated.  Use comparing_system-msg:milliseconds_since_last_repetition instead.")
  (milliseconds_since_last_repetition m))

(cl:ensure-generic-function 'repetition_score-val :lambda-list '(m))
(cl:defmethod repetition_score-val ((m <user_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader comparing_system-msg:repetition_score-val is deprecated.  Use comparing_system-msg:repetition_score instead.")
  (repetition_score m))

(cl:ensure-generic-function 'exercise_score-val :lambda-list '(m))
(cl:defmethod exercise_score-val ((m <user_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader comparing_system-msg:exercise_score-val is deprecated.  Use comparing_system-msg:exercise_score instead.")
  (exercise_score m))

(cl:ensure-generic-function 'user_position-val :lambda-list '(m))
(cl:defmethod user_position-val ((m <user_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader comparing_system-msg:user_position-val is deprecated.  Use comparing_system-msg:user_position instead.")
  (user_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <user_state>) ostream)
  "Serializes a message object of type '<user_state>"
  (cl:let* ((signed (cl:slot-value msg 'user_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_exercise_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_exercise_name))
  (cl:let* ((signed (cl:slot-value msg 'repetitions)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'seconds_since_last_exercise_start)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'milliseconds_since_last_repetition)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'repetition_score)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'exercise_score)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'user_position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <user_state>) istream)
  "Deserializes a message object of type '<user_state>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'user_id) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_exercise_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_exercise_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'repetitions) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'seconds_since_last_exercise_start) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'milliseconds_since_last_repetition) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'repetition_score) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'exercise_score) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'user_position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<user_state>)))
  "Returns string type for a message object of type '<user_state>"
  "comparing_system/user_state")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'user_state)))
  "Returns string type for a message object of type 'user_state"
  "comparing_system/user_state")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<user_state>)))
  "Returns md5sum for a message object of type '<user_state>"
  "0fabb7a9dd8f513916aacb089a33f4ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'user_state)))
  "Returns md5sum for a message object of type 'user_state"
  "0fabb7a9dd8f513916aacb089a33f4ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<user_state>)))
  "Returns full string definition for message of type '<user_state>"
  (cl:format cl:nil "# This message describes user correction information~%~%# The following structure reflects the REST API between the Comparing System and the Smtartphone App ~%# as specified under https://app.getguru.com/card/iGK7zMAT/Tech-Spec-REST-API-ComparingSystem-Smartphone-App~%# For questions, refer to Artur~%~%~%int16 user_id~%string current_exercise_name~%int16 repetitions~%int16 seconds_since_last_exercise_start~%int32 milliseconds_since_last_repetition~%int8 repetition_score~%int8 exercise_score~%geometry_msgs/Point32 user_position~%~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'user_state)))
  "Returns full string definition for message of type 'user_state"
  (cl:format cl:nil "# This message describes user correction information~%~%# The following structure reflects the REST API between the Comparing System and the Smtartphone App ~%# as specified under https://app.getguru.com/card/iGK7zMAT/Tech-Spec-REST-API-ComparingSystem-Smartphone-App~%# For questions, refer to Artur~%~%~%int16 user_id~%string current_exercise_name~%int16 repetitions~%int16 seconds_since_last_exercise_start~%int32 milliseconds_since_last_repetition~%int8 repetition_score~%int8 exercise_score~%geometry_msgs/Point32 user_position~%~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <user_state>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'current_exercise_name))
     2
     2
     4
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'user_position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <user_state>))
  "Converts a ROS message object to a list"
  (cl:list 'user_state
    (cl:cons ':user_id (user_id msg))
    (cl:cons ':current_exercise_name (current_exercise_name msg))
    (cl:cons ':repetitions (repetitions msg))
    (cl:cons ':seconds_since_last_exercise_start (seconds_since_last_exercise_start msg))
    (cl:cons ':milliseconds_since_last_repetition (milliseconds_since_last_repetition msg))
    (cl:cons ':repetition_score (repetition_score msg))
    (cl:cons ':exercise_score (exercise_score msg))
    (cl:cons ':user_position (user_position msg))
))
