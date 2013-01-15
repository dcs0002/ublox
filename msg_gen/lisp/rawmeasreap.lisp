; Auto-generated. Do not edit!


(cl:in-package ublox-msg)


;//! \htmlinclude rawmeasreap.msg.html

(cl:defclass <rawmeasreap> (roslisp-msg-protocol:ros-message)
  ((cpmeas
    :reader cpmeas
    :initarg :cpmeas
    :type cl:float
    :initform 0.0)
   (prmeas
    :reader prmeas
    :initarg :prmeas
    :type cl:float
    :initform 0.0)
   (domeas
    :reader domeas
    :initarg :domeas
    :type cl:float
    :initform 0.0)
   (svid
    :reader svid
    :initarg :svid
    :type cl:float
    :initform 0.0)
   (measqual
    :reader measqual
    :initarg :measqual
    :type cl:float
    :initform 0.0)
   (cnratio
    :reader cnratio
    :initarg :cnratio
    :type cl:float
    :initform 0.0)
   (lli
    :reader lli
    :initarg :lli
    :type cl:float
    :initform 0.0))
)

(cl:defclass rawmeasreap (<rawmeasreap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rawmeasreap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rawmeasreap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox-msg:<rawmeasreap> is deprecated: use ublox-msg:rawmeasreap instead.")))

(cl:ensure-generic-function 'cpmeas-val :lambda-list '(m))
(cl:defmethod cpmeas-val ((m <rawmeasreap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox-msg:cpmeas-val is deprecated.  Use ublox-msg:cpmeas instead.")
  (cpmeas m))

(cl:ensure-generic-function 'prmeas-val :lambda-list '(m))
(cl:defmethod prmeas-val ((m <rawmeasreap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox-msg:prmeas-val is deprecated.  Use ublox-msg:prmeas instead.")
  (prmeas m))

(cl:ensure-generic-function 'domeas-val :lambda-list '(m))
(cl:defmethod domeas-val ((m <rawmeasreap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox-msg:domeas-val is deprecated.  Use ublox-msg:domeas instead.")
  (domeas m))

(cl:ensure-generic-function 'svid-val :lambda-list '(m))
(cl:defmethod svid-val ((m <rawmeasreap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox-msg:svid-val is deprecated.  Use ublox-msg:svid instead.")
  (svid m))

(cl:ensure-generic-function 'measqual-val :lambda-list '(m))
(cl:defmethod measqual-val ((m <rawmeasreap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox-msg:measqual-val is deprecated.  Use ublox-msg:measqual instead.")
  (measqual m))

(cl:ensure-generic-function 'cnratio-val :lambda-list '(m))
(cl:defmethod cnratio-val ((m <rawmeasreap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox-msg:cnratio-val is deprecated.  Use ublox-msg:cnratio instead.")
  (cnratio m))

(cl:ensure-generic-function 'lli-val :lambda-list '(m))
(cl:defmethod lli-val ((m <rawmeasreap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox-msg:lli-val is deprecated.  Use ublox-msg:lli instead.")
  (lli m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rawmeasreap>) ostream)
  "Serializes a message object of type '<rawmeasreap>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cpmeas))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'prmeas))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'domeas))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'svid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'measqual))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cnratio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lli))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rawmeasreap>) istream)
  "Deserializes a message object of type '<rawmeasreap>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cpmeas) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'prmeas) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'domeas) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'svid) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'measqual) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cnratio) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lli) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rawmeasreap>)))
  "Returns string type for a message object of type '<rawmeasreap>"
  "ublox/rawmeasreap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rawmeasreap)))
  "Returns string type for a message object of type 'rawmeasreap"
  "ublox/rawmeasreap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rawmeasreap>)))
  "Returns md5sum for a message object of type '<rawmeasreap>"
  "3e0d85a162ba346cb0d65c80e9547c99")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rawmeasreap)))
  "Returns md5sum for a message object of type 'rawmeasreap"
  "3e0d85a162ba346cb0d65c80e9547c99")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rawmeasreap>)))
  "Returns full string definition for message of type '<rawmeasreap>"
  (cl:format cl:nil "# RawMeasReap~%~%float64 cpmeas      # cycles - Carrier Phase measurement~%float64 prmeas    # m - Psuedorange measurement~%float64 domeas       # Hz - Doppler Measurement~%float64 svid       # SV Number~%float64 measqual    # Nav Measurement Quality Indicator  -- (>=4 PR+DO OK) (>=5 PR+DO+CP OK) (<6 likel loss carrier lock)~%float64 cnratio     # dbHz - Carrier to Noise Ratio~%float64 lli        # Loss of Lock Indicator (RINEX Definition)~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rawmeasreap)))
  "Returns full string definition for message of type 'rawmeasreap"
  (cl:format cl:nil "# RawMeasReap~%~%float64 cpmeas      # cycles - Carrier Phase measurement~%float64 prmeas    # m - Psuedorange measurement~%float64 domeas       # Hz - Doppler Measurement~%float64 svid       # SV Number~%float64 measqual    # Nav Measurement Quality Indicator  -- (>=4 PR+DO OK) (>=5 PR+DO+CP OK) (<6 likel loss carrier lock)~%float64 cnratio     # dbHz - Carrier to Noise Ratio~%float64 lli        # Loss of Lock Indicator (RINEX Definition)~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rawmeasreap>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rawmeasreap>))
  "Converts a ROS message object to a list"
  (cl:list 'rawmeasreap
    (cl:cons ':cpmeas (cpmeas msg))
    (cl:cons ':prmeas (prmeas msg))
    (cl:cons ':domeas (domeas msg))
    (cl:cons ':svid (svid msg))
    (cl:cons ':measqual (measqual msg))
    (cl:cons ':cnratio (cnratio msg))
    (cl:cons ':lli (lli msg))
))
