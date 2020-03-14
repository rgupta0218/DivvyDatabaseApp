-- Project0507.sql
-- 7.	For each hour of the day, list how many bikes were checked out during that time.
SELECT StartingHour, COUNT (*) AS NumTrips
From Trips
GROUP BY StartingHour