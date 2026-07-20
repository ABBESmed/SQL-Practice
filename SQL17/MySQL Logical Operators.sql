/*
MySQL Logical Operators
Logical operators combine multiple conditions in a WHERE clause.
*/

-- AND = Both conditions must be true.

-- General syntax
SELECT *
FROM table_name
WHERE condition1 AND condition2;

-- example
SELECT *
FROM users
WHERE age >= 18 AND country = 'France';

-- Show users who are 18 or older and live in France.





-- OR = At least one condition must be true.

-- General syntax

SELECT *
FROM table_name
WHERE condition1 OR condition2;

-- example 
SELECT *
FROM users
WHERE country = 'France' OR country = 'Spain';

-- Show users from France or Spain.




-- NOT = Reverses a condition.
-- General syntax
SELECT *
FROM table_name
WHERE NOT condition;

-- example

SELECT *
FROM users
WHERE NOT country = 'France';

-- Show users who are not from France.