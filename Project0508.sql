-- Project0508.sql
-- 8.	For each hour of the day, list the percentage of bikes checked out during --  that hour relative to the other hours of the day.
SELECT StartingHour, (COUNT(*)*100.0 /(Select COUNT(*) From Trips)) AS Percentage
From Trips
GROUP BY StartingHour