-- Project0510.sql
-- 10.Compute for each trip the average speed of the bicyclist, by taking the 
-- distance travelled computed in the previous question (which is in miles) and 
-- divide by the length in hours (the length is stored in seconds).  For the 10 
-- fastest trips, return the trip ID, bike ID, and the speed as mph.
SELECT TOP 10 TripID, BikeID, (SQRT(SQUARE(69.0 *((SELECT Latitude FROM Stations WHERE StationID = ToStation) -(SELECT Latitude FROM Stations WHERE StationID = FromStation))) + 
SQUARE(52.0 * ((SELECT Longitude FROM Stations WHERE StationID = ToStation) - (SELECT Longitude FROM Stations WHERE StationID = FromStation)) )))/ (TripDuration/ 3600.0) AS mph 
From Trips, Stations
WHERE Trips.FromStation = Stations.StationID
ORDER BY mph DESC