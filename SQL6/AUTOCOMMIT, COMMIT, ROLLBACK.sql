/*
AUTOCOMMIT
By default, MySQL automatically saves every change.
*/
SET AUTOCOMMIT = 1; -- Every INSERT, UPDATE, or DELETE is saved immediately.


--To turn it off:
SET AUTOCOMMIT = 0; -- Now MySQL waits until you decide to save or cancel.

/*
COMMIT
COMMIT saves all changes permanently.
*/
--General syntax:
COMMIT;

--Example:
SET AUTOCOMMIT = 0;

UPDATE users
SET age = 29
WHERE id = 1;

COMMIT; -- meaning: COMMIT = save the changes permanently.

-- ROLLBACK = ROLLBACK cancels changes made since the last COMMIT.
SET AUTOCOMMIT = 0;

UPDATE users
SET age = 29
WHERE id = 1;

ROLLBACK; -- ROLLBACK = undo the changes.