;; Auto-generated. Do not edit!


(when (boundp 'backend::Persons)
  (if (not (find-package "BACKEND"))
    (make-package "BACKEND"))
  (shadow 'Persons (find-package "BACKEND")))
(unless (find-package "BACKEND::PERSONS")
  (make-package "BACKEND::PERSONS"))

(in-package "ROS")
;;//! \htmlinclude Persons.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass backend::Persons
  :super ros::object
  :slots (_header _persons ))

(defmethod backend::Persons
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:persons __persons) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _persons __persons)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:persons
   (&rest __persons)
   (if (keywordp (car __persons))
       (send* _persons __persons)
     (progn
       (if __persons (setq _persons (car __persons)))
       _persons)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; backend/Person[] _persons
    (apply #'+ (send-all _persons :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; backend/Person[] _persons
     (write-long (length _persons) s)
     (dolist (elem _persons)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; backend/Person[] _persons
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _persons (let (r) (dotimes (i n) (push (instance backend::Person :init) r)) r))
     (dolist (elem- _persons)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get backend::Persons :md5sum-) "d5b944881aa3cb9c1850cb3389c83c1e")
(setf (get backend::Persons :datatype-) "backend/Persons")
(setf (get backend::Persons :definition-)
      "# The standard ROS message contains a header.
# There can be multiple people in a frame.
# Hence we created an array of a person.
# We should name this array as people.
# However, for me, while coding persons
# make much more sense as it resembles
# the data structure array.
Header header
Person[] persons 

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

================================================================================
MSG: backend/Person
# A person has some body parts. That is why we have created
# an array of body parts.
int16 stationID
int16 sensorID
Bodypart[] bodyParts 

================================================================================
MSG: backend/Bodypart
# The location and score of body parts are stored in a float array.
# Therefore we are using 32 bits instead of 64 bits.
# src: https://github.com/CMU-Perceptual-Computing-Lab/openpose/blob/master/include/openpose/core/datum.hpp
float32 score
Pixel pixel
geometry_msgs/Point32 point 

================================================================================
MSG: backend/Pixel
# The location and score of body parts are stored in a float array.
# Therefore we are using 32 bits instead of 64 bits.
# src: https://github.com/CMU-Perceptual-Computing-Lab/openpose/blob/master/include/openpose/core/datum.hpp
# The location has been resized to the desired output
# resolution (e.g., `resolution` flag in the demo).
float32 x
float32 y 

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :backend/Persons "d5b944881aa3cb9c1850cb3389c83c1e")


