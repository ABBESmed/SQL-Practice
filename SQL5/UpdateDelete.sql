-- UPDATE General syntax:
UPDATE table_name
SET column1 = value1, column2 = value2
WHERE condition;

-- Example:
UPDATE users
SET age = 29
WHERE id = 1;

/*
UPDATE → modify existing data
SET    → assign new value(s)
WHERE  → choose which row(s) to update
*/

-- DELETE General syntax: 
DELETE FROM table_name
WHERE condition;

-- Example:
DELETE FROM users
WHERE id = 1;

/* Meaning:
DELETE FROM → remove row(s)
WHERE       → choose which row(s) to delete
*/