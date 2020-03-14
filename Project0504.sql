-- Project0504.sql
-- 4.	For each StationID, retrieve the number of trips taken 
-- from that station and to that station (as separate values).

SELECT TOP 10 StationID, (SELECT TOP 10 COUNT(FromStation) From Trips WHERE StationID = FromStation) AS NumTripsFrom, (SELECT TOP 10 COUNT(ToStation) From Trips WHERE StationID = ToStation) AS NumTripsTo
FROM Trips, Stations
GROUP BY StationID 
ORDER BY ((SELECT TOP 10 COUNT(FromStation) From Trips WHERE StationID = FromStation) + (SELECT TOP 10 COUNT(ToStation) From Trips WHERE StationID = ToStation)) DESC