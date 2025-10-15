/*
SELECT UPPER(LEFT(surname, 3)) AS surname_first_3, nationality, driverId
FROM formula_one.dbo.drivers;

*/

/*

--Which month has the most races occured in?

SELECT MONTH(date) AS race_month,
    DATENAME(MONTH, date) AS month_name,
    COUNT(*) AS num_races
FROM formula_one.dbo.races
GROUP BY MONTH(date), DATENAME(MONTH, date)
ORDER BY num_races DESC;
*/

--If we want to know which month had the most races that occured within the past 10 years:

/*
SELECT MONTH(date) AS race_month,
    DATENAME(MONTH, date) AS month_name,
    COUNT(*) AS num_races
FROM formula_one.dbo.races
WHERE YEAR(date) > 2014
GROUP BY MONTH(date), DATENAME(MONTH, date)
ORDER BY num_races DESC;

*/

--Race reviews occur four days after each race. Calculate the race review for each race.
/*
SELECT name AS race_name,
    date AS race_date,
    DATEADD(DAY, 4, date) review_date
FROM formula_one.dbo.races

*/

--How can we display each race date as a formatted string like "Sunday, March 7, 2021?"

/*
SELECT name AS race_name,
FORMAT(date, 'dddd, MMMM,, yyyy')
FROM formula_one.dbo.races
ORDER BY date;

*/

--null example

/*

SELECT *
FROM BooksDB.dbo.books
WHERE original_title IS NULL

*/

--Create a column  that has original title, if it exists, or title if original title is null.

SELECT authors, book_id, ISNULL(original_title, title) AS original_title_refined
FROM BooksDB.dbo.books