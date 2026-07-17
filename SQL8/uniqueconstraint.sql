-- UNIQUE means: The same value cannot appear twice in that column.
--Example:
CREATE TABLE users (
    id INT,
    email VARCHAR(100) UNIQUE
);
-- Now this is allowed:
INSERT INTO users (id, email)
VALUES (1, "mohammed@gmail.com");
-- But this is not allowed:
INSERT INTO users (id, email)
VALUES (2, "mohammed@gmail.com");
-- Because the email already exists.
-- Easy memory: UNIQUE = no duplicate values

-- You can also add it later:
ALTER TABLE users
ADD UNIQUE (email);