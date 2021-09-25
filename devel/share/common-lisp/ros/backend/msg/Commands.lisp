; Auto-generated. Do not edit!


(cl:in-package backend-msg)


;//! \htmlinclude Commands.msg.html

(cl:defclass <Commands> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass Commands (<Commands>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Commands>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Commands)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name backend-msg:<Commands> is deprecated: use backend-msg:Commands instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Commands>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader backend-msg:header-val is deprecated.  Use backend-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Commands>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader backend-msg:data-val is deprecated.  Use backend-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Commands>) ostream)
  "Serializes a message object of type '<Commands>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Commands>) istream)
  "Deserializes a message object of type '<Commands>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Commands>)))
  "Returns string type for a message object of type '<Commands>"
  "backend/Commands")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Commands)))
  "Returns string type for a message object of type 'Commands"
  "backend/Commands")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Commands>)))
  "Returns md5sum for a message object of type '<Commands>"
  "c99a9440709e4d4a9716d55b8270d5e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Commands)))
  "Returns md5sum for a message object of type 'Commands"
  "c99a9440709e4d4a9716d55b8270d5e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Commands>)))
  "Returns full string definition for message of type '<Commands>"
  (cl:format cl:nil "# The location and score of body parts are stored in a float array.~%# Therefore we are using 32 bits instead of 64 bits.~%# src: https://github.com/CMU-Perceptual-Computing-Lab/openpose/blob/master/include/openpose/core/datum.hpp~%# The location has been resized to the desired output~%# resolution (e.g., `resolution` flag in the demo).~%~%Header header~%string data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Commands)))
  "Returns full string definition for message of type 'Commands"
  (cl:format cl:nil "# The location and score of body parts are stored in a float array.~%# Therefore we are using 32 bits instead of 64 bits.~%# src: https://github.com/CMU-Perceptual-Computing-Lab/openpose/blob/master/include/openpose/core/datum.hpp~%# The location has been resized to the desired output~%# resolution (e.g., `resolution` flag in the demo).~%~%Header header~%string data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Commands>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Commands>))
  "Converts a ROS message object to a list"
  (cl:list 'Commands
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
))
