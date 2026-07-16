-- The general syntax is:
SELECT * FROM table_name;

/*
SELECT = read
*      = everything
FROM   = from which table
*/

-- To select only specific columns:
SELECT column1, column2
FROM table_name;

-- example:
SELECT username, age
FROM users;

-- To select data using a condition, use WHERE.
SELECT column1, column2
FROM table_name
WHERE condition;

-- example
SELECT username, age
FROM users
WHERE age = 28;