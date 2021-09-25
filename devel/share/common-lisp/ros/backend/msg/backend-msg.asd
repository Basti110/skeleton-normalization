
(cl:in-package :asdf)

(defsystem "backend-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Bboxes" :depends-on ("_package_Bboxes"))
    (:file "_package_Bboxes" :depends-on ("_package"))
    (:file "Bodypart" :depends-on ("_package_Bodypart"))
    (:file "_package_Bodypart" :depends-on ("_package"))
    (:file "Commands" :depends-on ("_package_Commands"))
    (:file "_package_Commands" :depends-on ("_package"))
    (:file "Images" :depends-on ("_package_Images"))
    (:file "_package_Images" :depends-on ("_package"))
    (:file "Person" :depends-on ("_package_Person"))
    (:file "_package_Person" :depends-on ("_package"))
    (:file "Persons" :depends-on ("_package_Persons"))
    (:file "_package_Persons" :depends-on ("_package"))
    (:file "Pixel" :depends-on ("_package_Pixel"))
    (:file "_package_Pixel" :depends-on ("_package"))
    (:file "StationUsage" :depends-on ("_package_StationUsage"))
    (:file "_package_StationUsage" :depends-on ("_package"))
  ))