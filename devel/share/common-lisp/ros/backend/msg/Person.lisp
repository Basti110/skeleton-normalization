; Auto-generated. Do not edit!


(cl:in-package backend-msg)


;//! \htmlinclude Person.msg.html

(cl:defclass <Person> (roslisp-msg-protocol:ros-message)
  ((stationID
    :reader stationID
    :initarg :stationID
    :type cl:fixnum
    :initform 0)
   (sensorID
    :reader sensorID
    :initarg :sensorID
    :type cl:fixnum
    :initform 0)
   (bodyParts
    :reader bodyParts
    :initarg :bodyParts
    :type (cl:vector backend-msg:Bodypart)
   :initform (cl:make-array 0 :element-type 'backend-msg:Bodypart :initial-element (cl:make-instance 'backend-msg:Bodypart))))
)

(cl:defclass Person (<Person>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Person>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Person)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name backend-msg:<Person> is deprecated: use backend-msg:Person instead.")))

(cl:ensure-generic-function 'stationID-val :lambda-list '(m))
(cl:defmethod stationID-val ((m <Person>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader backend-msg:stationID-val is deprecated.  Use backend-msg:stationID instead.")
  (stationID m))

(cl:ensure-generic-function 'sensorID-val :lambda-list '(m))
(cl:defmethod sensorID-val ((m <Person>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader backend-msg:sensorID-val is deprecated.  Use backend-msg:sensorID instead.")
  (sensorID m))

(cl:ensure-generic-function 'bodyParts-val :lambda-list '(m))
(cl:defmethod bodyParts-val ((m <Person>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader backend-msg:bodyParts-val is deprecated.  Use backend-msg:bodyParts instead.")
  (bodyParts m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Person>) ostream)
  "Serializes a message object of type '<Person>"
  (cl:let* ((signed (cl:slot-value msg 'stationID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'sensorID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bodyParts))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bodyParts))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Person>) istream)
  "Deserializes a message object of type '<Person>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stationID) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensorID) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bodyParts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bodyParts)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'backend-msg:Bodypart))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Person>)))
  "Returns string type for a message object of type '<Person>"
  "backend/Person")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Person)))
  "Returns string type for a message object of type 'Person"
  "backend/Person")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Person>)))
  "Returns md5sum for a message object of type '<Person>"
  "19e387ec9518ddfc7ac4967934ce1516")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Person)))
  "Returns md5sum for a message object of type 'Person"
  "19e387ec9518ddfc7ac4967934ce1516")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Person>)))
  "Returns full string definition for message of type '<Person>"
  (cl:format cl:nil "# A person has some body parts. That is why we have created~%# an array of body parts.~%int16 stationID~%int16 sensorID~%Bodypart[] bodyParts ~%~%================================================================================~%MSG: backend/Bodypart~%# The location and score of body parts are stored in a float array.~%# Therefore we are using 32 bits instead of 64 bits.~%# src: https://github.com/CMU-Perceptual-Computing-Lab/openpose/blob/master/include/openpose/core/datum.hpp~%float32 score~%Pixel pixel~%geometry_msgs/Point32 point ~%~%================================================================================~%MSG: backend/Pixel~%# The location and score of body parts are stored in a float array.~%# Therefore we are using 32 bits instead of 64 bits.~%# src: https://github.com/CMU-Perceptual-Computing-Lab/openpose/blob/master/include/openpose/core/datum.hpp~%# The location has been resized to the desired output~%# resolution (e.g., `resolution` flag in the demo).~%float32 x~%float32 y ~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Person)))
  "Returns full string definition for message of type 'Person"
  (cl:format cl:nil "# A person has some body parts. That is why we have created~%# an array of body parts.~%int16 stationID~%int16 sensorID~%Bodypart[] bodyParts ~%~%================================================================================~%MSG: backend/Bodypart~%# The location and score of body parts are stored in a float array.~%# Therefore we are using 32 bits instead of 64 bits.~%# src: https://github.com/CMU-Perceptual-Computing-Lab/openpose/blob/master/include/openpose/core/datum.hpp~%float32 score~%Pixel pixel~%geometry_msgs/Point32 point ~%~%================================================================================~%MSG: backend/Pixel~%# The location and score of body parts are stored in a float array.~%# Therefore we are using 32 bits instead of 64 bits.~%# src: https://github.com/CMU-Perceptual-Computing-Lab/openpose/blob/master/include/openpose/core/datum.hpp~%# The location has been resized to the desired output~%# resolution (e.g., `resolution` flag in the demo).~%float32 x~%float32 y ~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Person>))
  (cl:+ 0
     2
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bodyParts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Person>))
  "Converts a ROS message object to a list"
  (cl:list 'Person
    (cl:cons ':stationID (stationID msg))
    (cl:cons ':sensorID (sensorID msg))
    (cl:cons ':bodyParts (bodyParts msg))
))
