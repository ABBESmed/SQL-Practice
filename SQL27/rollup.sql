/*
What is ROLLUP?

ROLLUP adds totals to the result.

Think of it like Excel:

IT  → 3 employees
HR  → 2 employees
------------------
Total → 5 employees

That Total row is what ROLLUP adds.
*/

-- General Syntax
SELECT column_name, aggregate_function(column_name)
FROM table_name
GROUP BY column_name WITH ROLLUP;

/*
| id | department | salary |
| -: | ---------- | -----: |
|  1 | IT         |   3000 |
|  2 | HR         |   4000 |
|  3 | IT         |   5000 |
|  4 | HR         |   3500 |
|  5 | IT         |   4500 |

without rollup 
SELECT department, SUM(salary)
FROM employees
GROUP BY department;

| department | SUM(salary) |
| ---------- | ----------: |
| HR         |        7500 |
| IT         |       12500 |

with roll up 

SELECT department, SUM(salary)
FROM employees
GROUP BY department WITH ROLLUP;

| department | SUM(salary) |
| ---------- | ----------: |
| HR         |        7500 |
| IT         |       12500 |
| **NULL**   |   **20000** |

*/