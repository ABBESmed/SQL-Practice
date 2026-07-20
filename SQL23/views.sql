-- A VIEW is a virtual table created from a SELECT query. It stores the query, not the data.

-- how to create a view
CREATE VIEW view_name AS
SELECT column1, column2
FROM table_name
WHERE condition;

/*
Example

Suppose this table:

employees

| id | name    | salary |
| -: | ------- | -----: |
|  1 | Alice   |   3000 |
|  2 | Bob     |   4500 |
|  3 | Charlie |   5000 |

*/
CREATE VIEW high_salary AS
SELECT name, salary
FROM employees
WHERE salary > 4000;

-- now use it like a table:
/*
| name    | salary |
| ------- | -----: |
| Bob     |   4500 |
| Charlie |   5000 |
*/

/*
Other useful commands
Show the view = SELECT * FROM high_salary;


Update the view =
CREATE OR REPLACE VIEW high_salary AS   ( OR REPLACE change it if it already exists)
SELECT name, salary
FROM employees
WHERE salary >= 5000;


Delete the view = DROP VIEW high_salary;
*/