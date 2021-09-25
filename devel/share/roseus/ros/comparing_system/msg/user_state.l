;; Auto-generated. Do not edit!


(when (boundp 'comparing_system::user_state)
  (if (not (find-package "COMPARING_SYSTEM"))
    (make-package "COMPARING_SYSTEM"))
  (shadow 'user_state (find-package "COMPARING_SYSTEM")))
(unless (find-package "COMPARING_SYSTEM::USER_STATE")
  (make-package "COMPARING_SYSTEM::USER_STATE"))

(in-package "ROS")
;;//! \htmlinclude user_state.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass comparing_system::user_state
  :super ros::object
  :slots (_user_id _current_exercise_name _repetitions _seconds_since_last_exercise_start _milliseconds_since_last_repetition _repetition_score _exercise_score _user_position ))

(defmethod comparing_system::user_state
  (:init
   (&key
    ((:user_id __user_id) 0)
    ((:current_exercise_name __current_exercise_name) "")
    ((:repetitions __repetitions) 0)
    ((:seconds_since_last_exercise_start __seconds_since_last_exercise_start) 0)
    ((:milliseconds_since_last_repetition __milliseconds_since_last_repetition) 0)
    ((:repetition_score __repetition_score) 0)
    ((:exercise_score __exercise_score) 0)
    ((:user_position __user_position) (instance geometry_msgs::Point32 :init))
    )
   (send-super :init)
   (setq _user_id (round __user_id))
   (setq _current_exercise_name (string __current_exercise_name))
   (setq _repetitions (round __repetitions))
   (setq _seconds_since_last_exercise_start (round __seconds_since_last_exercise_start))
   (setq _milliseconds_since_last_repetition (round __milliseconds_since_last_repetition))
   (setq _repetition_score (round __repetition_score))
   (setq _exercise_score (round __exercise_score))
   (setq _user_position __user_position)
   self)
  (:user_id
   (&optional __user_id)
   (if __user_id (setq _user_id __user_id)) _user_id)
  (:current_exercise_name
   (&optional __current_exercise_name)
   (if __current_exercise_name (setq _current_exercise_name __current_exercise_name)) _current_exercise_name)
  (:repetitions
   (&optional __repetitions)
   (if __repetitions (setq _repetitions __repetitions)) _repetitions)
  (:seconds_since_last_exercise_start
   (&optional __seconds_since_last_exercise_start)
   (if __seconds_since_last_exercise_start (setq _seconds_since_last_exercise_start __seconds_since_last_exercise_start)) _seconds_since_last_exercise_start)
  (:milliseconds_since_last_repetition
   (&optional __milliseconds_since_last_repetition)
   (if __milliseconds_since_last_repetition (setq _milliseconds_since_last_repetition __milliseconds_since_last_repetition)) _milliseconds_since_last_repetition)
  (:repetition_score
   (&optional __repetition_score)
   (if __repetition_score (setq _repetition_score __repetition_score)) _repetition_score)
  (:exercise_score
   (&optional __exercise_score)
   (if __exercise_score (setq _exercise_score __exercise_score)) _exercise_score)
  (:user_position
   (&rest __user_position)
   (if (keywordp (car __user_position))
       (send* _user_position __user_position)
     (progn
       (if __user_position (setq _user_position (car __user_position)))
       _user_position)))
  (:serialization-length
   ()
   (+
    ;; int16 _user_id
    2
    ;; string _current_exercise_name
    4 (length _current_exercise_name)
    ;; int16 _repetitions
    2
    ;; int16 _seconds_since_last_exercise_start
    2
    ;; int32 _milliseconds_since_last_repetition
    4
    ;; int8 _repetition_score
    1
    ;; int8 _exercise_score
    1
    ;; geometry_msgs/Point32 _user_position
    (send _user_position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _user_id
       (write-word _user_id s)
     ;; string _current_exercise_name
       (write-long (length _current_exercise_name) s) (princ _current_exercise_name s)
     ;; int16 _repetitions
       (write-word _repetitions s)
     ;; int16 _seconds_since_last_exercise_start
       (write-word _seconds_since_last_exercise_start s)
     ;; int32 _milliseconds_since_last_repetition
       (write-long _milliseconds_since_last_repetition s)
     ;; int8 _repetition_score
       (write-byte _repetition_score s)
     ;; int8 _exercise_score
       (write-byte _exercise_score s)
     ;; geometry_msgs/Point32 _user_position
       (send _user_position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _user_id
     (setq _user_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _current_exercise_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_exercise_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _repetitions
     (setq _repetitions (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _seconds_since_last_exercise_start
     (setq _seconds_since_last_exercise_start (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _milliseconds_since_last_repetition
     (setq _milliseconds_since_last_repetition (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _repetition_score
     (setq _repetition_score (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _repetition_score 127) (setq _repetition_score (- _repetition_score 256)))
   ;; int8 _exercise_score
     (setq _exercise_score (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _exercise_score 127) (setq _exercise_score (- _exercise_score 256)))
   ;; geometry_msgs/Point32 _user_position
     (send _user_position :deserialize buf ptr-) (incf ptr- (send _user_position :serialization-length))
   ;;
   self)
  )

(setf (get comparing_system::user_state :md5sum-) "0fabb7a9dd8f513916aacb089a33f4ba")
(setf (get comparing_system::user_state :datatype-) "comparing_system/user_state")
(setf (get comparing_system::user_state :definition-)
      "# This message describes user correction information

# The following structure reflects the REST API between the Comparing System and the Smtartphone App 
# as specified under https://app.getguru.com/card/iGK7zMAT/Tech-Spec-REST-API-ComparingSystem-Smartphone-App
# For questions, refer to Artur


int16 user_id
string current_exercise_name
int16 repetitions
int16 seconds_since_last_exercise_start
int32 milliseconds_since_last_repetition
int8 repetition_score
int8 exercise_score
geometry_msgs/Point32 user_position


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



(provide :comparing_system/user_state "0fabb7a9dd8f513916aacb089a33f4ba")


