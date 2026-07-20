-- ORDER BY sorts the result of a query. It arranges the rows in ascending or descending order.

-- General syntax
SELECT column1, column2
FROM table_name
ORDER BY column_name;

-- By default, MySQL sorts in ascending order (ASC).


/*
ASC (Ascending)

Smallest → Largest

A → Z

Example
SELECT *
FROM users
ORDER BY age ASC;

| username | age |
| -------- | --: |
| Sarah    |  18 |
| Jack     |  25 |
| Mohammed |  28 |

DESC (Descending)

Largest → Smallest

Z → A

Example
SELECT *
FROM users
ORDER BY age DESC;

| username | age |
| -------- | --: |
| Mohammed |  28 |
| Jack     |  25 |
| Sarah    |  18 |
*/