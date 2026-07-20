-- Imagine you have one table:
-- employees
/*
| id | name    | manager_id |
| -: | ------- | ---------: |
|  1 | Alice   |          - |
|  2 | Bob     |          1 |
|  3 | Charlie |          1 |
*/

/*
Bob has:

manager_id = 1

Question:

Who is employee 1?

Look in the same table:
| id | name  |
| -: | ----- |
|  1 | Alice |

Alice is Bob's manager.
*/

/*
Why SELF JOIN?

Because you need to look at the same table twice.

First time → to get the employee.
Second time → to find the manager.

Think of it like this:

employees
     │
     ├── Employee
     └── Manager

It's one table, but you're looking at it in two different ways.
*/

SELECT e.name, m.name -- Choose what you want to display: e.name = employee’s name , m.name = manager’s name
FROM employees AS e -- Use the employees table and temporarily call it e.
JOIN employees AS m -- Use the same table again, but temporarily call it m.
ON e.manager_id = m.id; -- match employee’s manager_id = manager’s id