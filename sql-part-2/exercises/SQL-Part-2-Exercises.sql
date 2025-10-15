--STRING FUNCTIONS

--Question 1:
/*
SELECT RIGHT(Base_Name, 3)
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015;

*/
--Most of the businesses have Inc. at the end of the name. 

--Question 2:

/*
SELECT CHARINDEX(' ', Number_of_Trips)
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015;

*/


--DATE FUNCTIONS:

--Question 1: 

/*
SELECT DATENAME(MONTH, Pick_Up_Date)
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015
ORDER BY Pick_Up_Date DESC;

*/

--It seems that the number of pickups increases as the temperature increases during the year. 

--Question 2: 

/*
SELECT DATENAME(DAY, Pick_Up_Date) AS Day_Number, DATENAME(MONTH, Pick_Up_Date) AS Month_Name
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015
ORDER BY Day_Number ASC;

*/

--AGGREGATE FUNCTIONS

--Question 1:

/*

SELECT MAX(start_lng)
FROM RideShareDB.dbo.lyft;

*/

--Question 2:

/*
SELECT MAX(start_lat)
FROM RideShareDB.dbo.lyft;

*/

--Question 3:

/*
SELECT CONCAT_WS(':', Base_Number, Base_Name)
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015;

*/



