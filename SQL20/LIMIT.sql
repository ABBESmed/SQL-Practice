-- LIMIT restricts the number of rows returned by a query. It tells MySQL how many rows to show.

-- General syntax
SELECT column1, column2
FROM table_name
LIMIT number;

-- example 
SELECT *
FROM users
LIMIT 3;

-- This returns only the first 3 rows.


SELECT *
FROM users
ORDER BY age DESC
LIMIT 3;

-- LIMIT with an offset
SELECT *
FROM table_name
LIMIT offset, count;

-- offset = how many rows to skip. count = how many rows to return.

SELECT *
FROM users
LIMIT 2, 3;

/*
Skip the first 2 rows.
Return the next 3 rows.
*/


LIMIT n         = show the first n rows

LIMIT x, y      = skip x rows, then show y rows