
(cl:in-package :asdf)

(defsystem "ublox-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "raw" :depends-on ("_package_raw"))
    (:file "_package_raw" :depends-on ("_package"))
    (:file "GPSFix" :depends-on ("_package_GPSFix"))
    (:file "_package_GPSFix" :depends-on ("_package"))
    (:file "Ephem" :depends-on ("_package_Ephem"))
    (:file "_package_Ephem" :depends-on ("_package"))
    (:file "Velned" :depends-on ("_package_Velned"))
    (:file "_package_Velned" :depends-on ("_package"))
    (:file "rawmeasreap" :depends-on ("_package_rawmeasreap"))
    (:file "_package_rawmeasreap" :depends-on ("_package"))
    (:file "GPSStatus" :depends-on ("_package_GPSStatus"))
    (:file "_package_GPSStatus" :depends-on ("_package"))
    (:file "svephdata" :depends-on ("_package_svephdata"))
    (:file "_package_svephdata" :depends-on ("_package"))
  ))