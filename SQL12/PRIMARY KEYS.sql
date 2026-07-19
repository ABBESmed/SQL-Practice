/*
A PRIMARY KEY is a column (or columns) that uniquely identifies each row in a table.
Every row must have a unique value, and it cannot be NULL.
*/

-- General syntax
CREATE TABLE table_name (
    column_name data_type PRIMARY KEY
);

-- Example
CREATE TABLE users (
    id INT PRIMARY KEY,
    username VARCHAR(50)
);
/*
This is allowed:
INSERT INTO users (id, username)
VALUES (1, 'Mohammed');

This is also allowed:
INSERT INTO users (id, username)
VALUES (2, 'Sarah');

This is not allowed:
INSERT INTO users (id, username)
VALUES (1, 'Jack');
Error, because id = 1 already exists.

This is also not allowed:
INSERT INTO users (id, username)
VALUES (NULL, 'Tim');
Error, because a primary key cannot be NULL.
*/
-- Add a primary key later
ALTER TABLE users
ADD PRIMARY KEY (id);

/*Easy memory
PRIMARY KEY =
✔ Unique
✔ NOT NULL
✔ Identifies each row
*/
