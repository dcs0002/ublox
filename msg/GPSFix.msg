# A more complete GPS fix to supplement sensor_msgs/NavSatFix.
Header header


# GPS time
float64 time

## Dilution of precision; Xdop<=0 means the value is unknown

# Positional (3D) dilution of precision
float64 pdop

# ECEF Position

float64 ecefX
float64 ecefY
float64 ecefZ


float64 ecefVX
float64 ecefVY
float64 ecefVZ
