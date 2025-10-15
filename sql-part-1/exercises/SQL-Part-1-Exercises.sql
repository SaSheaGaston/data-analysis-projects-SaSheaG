--A. The Books Table

--Question 1: Select the TOP 1000 rows from the books table.
/*SELECT TOP 1000 *
FROM BooksDB.dbo.books;
*/
 

/* Question 2: Count the number of titles. Are there 10,000 as promised ny the dataset? 

ANSWER: Yes, the query returned 10,000 titles.*/

/*SELECT COUNT(DISTINCT book_id)
FROM BooksDB.dbo.books;

GO */ 

/* Question 3: Count the number of books where the original_publication_year is earlier than 1800.

ANSWER: 125

*/ 

/*SELECT COUNT(DISTINCT book_id)
FROM BooksDB.dbo.books
WHERE original_publication_year < 1800;

*/


/* Question 4: Create a query that displays distinct authors from the table.*/

/*SELECT DISTINCT authors
FROM BooksDB.dbo.books

*/

--Question 5: Create a query that displays all the books that contain a language code for English.

/*SELECT title 
FROM BooksDB.dbo.books
WHERE language_code = 'eng' OR language_code = 'en-';
*/

--Question 6: Create query to check how many original titles were published during WWI (1914-1921)

/*SELECT COUNT(original_title)
FROM BooksDB.dbo.books
WHERE original_publication_year >= 1914 AND original_publication_year <= 1921;

*/

--B. The Book Tags table

--Question 1: top 1000 items ordered by tag_id

/*SELECT TOP 1000 *
FROM BooksDB.dbo.book_tags
ORDER BY tag_id;

*/

--Question 2: query that counts the number of goodreads_book_id grouped by the tag_id

/*
SELECT COUNT(goodreads_book_id) 
FROM BooksDB.dbo.book_tags
GROUP BY tag_id;

*/

--Question 3: Use AS to create an alias for the column generated in the previous query

/*
SELECT COUNT(goodreads_book_id) AS num_of_ids
FROM BooksDB.dbo.book_tags
GROUP BY tag_id;

*/

--C. Ratings table

--Question 1: Create a query that displays the top 1000 items in table in descending order.

/*
SELECT TOP 1000 *
FROM BooksDB.dbo.ratings
ORDER BY rating DESC;

*/

--Question 2: Create a query that returns the total number of users that have given a rating of less than 2.

/*
SELECT COUNT(user_id)
FROM BooksDB.dbo.ratings
WHERE rating < 2;

*/


--Question 3: Create a query that returns the sum of books that have a rating of 4 or higher.

/*SELECT COUNT(book_id)
FROM BooksDB.dbo.ratings
WHERE rating >= 4;

*/

--D. The Tags Table

--Question 1: Write a query that returns items where the tag_name describes the book as a mystery.

/*
SELECT *
FROM BooksDB.dbo.tags
WHERE tag_name LIKE '%mystery%';

*/

--Question 2: Run the query below. In your own words, what is it returning?
/*
SELECT *
FROM BooksDB.dbo.tags
WHERE tag_name < 'd' AND tag_name >= 'c';

*/
--Answer: It is returning all tag names that begin with the letter C.

--E. The To Read Table

-- Question 1: Create a query that uses the user_id to count the total number of books that each user wants to read. 
--Print in ascending order using the user_id under the alias 'Total Books to Read'

/*
SELECT COUNT(book_id) AS Total_Books_to_Read
FROM BooksDB.dbo.to_read
GROUP BY [user_id] 
ORDER BY [user_id] ASC;

*/


--Question 2: Create a query that uses the user_id to count the total number of books that each user wants to read.
--Sort results by total number of book_ids in descending order using alias Total Books to Read.

/*
SELECT COUNT(book_id) AS Total_Books_to_Read
FROM BooksDB.dbo.to_read
GROUP BY [user_id]
ORDER BY Total_Books_to_Read DESC; 

*/
