-- UNION combines the results of two or more SELECT queries into one result. It also removes duplicate rows.

-- General syntax
SELECT column1, column2
FROM table1

UNION

SELECT column1, column2
FROM table2;

/*
customers
| name     |
| -------- |
| Mohammed |
| Sarah    |

employees
| name  |
| ----- |
| Jack  |
| Sarah |

SELECT name
FROM customers

UNION

SELECT name
FROM employees;

| name     |
| -------- |
| Mohammed |
| Sarah    |
| Jack     |

Sarah appears only once because UNION removes duplicates.


If you want to keep duplicates, use UNION ALL.
SELECT name
FROM customers

UNION ALL

SELECT name
FROM employees;

| name     |
| -------- |
| Mohammed |
| Sarah    |
| Jack     |
| Sarah    |

Now Sarah appears twice.



Rules for UNION

The SELECT statements must have:

The same number of columns.
Compatible data types.

Correct:
SELECT name, age
FROM customers

UNION

SELECT name, age
FROM employees;

Incorrect:

SELECT name
FROM customers

UNION

SELECT name, age
FROM employees;

*/