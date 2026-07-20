-- ON DELETE defines what MySQL should do to child rows when the referenced parent row is deleted.

-- general syntax

FOREIGN KEY (child_column)
REFERENCES parent_table(parent_column)
ON DELETE action;

/* 
parent table

| id | name  |
| -: | ----- |
|  1 | Alice |
|  2 | Bob   |

child table

| id | user_id | product |
| -: | ------: | ------- |
|  1 |       1 | Laptop  |
|  2 |       1 | Mouse   |
|  3 |       2 | Phone   |

orders.user_id is a foreign key that references users.id
*/


-- ON DELETE CASCADE

FOREIGN KEY (user_id)
REFERENCES users(id)
ON DELETE CASCADE;

-- If you delete Alice:

DELETE FROM users
WHERE id = 1;

/*
| id | name |
| -: | ---- |
|  2 | Bob  |

| id | user_id | product |
| -: | ------: | ------- |
|  3 |       2 | Phone   |


Alice's orders are deleted automatically.
*/

-- ON DELETE SET NULL
FOREIGN KEY (user_id)
REFERENCES users(id)
ON DELETE SET NULL;

/*
Delete Alice:
before | id | user_id | product |
| -: | ------: | ------- |
|  1 |       1 | Laptop  |
|  2 |       1 | Mouse   |
 
after
| id | user_id | product |
| -: | ------: | ------- |
|  1 |       1 | Laptop  |
|  2 |       1 | Mouse   |


Orders stay, but user_id becomes NULL.
*/

-- ON DELETE RESTRICT (or NO ACTION)
FOREIGN KEY (user_id)
REFERENCES users(id)
ON DELETE RESTRICT;

-- Try to delete Alice:

DELETE FROM users
WHERE id = 1;

-- MySQL says No! Because orders still reference Alice. 











