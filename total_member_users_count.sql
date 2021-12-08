--This simple script simply counts the number of member users per month. A union is used because there is no common key to carry out a union on in the data.


SELECT COUNT(member_casual) AS member_count_per_month
FROM `weighty-utility-333815.cyclistic_bike_share.nov_2020`
WHERE member_casual = "member"

UNION ALL

SELECT COUNT(member_casual) AS member_count2
FROM `weighty-utility-333815.cyclistic_bike_share.dec_2020`
WHERE member_casual = "member"

UNION ALL

SELECT COUNT(member_casual) AS member_count3
FROM `weighty-utility-333815.cyclistic_bike_share.jan_2021`
WHERE member_casual = "member"

UNION ALL

SELECT COUNT(member_casual) AS member_count4
FROM `weighty-utility-333815.cyclistic_bike_share.feb_2022`
WHERE member_casual = "member"

UNION ALL

SELECT COUNT(member_casual) AS member_count5
FROM `weighty-utility-333815.cyclistic_bike_share.mar_2021`
WHERE member_casual = "member"

UNION ALL

SELECT COUNT(member_casual) AS member_count6
FROM `weighty-utility-333815.cyclistic_bike_share.apr_2021`
WHERE member_casual = "member"
