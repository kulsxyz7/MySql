-- SELECT 
--     CONCAT (
--         SUBSTRING(title, 1, 10),
--         '...'
--     ) AS 'short title'
-- FROM books;


SELECT
    SUBSTRING(REPLACE(title, 'e', '3'), 1, 10) AS 'weird string'
FROM books;

'woof' 'foow'
SELECT CONCAT ('woof', REVERSE ('foow'));

"Eggers is 6 character long"

SELECT CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname),' character long')
FROM books;

SELECT UPPER(title)
FROM books;

SELECT CONCAT('MY FAVORITE BOOK IS THE ', UPPER(title)) FROM books;