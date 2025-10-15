/*
SELECT COUNT(driverId)
FROM formula_one.dbo.drivers

*/

/*

SELECT COUNT(DISTINCT driverId)
FROM formula_one.dbo.lap_times
WHERE time < '0:57.0'

*/

USE formula_one
SELECT MAX ("stop") AS total_pit_stops, raceId, driverId
FROM pit_stops  


