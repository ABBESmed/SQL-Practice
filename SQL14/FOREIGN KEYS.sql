/*
A FOREIGN KEY creates a relationship between two tables.
It makes sure a value in one table exists in another table.
*/

-- General syntax
CREATE TABLE table_name (
    column_name data_type,
    FOREIGN KEY (column_name)
    REFERENCES other_table(other_column)
);

-- Example
-- Suppose you have a users table:
CREATE TABLE users (
    id INT PRIMARY KEY,
    username VARCHAR(50)
);

-- Now create an orders table:
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    FOREIGN KEY (user_id)
    REFERENCES users(id)
);