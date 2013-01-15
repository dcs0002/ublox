; Auto-generated. Do not edit!


(cl:in-package ublox-msg)


;//! \htmlinclude raw.msg.html

(cl:defclass <raw> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (RawMeasReap
    :reader RawMeasReap
    :initarg :RawMeasReap
    :type (cl:vector ublox-msg:rawmeasreap)
   :initform (cl:make-array 32 :element-type 'ublox-msg:rawmeasreap :initial-element (cl:make-instance 'ublox-msg:rawmeasreap))))
)

(cl:defclass raw (<raw>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <raw>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'raw)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox-msg:<raw> is deprecated: use ublox-msg:raw instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <raw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox-msg:header-val is deprecated.  Use ublox-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'RawMeasReap-val :lambda-list '(m))
(cl:defmethod RawMeasReap-val ((m <raw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox-msg:RawMeasReap-val is deprecated.  Use ublox-msg:RawMeasReap instead.")
  (RawMeasReap m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <raw>) ostream)
  "Serializes a message object of type '<raw>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'RawMeasReap))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <raw>) istream)
  "Deserializes a message object of type '<raw>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'RawMeasReap) (cl:make-array 32))
  (cl:let ((vals (cl:slot-value msg 'RawMeasReap)))
    (cl:dotimes (i 32)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ublox-msg:rawmeasreap))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<raw>)))
  "Returns string type for a message object of type '<raw>"
  "ublox/raw")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'raw)))
  "Returns string type for a message object of type 'raw"
  "ublox/raw")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<raw>)))
  "Returns md5sum for a message object of type '<raw>"
  "adf036c089e10cedb0284b01bd41ad77")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'raw)))
  "Returns md5sum for a message object of type 'raw"
  "adf036c089e10cedb0284b01bd41ad77")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<raw>)))
  "Returns full string definition for message of type '<raw>"
  (cl:format cl:nil "Header header~%~%# RXM-RAW~%~%rawmeasreap[32] RawMeasReap~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ublox/rawmeasreap~%# RawMeasReap~%~%float64 cpmeas      # cycles - Carrier Phase measurement~%float64 prmeas    # m - Psuedorange measurement~%float64 domeas       # Hz - Doppler Measurement~%float64 svid       # SV Number~%float64 measqual    # Nav Measurement Quality Indicator  -- (>=4 PR+DO OK) (>=5 PR+DO+CP OK) (<6 likel loss carrier lock)~%float64 cnratio     # dbHz - Carrier to Noise Ratio~%float64 lli        # Loss of Lock Indicator (RINEX Definition)~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'raw)))
  "Returns full string definition for message of type 'raw"
  (cl:format cl:nil "Header header~%~%# RXM-RAW~%~%rawmeasreap[32] RawMeasReap~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ublox/rawmeasreap~%# RawMeasReap~%~%float64 cpmeas      # cycles - Carrier Phase measurement~%float64 prmeas    # m - Psuedorange measurement~%float64 domeas       # Hz - Doppler Measurement~%float64 svid       # SV Number~%float64 measqual    # Nav Measurement Quality Indicator  -- (>=4 PR+DO OK) (>=5 PR+DO+CP OK) (<6 likel loss carrier lock)~%float64 cnratio     # dbHz - Carrier to Noise Ratio~%float64 lli        # Loss of Lock Indicator (RINEX Definition)~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <raw>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'RawMeasReap) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <raw>))
  "Converts a ROS message object to a list"
  (cl:list 'raw
    (cl:cons ':header (header msg))
    (cl:cons ':RawMeasReap (RawMeasReap msg))
))
