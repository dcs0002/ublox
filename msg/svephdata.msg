# ParsedEphemData

float64 prn				#PRN number
float64 tow				#time stamp of subframe 0 (s)
float64 health		#health status, defined in ICD-GPS-200
float64 iode1		#issue of ephemeris data 1
float64 iode2		#issue of ephemeris data 2
float64 week			#GPS week number
float64 zweek		#z count week number
float64 toe					#reference time for ephemeris (s)
float64 majaxis				#semi major axis (m)
float64 dN					#Mean motion difference (rad/s)
float64 anrtime				#mean anomoly reference time (rad)
float64 ecc					#eccentricity
float64 omega				#arguement of perigee (rad)
float64 cuc					#arugument of latitude - cos (rad)
float64 cus					#argument of latitude - sine (rad)
float64 crc					#orbit radius - cos (rad)
float64 crs					#orbit radius - sine (rad)
float64 cic					#inclination - cos (rad)
float64 cis					#inclination - sine (rad)
float64 ia					#inclination angle (rad)
float64 dia					#rate of inclination angle (rad/s)
float64 wo					#right ascension (rad)
float64 dwo					#rate of right ascension (rad/s)
float64 iodc			#issue of data clock
float64 toc					#SV clock correction term (s)
float64 tgd					#estimated group delay difference
float64 af0					#clock aiging parameter 0
float64 af1					#clock aiging parameter 1
float64 af2					#clock aiging parameter 2
float64 cmot				#corrected mean motion
float64 ura			#user range accuracy variance (value 0-15)