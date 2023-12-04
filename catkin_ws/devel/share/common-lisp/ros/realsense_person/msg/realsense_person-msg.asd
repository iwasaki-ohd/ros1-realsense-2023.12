
(cl:in-package :asdf)

(defsystem "realsense_person-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BoundingBox" :depends-on ("_package_BoundingBox"))
    (:file "_package_BoundingBox" :depends-on ("_package"))
    (:file "Person" :depends-on ("_package_Person"))
    (:file "_package_Person" :depends-on ("_package"))
    (:file "PersonBody" :depends-on ("_package_PersonBody"))
    (:file "_package_PersonBody" :depends-on ("_package"))
    (:file "PersonDetection" :depends-on ("_package_PersonDetection"))
    (:file "_package_PersonDetection" :depends-on ("_package"))
    (:file "PersonFace" :depends-on ("_package_PersonFace"))
    (:file "_package_PersonFace" :depends-on ("_package"))
    (:file "PersonId" :depends-on ("_package_PersonId"))
    (:file "_package_PersonId" :depends-on ("_package"))
    (:file "PersonSkeleton" :depends-on ("_package_PersonSkeleton"))
    (:file "_package_PersonSkeleton" :depends-on ("_package"))
    (:file "PersonTracking" :depends-on ("_package_PersonTracking"))
    (:file "_package_PersonTracking" :depends-on ("_package"))
    (:file "RegisteredPoint" :depends-on ("_package_RegisteredPoint"))
    (:file "_package_RegisteredPoint" :depends-on ("_package"))
  ))