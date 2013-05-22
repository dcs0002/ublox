; Auto-generated. Do not edit!


(cl:in-package ublox-msg)


;//! \htmlinclude navSol.msg.html

(cl:defclass <navSol> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass navSol (<navSol>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <navSol>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'navSol)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox-msg:<navSol> is deprecated: use ublox-msg:navSol instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <navSol>) ostream)
  "Serializes a message object of type '<navSol>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <navSol>) istream)
  "Deserializes a message object of type '<navSol>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<navSol>)))
  "Returns string type for a message object of type '<navSol>"
  "ublox/navSol")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'navSol)))
  "Returns string type for a message object of type 'navSol"
  "ublox/navSol")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<navSol>)))
  "Returns md5sum for a message object of type '<navSol>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'navSol)))
  "Returns md5sum for a message object of type 'navSol"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<navSol>)))
  "Returns full string definition for message of type '<navSol>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'navSol)))
  "Returns full string definition for message of type 'navSol"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <navSol>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <navSol>))
  "Converts a ROS message object to a list"
  (cl:list 'navSol
))
