-- UNIQUE means: The same value cannot appear twice in that column.
--Example:
CREATE TABLE users (
    id INT,
    email VARCHAR(100) UNIQUE
);