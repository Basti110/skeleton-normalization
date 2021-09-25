;; Auto-generated. Do not edit!


(when (boundp 'backend::Pixel)
  (if (not (find-package "BACKEND"))
    (make-package "BACKEND"))
  (shadow 'Pixel (find-package "BACKEND")))
(unless (find-package "BACKEND::PIXEL")
  (make-package "BACKEND::PIXEL"))

(in-package "ROS")
;;//! \htmlinclude Pixel.msg.html


(defclass backend::Pixel
  :super ros::object
  :slots (_x _y ))

(defmethod backend::Pixel
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get backend::Pixel :md5sum-) "ff8d7d66dd3e4b731ef14a45d38888b6")
(setf (get backend::Pixel :datatype-) "backend/Pixel")
(setf (get backend::Pixel :definition-)
      "# The location and score of body parts are stored in a float array.
# Therefore we are using 32 bits instead of 64 bits.
# src: https://github.com/CMU-Perceptual-Computing-Lab/openpose/blob/master/include/openpose/core/datum.hpp
# The location has been resized to the desired output
# resolution (e.g., `resolution` flag in the demo).
float32 x
float32 y 

")



(provide :backend/Pixel "ff8d7d66dd3e4b731ef14a45d38888b6")


