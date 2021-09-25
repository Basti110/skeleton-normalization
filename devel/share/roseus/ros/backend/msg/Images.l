;; Auto-generated. Do not edit!


(when (boundp 'backend::Images)
  (if (not (find-package "BACKEND"))
    (make-package "BACKEND"))
  (shadow 'Images (find-package "BACKEND")))
(unless (find-package "BACKEND::IMAGES")
  (make-package "BACKEND::IMAGES"))

(in-package "ROS")
;;//! \htmlinclude Images.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass backend::Images
  :super ros::object
  :slots (_number _img1 _img2 _img3 _img4 ))

(defmethod backend::Images
  (:init
   (&key
    ((:number __number) 0)
    ((:img1 __img1) (instance sensor_msgs::Image :init))
    ((:img2 __img2) (instance sensor_msgs::Image :init))
    ((:img3 __img3) (instance sensor_msgs::Image :init))
    ((:img4 __img4) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _number (round __number))
   (setq _img1 __img1)
   (setq _img2 __img2)
   (setq _img3 __img3)
   (setq _img4 __img4)
   self)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:img1
   (&rest __img1)
   (if (keywordp (car __img1))
       (send* _img1 __img1)
     (progn
       (if __img1 (setq _img1 (car __img1)))
       _img1)))
  (:img2
   (&rest __img2)
   (if (keywordp (car __img2))
       (send* _img2 __img2)
     (progn
       (if __img2 (setq _img2 (car __img2)))
       _img2)))
  (:img3
   (&rest __img3)
   (if (keywordp (car __img3))
       (send* _img3 __img3)
     (progn
       (if __img3 (setq _img3 (car __img3)))
       _img3)))
  (:img4
   (&rest __img4)
   (if (keywordp (car __img4))
       (send* _img4 __img4)
     (progn
       (if __img4 (setq _img4 (car __img4)))
       _img4)))
  (:serialization-length
   ()
   (+
    ;; int16 _number
    2
    ;; sensor_msgs/Image _img1
    (send _img1 :serialization-length)
    ;; sensor_msgs/Image _img2
    (send _img2 :serialization-length)
    ;; sensor_msgs/Image _img3
    (send _img3 :serialization-length)
    ;; sensor_msgs/Image _img4
    (send _img4 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _number
       (write-word _number s)
     ;; sensor_msgs/Image _img1
       (send _img1 :serialize s)
     ;; sensor_msgs/Image _img2
       (send _img2 :serialize s)
     ;; sensor_msgs/Image _img3
       (send _img3 :serialize s)
     ;; sensor_msgs/Image _img4
       (send _img4 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _number
     (setq _number (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; sensor_msgs/Image _img1
     (send _img1 :deserialize buf ptr-) (incf ptr- (send _img1 :serialization-length))
   ;; sensor_msgs/Image _img2
     (send _img2 :deserialize buf ptr-) (incf ptr- (send _img2 :serialization-length))
   ;; sensor_msgs/Image _img3
     (send _img3 :deserialize buf ptr-) (incf ptr- (send _img3 :serialization-length))
   ;; sensor_msgs/Image _img4
     (send _img4 :deserialize buf ptr-) (incf ptr- (send _img4 :serialization-length))
   ;;
   self)
  )

(setf (get backend::Images :md5sum-) "4083fda66ae96557bfd28f8a92b13da6")
(setf (get backend::Images :datatype-) "backend/Images")
(setf (get backend::Images :definition-)
      "int16 number
sensor_msgs/Image img1
sensor_msgs/Image img2
sensor_msgs/Image img3
sensor_msgs/Image img4

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :backend/Images "4083fda66ae96557bfd28f8a92b13da6")


