; Auto-generated. Do not edit!


(cl:in-package backend-msg)


;//! \htmlinclude Persons.msg.html

(cl:defclass <Persons> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (persons
    :reader persons
    :initarg :persons
    :type (cl:vector backend-msg:Person)
   :initform (cl:make-array 0 :element-type 'backend-msg:Person :initial-element (cl:make-instance 'backend-msg:Person))))
)

(cl:defclass Persons (<Persons>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Persons>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Persons)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name backend-msg:<Persons> is deprecated: use backend-msg:Persons instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Persons>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader backend-msg:header-val is deprecated.  Use backend-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'persons-val :lambda-list '(m))
(cl:defmethod persons-val ((m <Persons>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader backend-msg:persons-val is deprecated.  Use backend-msg:persons instead.")
  (persons m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Persons>) ostream)
  "Serializes a message object of type '<Persons>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'persons))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'persons))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Persons>) istream)
  "Deserializes a message object of type '<Persons>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'persons) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'persons)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'backend-msg:Person))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Persons>)))
  "Returns string type for a message object of type '<Persons>"
  "backend/Persons")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Persons)))
  "Returns string type for a message object of type 'Persons"
  "backend/Persons")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Persons>)))
  "Returns md5sum for a message object of type '<Persons>"
  "d5b944881aa3cb9c1850cb3389c83c1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Persons)))
  "Returns md5sum for a message object of type 'Persons"
  "d5b944881aa3cb9c1850cb3389c83c1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Persons>)))
  "Returns full string definition for message of type '<Persons>"
  (cl:format cl:nil "# The standard ROS message contains a header.~%# There can be multiple people in a frame.~%# Hence we created an array of a person.~%# We should name this array as people.~%# However, for me, while coding persons~%# make much more sense as it resembles~%# the data structure array.~%Header header~%Person[] persons ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: backend/Person~%# A person has some body parts. That is why we have created~%# an array of body parts.~%int16 stationID~%int16 sensorID~%Bodypart[] bodyParts ~%~%================================================================================~%MSG: backend/Bodypart~%# The location and score of body parts are stored in a float array.~%# Therefore we are using 32 bits instead of 64 bits.~%# src: https://github.com/CMU-Perceptual-Computing-Lab/openpose/blob/master/include/openpose/core/datum.hpp~%float32 score~%Pixel pixel~%geometry_msgs/Point32 point ~%~%================================================================================~%MSG: backend/Pixel~%# The location and score of body parts are stored in a float array.~%# Therefore we are using 32 bits instead of 64 bits.~%# src: https://github.com/CMU-Perceptual-Computing-Lab/openpose/blob/master/include/openpose/core/datum.hpp~%# The location has been resized to the desired output~%# resolution (e.g., `resolution` flag in the demo).~%float32 x~%float32 y ~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Persons)))
  "Returns full string definition for message of type 'Persons"
  (cl:format cl:nil "# The standard ROS message contains a header.~%# There can be multiple people in a frame.~%# Hence we created an array of a person.~%# We should name this array as people.~%# However, for me, while coding persons~%# make much more sense as it resembles~%# the data structure array.~%Header header~%Person[] persons ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: backend/Person~%# A person has some body parts. That is why we have created~%# an array of body parts.~%int16 stationID~%int16 sensorID~%Bodypart[] bodyParts ~%~%================================================================================~%MSG: backend/Bodypart~%# The location and score of body parts are stored in a float array.~%# Therefore we are using 32 bits instead of 64 bits.~%# src: https://github.com/CMU-Perceptual-Computing-Lab/openpose/blob/master/include/openpose/core/datum.hpp~%float32 score~%Pixel pixel~%geometry_msgs/Point32 point ~%~%================================================================================~%MSG: backend/Pixel~%# The location and score of body parts are stored in a float array.~%# Therefore we are using 32 bits instead of 64 bits.~%# src: https://github.com/CMU-Perceptual-Computing-Lab/openpose/blob/master/include/openpose/core/datum.hpp~%# The location has been resized to the desired output~%# resolution (e.g., `resolution` flag in the demo).~%float32 x~%float32 y ~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Persons>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'persons) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Persons>))
  "Converts a ROS message object to a list"
  (cl:list 'Persons
    (cl:cons ':header (header msg))
    (cl:cons ':persons (persons msg))
))
