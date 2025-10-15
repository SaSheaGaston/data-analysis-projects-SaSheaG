--Question 1: 
--A.
/*
SELECT MAX(LEN(title))
FROM BooksDB.dbo.books;
*/
/*
SELECT title 
from BooksDB.dbo.books
WHERE LEN(title) = 186;
*/

--2.
--A.
/*
SELECT MIN(LEN(authors))
FROM BooksDB.dbo.books;
*/
--B. 
/*
SELECT authors 
from BooksDB.dbo.books
WHERE LEN(authors) = 3;
*/

--3.
/*
SELECT COUNT(title) AS title_count
FROM BooksDB.dbo.books
WHERE title LIKE '%The%';

*/

--4. ]
/*
SELECT COUNT(authors)
FROM BooksDB.dbo.books
WHERE authors LIKE 'Z%';

*/

--5.
/*
SELECT COUNT(title)
FROM BooksDB.dbo.books
WHERE LEFT(language_code, 3) <> 'en' 
    AND LEFT(language_code, 3) <> 'eng' 
    AND LEFT(language_code, 3) <> 'en-';
*/

--6.
/*
SELECT COUNT(title)
FROM BooksDB.dbo.books
WHERE SUBSTRING(language_code, 1,2) <> 'en' 
    AND SUBSTRING(language_code, 1, 3) <> 'eng' 
    AND SUBSTRING(language_code, 1, 3) <> 'en-';

*/

--7.
/*
SELECT CONCAT(title, ' by ', authors, ' in ', language_code) AS nice_title
FROM BooksDB.dbo.books
*/

/*
SELECT title, authors, language_code
from BooksDB.dbo.books
WHERE title IS NULL OR authors IS NULL OR language_code iS NULL;
*/
--8.
/*
SELECT title, authors, COALESCE(NULL, language_code, 'unknown')
FROM BooksDB.dbo.books;

*/

--9.
SELECT title, authors, ISNULL(language_code, 'unknown')
FROM BooksDB.dbo.books;




