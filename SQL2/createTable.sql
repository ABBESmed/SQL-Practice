-- The general syntax to create a table is:
CREATE TABLE table_name (
    column_name_1 data_type,
    column_name_2 data_type,
    column_name_3 data_type
);

--Example
CREATE TABLE users (
    id INT,
    username VARCHAR(50),
    email VARCHAR(100),
    age INT
);

/*
CREATE TABLE  → create a new table
users         → table name
id            → column name
INT           → data type (integer)
username      → column name
VARCHAR(50)   → text up to 50 characters
email         → column name
age           → column name
*/

-- To select and see all data from a table:
SELECT * FROM table_name;

-- example:
SELECT * FROM users;

-- Meaning:
/*
SELECT = read data
*      = all columns
FROM   = from this table
users  = table name
*/

-- To select only specific columns:
SELECT username, email
FROM users;

-- To rename a table in MySQL:
RENAME TABLE old_table_name TO new_table_name;

-- Example:
RENAME TABLE users TO customers;

-- u can also do it in this way:
ALTER TABLE old_table_name
RENAME TO new_table_name;

-- To delete a table completely:
DROP TABLE table_name;

-- Example:
DROP TABLE users;

-- Safer version:
DROP TABLE IF EXISTS users;

-- To add a new column to an existing table:
ALTER TABLE table_name
ADD column_name data_type;

-- Example:
ALTER TABLE users
ADD email VARCHAR(100);

-- You can also choose its position:
ALTER TABLE users
ADD email VARCHAR(100) AFTER username;

-- Or make it the first column:
ALTER TABLE users
ADD email VARCHAR(100) FIRST;

-- To rename a column in MySQL:
ALTER TABLE table_name
RENAME COLUMN old_column_name TO new_column_name;

-- Example:
ALTER TABLE users
RENAME COLUMN name TO username;

-- To modify a column’s data type or properties:
ALTER TABLE table_name
MODIFY COLUMN column_name new_data_type;

-- Example:
ALTER TABLE users
MODIFY COLUMN username VARCHAR(100);

-- You can also add rules: (like not null = value required , null = no value)
ALTER TABLE users
MODIFY COLUMN email VARCHAR(150) NOT NULL;