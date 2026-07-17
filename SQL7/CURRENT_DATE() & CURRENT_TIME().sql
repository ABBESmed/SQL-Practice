-- CURRENT_DATE() = Returns today's date.
CURRENT_DATE();
-- example:
SELECT CURRENT_DATE(); -- 2026-07-17
-- You can also insert today's date into a table:
INSERT INTO orders (order_date)
VALUES (CURRENT_DATE());


-- CURRENT_TIME() = Returns the current time.
CURRENT_TIME();
-- Example:
SELECT CURRENT_TIME(); -- Example output: 08:35:12
-- You can also insert the current time:
INSERT INTO logs (login_time)
VALUES (CURRENT_TIME());

-- There is also a third function you'll use a lot:
CURRENT_TIMESTAMP(); -- It returns both the current date and time, for example: 2026-07-17 08:35:12
-- Easy memory:
/*
CURRENT_DATE()      → date only
CURRENT_TIME()      → time only
CURRENT_TIMESTAMP() → date + time
*/

