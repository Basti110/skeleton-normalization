
(cl:in-package :asdf)

(defsystem "comparing_system-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "user_correction" :depends-on ("_package_user_correction"))
    (:file "_package_user_correction" :depends-on ("_package"))
    (:file "user_state" :depends-on ("_package_user_state"))
    (:file "_package_user_state" :depends-on ("_package"))
  ))