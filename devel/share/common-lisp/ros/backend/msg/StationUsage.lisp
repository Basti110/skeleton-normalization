; Auto-generated. Do not edit!


(cl:in-package backend-msg)


;//! \htmlinclude StationUsage.msg.html

(cl:defclass <StationUsage> (roslisp-msg-protocol:ros-message)
  ((stationID
    :reader stationID
    :initarg :stationID
    :type cl:fixnum
    :initform 0)
   (isActive
    :reader isActive
    :initarg :isActive
    :type cl:boolean
    :initform cl:nil)
   (exerciseName
    :reader exerciseName
    :initarg :exerciseName
    :type cl:string
    :initform ""))
)

(cl:defclass StationUsage (<StationUsage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StationUsage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StationUsage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name backend-msg:<StationUsage> is deprecated: use backend-msg:StationUsage instead.")))

(cl:ensure-generic-function 'stationID-val :lambda-list '(m))
(cl:defmethod stationID-val ((m <StationUsage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader backend-msg:stationID-val is deprecated.  Use backend-msg:stationID instead.")
  (stationID m))

(cl:ensure-generic-function 'isActive-val :lambda-list '(m))
(cl:defmethod isActive-val ((m <StationUsage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader backend-msg:isActive-val is deprecated.  Use backend-msg:isActive instead.")
  (isActive m))

(cl:ensure-generic-function 'exerciseName-val :lambda-list '(m))
(cl:defmethod exerciseName-val ((m <StationUsage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader backend-msg:exerciseName-val is deprecated.  Use backend-msg:exerciseName instead.")
  (exerciseName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StationUsage>) ostream)
  "Serializes a message object of type '<StationUsage>"
  (cl:let* ((signed (cl:slot-value msg 'stationID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isActive) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'exerciseName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'exerciseName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StationUsage>) istream)
  "Deserializes a message object of type '<StationUsage>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stationID) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'isActive) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'exerciseName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'exerciseName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StationUsage>)))
  "Returns string type for a message object of type '<StationUsage>"
  "backend/StationUsage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StationUsage)))
  "Returns string type for a message object of type 'StationUsage"
  "backend/StationUsage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StationUsage>)))
  "Returns md5sum for a message object of type '<StationUsage>"
  "12c2a61b83902c2403b1b7e3d5ed1714")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StationUsage)))
  "Returns md5sum for a message object of type 'StationUsage"
  "12c2a61b83902c2403b1b7e3d5ed1714")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StationUsage>)))
  "Returns full string definition for message of type '<StationUsage>"
  (cl:format cl:nil "# This message contains information on the usage of a station and should be created upton receiving a message from a smartphone on that stateion~%# The state of a station is compromized of the following datafields~%~%int16 stationID~%bool isActive~%string exerciseName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StationUsage)))
  "Returns full string definition for message of type 'StationUsage"
  (cl:format cl:nil "# This message contains information on the usage of a station and should be created upton receiving a message from a smartphone on that stateion~%# The state of a station is compromized of the following datafields~%~%int16 stationID~%bool isActive~%string exerciseName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StationUsage>))
  (cl:+ 0
     2
     1
     4 (cl:length (cl:slot-value msg 'exerciseName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StationUsage>))
  "Converts a ROS message object to a list"
  (cl:list 'StationUsage
    (cl:cons ':stationID (stationID msg))
    (cl:cons ':isActive (isActive msg))
    (cl:cons ':exerciseName (exerciseName msg))
))
