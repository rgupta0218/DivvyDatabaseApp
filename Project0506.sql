-- Project0506.sql
-- 6.	For each age group (year) among customers, list the average 
--  ride duration among all trips customers of that age group took.  
SELECT TOP 10 YEAR(GETDATE())-BirthYear AS Age, Avg(TripDuration) AS AverageTripDurationPerAgeGroup
FROM Users, Trips
WHERE Users.UserID = Trips.UserID
GROUP BY YEAR(GETDATE())-BirthYear
ORDER By Avg(TripDuration) DESC
