/*
What is a SUBQUERY?

A SUBQUERY is:

A query inside another query.

Think of it like this:

Main Query
     │
     └── Subquery
*/


-- general syntax 
SELECT column_name
FROM table_name
WHERE column_name = (
    SELECT column_name
    FROM another_table
);

-- example
/*
table employees
| id | name  | salary |
| -: | ----- | -----: |
|  1 | Alice |   3000 |
|  2 | Bob   |   5000 |
|  3 | Jack  |   7000 |

SELECT name   /*
FROM employees  query
WHERE salary */  /* = (
    SELECT MAX(salary)  sub query
    FROM employees  */
);
*/

-- A SUBQUERY is a SELECT statement inside another SQL statement.