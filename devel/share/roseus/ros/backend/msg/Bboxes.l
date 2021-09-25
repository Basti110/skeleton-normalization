;; Auto-generated. Do not edit!


(when (boundp 'backend::Bboxes)
  (if (not (find-package "BACKEND"))
    (make-package "BACKEND"))
  (shadow 'Bboxes (find-package "BACKEND")))
(unless (find-package "BACKEND::BBOXES")
  (make-package "BACKEND::BBOXES"))

(in-package "ROS")
;;//! \htmlinclude Bboxes.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass backend::Bboxes
  :super ros::object
  :slots (_header _data _stationID _sensorID ))

(defmethod backend::Bboxes
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:data __data) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:stationID __stationID) (make-array 0 :initial-element 0 :element-type :integer))
    ((:sensorID __sensorID) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _data __data)
   (setq _stationID __stationID)
   (setq _sensorID __sensorID)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:stationID
   (&optional __stationID)
   (if __stationID (setq _stationID __stationID)) _stationID)
  (:sensorID
   (&optional __sensorID)
   (if __sensorID (setq _sensorID __sensorID)) _sensorID)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[] _data
    (* 4    (length _data)) 4
    ;; int16[] _stationID
    (* 2    (length _stationID)) 4
    ;; int16[] _sensorID
    (* 2    (length _sensorID)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (sys::poke (elt _data i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int16[] _stationID
     (write-long (length _stationID) s)
     (dotimes (i (length _stationID))
       (write-word (elt _stationID i) s)
       )
     ;; int16[] _sensorID
     (write-long (length _sensorID) s)
     (dotimes (i (length _sensorID))
       (write-word (elt _sensorID i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int16[] _stationID
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _stationID (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _stationID i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _sensorID
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sensorID (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _sensorID i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;;
   self)
  )

(setf (get backend::Bboxes :md5sum-) "475569134d54a5f2a487b7d6d6daa81c")
(setf (get backend::Bboxes :datatype-) "backend/Bboxes")
(setf (get backend::Bboxes :definition-)
      "Header header
float32[] data
int16[] stationID
int16[] sensorID

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



(provide :backend/Bboxes "475569134d54a5f2a487b7d6d6daa81c")


