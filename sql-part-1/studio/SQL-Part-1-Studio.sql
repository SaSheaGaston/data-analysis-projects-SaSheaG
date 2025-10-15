/*
SELECT TOP 100
    book_id
    ,authors
    ,title
    ,average_rating as rating
FROM BooksDB.dbo.books
ORDER BY rating DESC;
*/

SELECT title, average_rating AS rating
FROM BooksDB.dbo.books
ORDER BY average_rating ASC


/* 3:
*/

SELECT title, average_rating AS rating, tag_id
FROM BooksDB.dbo.books, BooksDB.dbo.book_tags
ORDER BY average_rating DESC;

/*
4
*/
SELECT title, average_rating AS rating, tag_id
FROM BooksDB.dbo.books, BooksDB.dbo.book_tags
--WHERE tag_id = 30574
ORDER BY average_rating DESC;

/*
5
*/
SELECT book_id, original_publication_year, authors, title
FROM BooksDB.dbo.books
WHERE original_publication_year >= 2000 AND original_publication_year <= 2010;

/*
6
*/



/*
7
*/

SELECT authors,title,average_rating as rating
    FROM BooksDB.dbo.books
    WHERE authors = 'Bill Watterson'
    OR authors LIKE '%J.K. Rowling%'
    OR authors = 'Brandon Sanderson'
    ORDER BY authors DESC, rating DESC;
