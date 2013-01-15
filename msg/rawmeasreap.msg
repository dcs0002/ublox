# RawMeasReap

float64 cpmeas      # cycles - Carrier Phase measurement
float64 prmeas    # m - Psuedorange measurement
float64 domeas       # Hz - Doppler Measurement
float64 svid       # SV Number
float64 measqual    # Nav Measurement Quality Indicator  -- (>=4 PR+DO OK) (>=5 PR+DO+CP OK) (<6 likel loss carrier lock)
float64 cnratio     # dbHz - Carrier to Noise Ratio
float64 lli        # Loss of Lock Indicator (RINEX Definition)