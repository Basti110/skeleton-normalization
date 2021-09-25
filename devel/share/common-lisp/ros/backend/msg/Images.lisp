; Auto-generated. Do not edit!


(cl:in-package backend-msg)


;//! \htmlinclude Images.msg.html

(cl:defclass <Images> (roslisp-msg-protocol:ros-message)
  ((number
    :reader number
    :initarg :number
    :type cl:fixnum
    :initform 0)
   (img1
    :reader img1
    :initarg :img1
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (img2
    :reader img2
    :initarg :img2
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (img3
    :reader img3
    :initarg :img3
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (img4
    :reader img4
    :initarg :img4
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass Images (<Images>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Images>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Images)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name backend-msg:<Images> is deprecated: use backend-msg:Images instead.")))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <Images>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader backend-msg:number-val is deprecated.  Use backend-msg:number instead.")
  (number m))

(cl:ensure-generic-function 'img1-val :lambda-list '(m))
(cl:defmethod img1-val ((m <Images>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader backend-msg:img1-val is deprecated.  Use backend-msg:img1 instead.")
  (img1 m))

(cl:ensure-generic-function 'img2-val :lambda-list '(m))
(cl:defmethod img2-val ((m <Images>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader backend-msg:img2-val is deprecated.  Use backend-msg:img2 instead.")
  (img2 m))

(cl:ensure-generic-function 'img3-val :lambda-list '(m))
(cl:defmethod img3-val ((m <Images>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader backend-msg:img3-val is deprecated.  Use backend-msg:img3 instead.")
  (img3 m))

(cl:ensure-generic-function 'img4-val :lambda-list '(m))
(cl:defmethod img4-val ((m <Images>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader backend-msg:img4-val is deprecated.  Use backend-msg:img4 instead.")
  (img4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Images>) ostream)
  "Serializes a message object of type '<Images>"
  (cl:let* ((signed (cl:slot-value msg 'number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'img1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'img2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'img3) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'img4) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Images>) istream)
  "Deserializes a message object of type '<Images>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'img1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'img2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'img3) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'img4) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Images>)))
  "Returns string type for a message object of type '<Images>"
  "backend/Images")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Images)))
  "Returns string type for a message object of type 'Images"
  "backend/Images")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Images>)))
  "Returns md5sum for a message object of type '<Images>"
  "4083fda66ae96557bfd28f8a92b13da6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Images)))
  "Returns md5sum for a message object of type 'Images"
  "4083fda66ae96557bfd28f8a92b13da6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Images>)))
  "Returns full string definition for message of type '<Images>"
  (cl:format cl:nil "int16 number~%sensor_msgs/Image img1~%sensor_msgs/Image img2~%sensor_msgs/Image img3~%sensor_msgs/Image img4~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Images)))
  "Returns full string definition for message of type 'Images"
  (cl:format cl:nil "int16 number~%sensor_msgs/Image img1~%sensor_msgs/Image img2~%sensor_msgs/Image img3~%sensor_msgs/Image img4~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Images>))
  (cl:+ 0
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'img1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'img2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'img3))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'img4))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Images>))
  "Converts a ROS message object to a list"
  (cl:list 'Images
    (cl:cons ':number (number msg))
    (cl:cons ':img1 (img1 msg))
    (cl:cons ':img2 (img2 msg))
    (cl:cons ':img3 (img3 msg))
    (cl:cons ':img4 (img4 msg))
))
