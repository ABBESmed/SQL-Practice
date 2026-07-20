-- A Stored Procedure is: A saved SQL program stored in the database. Instead of writing the same SQL again and again, you save it once and run it whenever you need it

-- general syntax

CREATE PROCEDURE procedure_name()
BEGIN
    SQL statements;
END;

-- Example Create a procedure:
CREATE PROCEDURE GetEmployees()
BEGIN
    SELECT *
    FROM employees;
END;

-- run the procedure:
CALL GetEmployees();

/*
| id | name  | salary |
| -: | ----- | -----: |
|  1 | Alice |   3000 |
|  2 | Bob   |   5000 |
|  3 | Jack  |   7000 |
*/