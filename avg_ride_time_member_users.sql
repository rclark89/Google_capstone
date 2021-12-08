-- Ride time is stored as time in hh:mm:ss format. This script takes this 
-- data format, which is difficult to work with, and converts it to minutes. The average ride time per month for member users is then displayed
-- for the six month period under investigation (November 2020 to April 2021).
-- A union has been used due to the lack of a common key in the data.

SELECT (AVG(EXTRACT(HOUR FROM ride_length)*3600)+
    AVG(EXTRACT(MINUTE FROM ride_length)*60)+
    AVG(EXTRACT(SECOND FROM ride_length))
)/60 AS avg_ride_time_mins_member

FROM `weighty-utility-333815.cyclistic_bike_share.nov_2020`

WHERE member_casual = "member"

UNION ALL

SELECT (AVG(EXTRACT(HOUR FROM ride_length)*3600)+
    AVG(EXTRACT(MINUTE FROM ride_length)*60)+
    AVG(EXTRACT(SECOND FROM ride_length))
)/60 AS avg_ride_time_mins

FROM `weighty-utility-333815.cyclistic_bike_share.dec_2020`

WHERE member_casual = "member"

UNION ALL 

SELECT (AVG(EXTRACT(HOUR FROM ride_length)*3600)+
    AVG(EXTRACT(MINUTE FROM ride_length)*60)+
    AVG(EXTRACT(SECOND FROM ride_length))
)/60 AS avg_ride_time_mins

FROM `weighty-utility-333815.cyclistic_bike_share.jan_2021`

WHERE member_casual = "member"

UNION ALL 

SELECT (AVG(EXTRACT(HOUR FROM ride_length)*3600)+
    AVG(EXTRACT(MINUTE FROM ride_length)*60)+
    AVG(EXTRACT(SECOND FROM ride_length))
)/60 AS avg_ride_time_mins

FROM `weighty-utility-333815.cyclistic_bike_share.feb_2022`

WHERE member_casual = "member"

UNION ALL 

SELECT (AVG(EXTRACT(HOUR FROM ride_length)*3600)+
    AVG(EXTRACT(MINUTE FROM ride_length)*60)+
    AVG(EXTRACT(SECOND FROM ride_length))
)/60 AS avg_ride_time_mins

FROM `weighty-utility-333815.cyclistic_bike_share.mar_2021`

WHERE member_casual = "member"

UNION ALL 

SELECT (AVG(EXTRACT(HOUR FROM ride_length)*3600)+
    AVG(EXTRACT(MINUTE FROM ride_length)*60)+
    AVG(EXTRACT(SECOND FROM ride_length))
)/60 AS avg_ride_time_mins

FROM `weighty-utility-333815.cyclistic_bike_share.apr_2021`

WHERE member_casual = "member"
