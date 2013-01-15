; Auto-generated. Do not edit!


(cl:in-package ublox-msg)


;//! \htmlinclude Ephem.msg.html

(cl:defclass <Ephem> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ParsedEphemData
    :reader ParsedEphemData
    :initarg :ParsedEphemData
    :type ublox-msg:svephdata
    :initform (cl:make-instance 'ublox-msg:svephdata)))
)

(cl:defclass Ephem (<Ephem>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ephem>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ephem)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ublox-msg:<Ephem> is deprecated: use ublox-msg:Ephem instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ephem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox-msg:header-val is deprecated.  Use ublox-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ParsedEphemData-val :lambda-list '(m))
(cl:defmethod ParsedEphemData-val ((m <Ephem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ublox-msg:ParsedEphemData-val is deprecated.  Use ublox-msg:ParsedEphemData instead.")
  (ParsedEphemData m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ephem>) ostream)
  "Serializes a message object of type '<Ephem>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ParsedEphemData) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ephem>) istream)
  "Deserializes a message object of type '<Ephem>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ParsedEphemData) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ephem>)))
  "Returns string type for a message object of type '<Ephem>"
  "ublox/Ephem")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ephem)))
  "Returns string type for a message object of type 'Ephem"
  "ublox/Ephem")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ephem>)))
  "Returns md5sum for a message object of type '<Ephem>"
  "d32a65187ce4c5054346cf4bf47b3233")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ephem)))
  "Returns md5sum for a message object of type 'Ephem"
  "d32a65187ce4c5054346cf4bf47b3233")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ephem>)))
  "Returns full string definition for message of type '<Ephem>"
  (cl:format cl:nil "Header header~%~%# Ephem Data~%~%svephdata ParsedEphemData~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ublox/svephdata~%# ParsedEphemData~%~%float64 prn				#PRN number~%float64 tow				#time stamp of subframe 0 (s)~%float64 health		#health status, defined in ICD-GPS-200~%float64 iode1		#issue of ephemeris data 1~%float64 iode2		#issue of ephemeris data 2~%float64 week			#GPS week number~%float64 zweek		#z count week number~%float64 toe					#reference time for ephemeris (s)~%float64 majaxis				#semi major axis (m)~%float64 dN					#Mean motion difference (rad/s)~%float64 anrtime				#mean anomoly reference time (rad)~%float64 ecc					#eccentricity~%float64 omega				#arguement of perigee (rad)~%float64 cuc					#arugument of latitude - cos (rad)~%float64 cus					#argument of latitude - sine (rad)~%float64 crc					#orbit radius - cos (rad)~%float64 crs					#orbit radius - sine (rad)~%float64 cic					#inclination - cos (rad)~%float64 cis					#inclination - sine (rad)~%float64 ia					#inclination angle (rad)~%float64 dia					#rate of inclination angle (rad/s)~%float64 wo					#right ascension (rad)~%float64 dwo					#rate of right ascension (rad/s)~%float64 iodc			#issue of data clock~%float64 toc					#SV clock correction term (s)~%float64 tgd					#estimated group delay difference~%float64 af0					#clock aiging parameter 0~%float64 af1					#clock aiging parameter 1~%float64 af2					#clock aiging parameter 2~%float64 cmot				#corrected mean motion~%float64 ura			#user range accuracy variance (value 0-15)~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ephem)))
  "Returns full string definition for message of type 'Ephem"
  (cl:format cl:nil "Header header~%~%# Ephem Data~%~%svephdata ParsedEphemData~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ublox/svephdata~%# ParsedEphemData~%~%float64 prn				#PRN number~%float64 tow				#time stamp of subframe 0 (s)~%float64 health		#health status, defined in ICD-GPS-200~%float64 iode1		#issue of ephemeris data 1~%float64 iode2		#issue of ephemeris data 2~%float64 week			#GPS week number~%float64 zweek		#z count week number~%float64 toe					#reference time for ephemeris (s)~%float64 majaxis				#semi major axis (m)~%float64 dN					#Mean motion difference (rad/s)~%float64 anrtime				#mean anomoly reference time (rad)~%float64 ecc					#eccentricity~%float64 omega				#arguement of perigee (rad)~%float64 cuc					#arugument of latitude - cos (rad)~%float64 cus					#argument of latitude - sine (rad)~%float64 crc					#orbit radius - cos (rad)~%float64 crs					#orbit radius - sine (rad)~%float64 cic					#inclination - cos (rad)~%float64 cis					#inclination - sine (rad)~%float64 ia					#inclination angle (rad)~%float64 dia					#rate of inclination angle (rad/s)~%float64 wo					#right ascension (rad)~%float64 dwo					#rate of right ascension (rad/s)~%float64 iodc			#issue of data clock~%float64 toc					#SV clock correction term (s)~%float64 tgd					#estimated group delay difference~%float64 af0					#clock aiging parameter 0~%float64 af1					#clock aiging parameter 1~%float64 af2					#clock aiging parameter 2~%float64 cmot				#corrected mean motion~%float64 ura			#user range accuracy variance (value 0-15)~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ephem>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ParsedEphemData))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ephem>))
  "Converts a ROS message object to a list"
  (cl:list 'Ephem
    (cl:cons ':header (header msg))
    (cl:cons ':ParsedEphemData (ParsedEphemData msg))
))
