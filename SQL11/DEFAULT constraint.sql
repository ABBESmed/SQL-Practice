/*
A DEFAULT constraint gives a column a value automatically if you don't provide one.
If no value is entered, MySQL uses the default value.
*/

-- General syntax
CREATE TABLE table_name (
    column_name data_type DEFAULT default_value
);

-- Example
CREATE TABLE users (
    id INT,
    country VARCHAR(50) DEFAULT 'France'
);

-- Add a DEFAULT constraint later
ALTER TABLE users
MODIFY COLUMN country VARCHAR(50) DEFAULT 'France';

-- Easy memory = DEFAULT = use this value if none is provided

