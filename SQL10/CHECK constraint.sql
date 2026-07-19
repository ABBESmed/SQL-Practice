/*
A CHECK constraint makes sure a value follows a rule.
Only values that satisfy the condition are allowed.
*/
-- General syntax
CREATE TABLE table_name (
    column_name data_type,
    CHECK (condition)
);

-- Example
CREATE TABLE users (
    id INT,
    age INT,
    CHECK (age >= 18)
);

-- This is allowed:
INSERT INTO users (id, age)
VALUES (1, 25);
-- 25 >= 18
-- This is not allowed:
INSERT INTO users (id, age)
VALUES (2, 15);
-- Error, because 15 < 18.

-- Add a CHECK constraint later
ALTER TABLE users
ADD CHECK (age >= 18);

-- CHECK = value must follow a rule