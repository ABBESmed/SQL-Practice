/*
What is an INDEX?

An INDEX makes searching data faster.

Think of a book:

Without an index
Read every page

With an index
Go directly to the page

MySQL indexes work the same way.
*/

-- General Syntax Create an index

CREATE INDEX index_name
ON table_name(column_name);

-- example 
CREATE INDEX idx_email
ON employees(email);

-- show indexes 
SHOW INDEXES
FROM table_name;

-- delete an index
DROP INDEX index_name
ON table_name;


-- Database = A collection of tables