;; Auto-generated. Do not edit!


(when (boundp 'comparing_system::user_correction)
  (if (not (find-package "COMPARING_SYSTEM"))
    (make-package "COMPARING_SYSTEM"))
  (shadow 'user_correction (find-package "COMPARING_SYSTEM")))
(unless (find-package "COMPARING_SYSTEM::USER_CORRECTION")
  (make-package "COMPARING_SYSTEM::USER_CORRECTION"))

(in-package "ROS")
;;//! \htmlinclude user_correction.msg.html


(defclass comparing_system::user_correction
  :super ros::object
  :slots (_user_id _repetition _positive_correction _display_text ))

(defmethod comparing_system::user_correction
  (:init
   (&key
    ((:user_id __user_id) 0)
    ((:repetition __repetition) 0)
    ((:positive_correction __positive_correction) nil)
    ((:display_text __display_text) "")
    )
   (send-super :init)
   (setq _user_id (round __user_id))
   (setq _repetition (round __repetition))
   (setq _positive_correction __positive_correction)
   (setq _display_text (string __display_text))
   self)
  (:user_id
   (&optional __user_id)
   (if __user_id (setq _user_id __user_id)) _user_id)
  (:repetition
   (&optional __repetition)
   (if __repetition (setq _repetition __repetition)) _repetition)
  (:positive_correction
   (&optional (__positive_correction :null))
   (if (not (eq __positive_correction :null)) (setq _positive_correction __positive_correction)) _positive_correction)
  (:display_text
   (&optional __display_text)
   (if __display_text (setq _display_text __display_text)) _display_text)
  (:serialization-length
   ()
   (+
    ;; int16 _user_id
    2
    ;; int16 _repetition
    2
    ;; bool _positive_correction
    1
    ;; string _display_text
    4 (length _display_text)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _user_id
       (write-word _user_id s)
     ;; int16 _repetition
       (write-word _repetition s)
     ;; bool _positive_correction
       (if _positive_correction (write-byte -1 s) (write-byte 0 s))
     ;; string _display_text
       (write-long (length _display_text) s) (princ _display_text s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _user_id
     (setq _user_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _repetition
     (setq _repetition (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _positive_correction
     (setq _positive_correction (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _display_text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _display_text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get comparing_system::user_correction :md5sum-) "f5faadefefb5d277a82a27faf3f41371")
(setf (get comparing_system::user_correction :datatype-) "comparing_system/user_correction")
(setf (get comparing_system::user_correction :definition-)
      "# This message describes user correction information

# The following structure reflects the REST API between the Comparing System and the Smtartphone App 
# as specified under https://app.getguru.com/card/iGK7zMAT/Tech-Spec-REST-API-ComparingSystem-Smartphone-App
# For questions, refer to Artur


int16 user_id
int16 repetition
bool positive_correction
string display_text

")



(provide :comparing_system/user_correction "f5faadefefb5d277a82a27faf3f41371")


