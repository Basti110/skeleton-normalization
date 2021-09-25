;; Auto-generated. Do not edit!


(when (boundp 'backend::Person)
  (if (not (find-package "BACKEND"))
    (make-package "BACKEND"))
  (shadow 'Person (find-package "BACKEND")))
(unless (find-package "BACKEND::PERSON")
  (make-package "BACKEND::PERSON"))

(in-package "ROS")
;;//! \htmlinclude Person.msg.html


(defclass backend::Person
  :super ros::object
  :slots (_stationID _sensorID _bodyParts ))

(defmethod backend::Person
  (:init
   (&key
    ((:stationID __stationID) 0)
    ((:sensorID __sensorID) 0)
    ((:bodyParts __bodyParts) ())
    )
   (send-super :init)
   (setq _stationID (round __stationID))
   (setq _sensorID (round __sensorID))
   (setq _bodyParts __bodyParts)
   self)
  (:stationID
   (&optional __stationID)
   (if __stationID (setq _stationID __stationID)) _stationID)
  (:sensorID
   (&optional __sensorID)
   (if __sensorID (setq _sensorID __sensorID)) _sensorID)
  (:bodyParts
   (&rest __bodyParts)
   (if (keywordp (car __bodyParts))
       (send* _bodyParts __bodyParts)
     (progn
       (if __bodyParts (setq _bodyParts (car __bodyParts)))
       _bodyParts)))
  (:serialization-length
   ()
   (+
    ;; int16 _stationID
    2
    ;; int16 _sensorID
    2
    ;; backend/Bodypart[] _bodyParts
    (apply #'+ (send-all _bodyParts :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _stationID
       (write-word _stationID s)
     ;; int16 _sensorID
       (write-word _sensorID s)
     ;; backend/Bodypart[] _bodyParts
     (write-long (length _bodyParts) s)
     (dolist (elem _bodyParts)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _stationID
     (setq _stationID (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _sensorID
     (setq _sensorID (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; backend/Bodypart[] _bodyParts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bodyParts (let (r) (dotimes (i n) (push (instance backend::Bodypart :init) r)) r))
     (dolist (elem- _bodyParts)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get backend::Person :md5sum-) "19e387ec9518ddfc7ac4967934ce1516")
(setf (get backend::Person :datatype-) "backend/Person")
(setf (get backend::Person :definition-)
      "# A person has some body parts. That is why we have created
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



(provide :backend/Person "19e387ec9518ddfc7ac4967934ce1516")


