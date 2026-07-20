-- What is GROUP BY? GROUP BY groups rows that have the same value.

-- general syntax
SELECT column_name, aggregate_function(column_name)
FROM table_name
GROUP BY column_name;

/*
| id | name  | department | salary |
| -: | ----- | ---------- | -----: |
|  1 | Alice | IT         |   3000 |
|  2 | Bob   | HR         |   4000 |
|  3 | Jack  | IT         |   5000 |
|  4 | Sarah | HR         |   3500 |
|  5 | Tom   | IT         |   4500 |
Count employees in each department


SELECT department, COUNT(*)
FROM employees
GROUP BY department;
*/