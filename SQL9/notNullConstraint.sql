-- NOT NULL means: A column must always have a value. It cannot be NULL.
CREATE TABLE users (
    id INT,
    username VARCHAR(50) NOT NULL
);

-- This is allowed:
INSERT INTO users (id, username)
VALUES (1, "Mohammed");

-- This is not allowed:
INSERT INTO users (id, username)
VALUES (2, NULL);

-- ❌ Error, because username is NOT NULL.

-- Add NOT NULL to an existing column
ALTER TABLE users
MODIFY COLUMN username VARCHAR(50) NOT NULL;

/*
easy memory:
NOT NULL = value required
NULL = no value
*/