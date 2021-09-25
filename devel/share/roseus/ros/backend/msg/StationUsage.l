;; Auto-generated. Do not edit!


(when (boundp 'backend::StationUsage)
  (if (not (find-package "BACKEND"))
    (make-package "BACKEND"))
  (shadow 'StationUsage (find-package "BACKEND")))
(unless (find-package "BACKEND::STATIONUSAGE")
  (make-package "BACKEND::STATIONUSAGE"))

(in-package "ROS")
;;//! \htmlinclude StationUsage.msg.html


(defclass backend::StationUsage
  :super ros::object
  :slots (_stationID _isActive _exerciseName ))

(defmethod backend::StationUsage
  (:init
   (&key
    ((:stationID __stationID) 0)
    ((:isActive __isActive) nil)
    ((:exerciseName __exerciseName) "")
    )
   (send-super :init)
   (setq _stationID (round __stationID))
   (setq _isActive __isActive)
   (setq _exerciseName (string __exerciseName))
   self)
  (:stationID
   (&optional __stationID)
   (if __stationID (setq _stationID __stationID)) _stationID)
  (:isActive
   (&optional (__isActive :null))
   (if (not (eq __isActive :null)) (setq _isActive __isActive)) _isActive)
  (:exerciseName
   (&optional __exerciseName)
   (if __exerciseName (setq _exerciseName __exerciseName)) _exerciseName)
  (:serialization-length
   ()
   (+
    ;; int16 _stationID
    2
    ;; bool _isActive
    1
    ;; string _exerciseName
    4 (length _exerciseName)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _stationID
       (write-word _stationID s)
     ;; bool _isActive
       (if _isActive (write-byte -1 s) (write-byte 0 s))
     ;; string _exerciseName
       (write-long (length _exerciseName) s) (princ _exerciseName s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _stationID
     (setq _stationID (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _isActive
     (setq _isActive (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _exerciseName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _exerciseName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get backend::StationUsage :md5sum-) "12c2a61b83902c2403b1b7e3d5ed1714")
(setf (get backend::StationUsage :datatype-) "backend/StationUsage")
(setf (get backend::StationUsage :definition-)
      "# This message contains information on the usage of a station and should be created upton receiving a message from a smartphone on that stateion
# The state of a station is compromized of the following datafields

int16 stationID
bool isActive
string exerciseName

")



(provide :backend/StationUsage "12c2a61b83902c2403b1b7e3d5ed1714")


