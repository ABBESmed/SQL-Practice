-- What is a TRIGGER? A TRIGGER is a saved SQL program that runs automatically when something happens to a table.
/*
What events can trigger it?

A trigger can run when:

INSERT → a new row is added.
UPDATE → a row is changed.
DELETE → a row is deleted.
*/

--General Syntax
CREATE TRIGGER trigger_name
BEFORE | AFTER INSERT | UPDATE | DELETE
ON table_name
FOR EACH ROW
BEGIN
    SQL statements;
END;

-- A TRIGGER is a saved SQL program that automatically executes before or after an INSERT, UPDATE, or DELETE event on a table.

-- employees
/*
| id | name  | salary |
| -: | ----- | -----: |
|  1 | Alice |   3000 |
*/
/*
logs

| message |
| ------- |

*/

-- create a trigger 
CREATE TRIGGER employee_added -- create something. create a trigger. trigger name.
AFTER INSERT -- Run after a new row is inserted.
ON employees -- The trigger watches the employees table. 
FOR EACH ROW -- Run the trigger once for every affected row.
BEGIN -- This is the SQL code that runs automatically.
    INSERT INTO logs(message)
    VALUES('New employee added');
END;

-- you run 

INSERT INTO employees(name, salary)
VALUES('Bob', 5000);

-- MySQL automatically runs the trigger. Now the logs table becomes:
/*
| message            |
| ------------------ |
| New employee added |
*/