/*
AUTO_INCREMENT automatically generates the next number for a column.
You don't have to enter the value yourself.
*/

-- General syntax
CREATE TABLE table_name (
    column_name INT AUTO_INCREMENT PRIMARY KEY
);

-- Example
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50)
);
-- The id values are created automatically. AUTO_INCREMENT = automatically increase the number
