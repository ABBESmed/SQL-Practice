-- The general syntax to insert a row into a table is:
INSERT INTO table_name (column1, column2, column3)
VALUES (value1, value2, value3);

-- Example
INSERT INTO users (id, username, age)
VALUES (1, "Mohammed", 28);

/*
INSERT INTO → insert a new row
users       → table name
(id, username, age) → columns to fill
VALUES      → the data to insert
(1, "Mohammed", 28) → values for those columns
*/

-- insert multi rows:
INSERT INTO table_name (column1, column2, column3)
VALUES
(value1, value2, value3),
(value1, value2, value3),
(value1, value2, value3);

-- Example:
INSERT INTO users (id, username, age)
VALUES
(1, "Mohammed", 28), -- row 1
(2, "Sarah", 25), -- row 2
(3, "Jack", 30); -- row 3