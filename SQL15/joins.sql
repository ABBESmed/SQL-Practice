/*
A JOIN combines data from two or more tables.
It links tables using a related column (usually a PRIMARY KEY and a FOREIGN KEY).
*/

-- General syntax
SELECT columns
FROM table1
JOIN table2
ON table1.column = table2.column;

/*
users table

| id | username |
| -: | -------- |
|  1 | Mohammed |
|  2 | Sarah    |

orders table

| order_id | user_id |
| -------: | ------: |
|      101 |       1 |
|      102 |       2 |


*/

-- Query
SELECT users.username, orders.order_id
FROM users
JOIN orders
ON users.id = orders.user_id;

/*
| username | order_id |
| -------- | -------- |
| Mohammed | 101      |
| Sarah    | 102      |

*/

/*
Meaning

SELECT = choose columns to display

FROM users = start with the users table

JOIN orders = combine it with the orders table

ON users.id = orders.user_id
= match rows where the IDs are equal


users.id <=> table.column 
*/





-- 1. INNER JOIN = Meaning: Show only the rows that match.
SELECT *
FROM users
INNER JOIN orders
ON users.id = orders.user_id;

/*
users
| id | username |
| -: | -------- |
|  1 | Mohammed |
|  2 | Sarah    |
|  3 | Jack     |

orders
| order_id | user_id |
| -------: | ------: |
|      101 |       1 |
|      102 |       2 |

Notice:

Mohammed has an order.
Sarah has an order.
Jack has no order.

Show only the rows that match.

| username | order_id |
| -------- | -------- |
| Mohammed | 101      |
| Sarah    | 102      |

Jack is not shown because he has no order.

easy memory: INNER = only matches
*/



-- 2. LEFT JOIN = Show everything from the LEFT table (users), even if there is no match.


SELECT *
FROM users
LEFT JOIN orders
ON users.id = orders.user_id;

/*
| username | order_id |
| -------- | -------- |
| Mohammed | 101      |
| Sarah    | 102      |
| Jack     | NULL     |

LEFT = keep everything on the left
*/




-- 3. RIGHT JOIN = Show everything from the RIGHT table (orders), even if there is no match.

SELECT *
FROM users
RIGHT JOIN orders
ON users.id = orders.user_id;

/*
orders
| order_id | user_id |
| -------: | ------: |
|      101 |       1 |
|      102 |       2 |
|      103 |       5 |

There is an order for user_id = 5, but no such user exists.
result:
| username | order_id |
| -------- | -------- |
| Mohammed | 101      |
| Sarah    | 102      |
| NULL     | 103      |
The order is still shown because RIGHT JOIN keeps everything from the orders table

RIGHT = keep everything on the right
*/