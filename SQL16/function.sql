--MySQL Functions = A function is something that takes a value, performs an operation, and returns a result.
-- General syntax:
FUNCTION_NAME(value);

-- Or inside a query:
SELECT FUNCTION_NAME(column_name)
FROM table_name;

/*
SELECT CURRENT_DATE();  2026-07-20
SELECT CURRENT_TIME(); 08:45:30
SELECT UPPER('mohammed');  MOHAMMED
SELECT LOWER('MOHAMMED'); mohammed
SELECT LENGTH('Mohammed'); 8

SELECT COUNT(*)
FROM users; 25 Returns the number of rows.

SELECT AVG(age)
FROM users; Returns the average age.

SELECT SUM(price)
FROM products; Returns the total of all prices.

SELECT MAX(age)
FROM users; Returns the largest value.

SELECT MIN(age)
FROM users; Returns the smallest value.


*/