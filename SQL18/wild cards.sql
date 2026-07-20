-- MySQL Wildcards = Wildcards are special characters used with the LIKE operator to search for patterns in text.

-- General syntax
SELECT *
FROM table_name
WHERE column_name LIKE 'pattern';

-- % = any number of characters , _ = exactly one character
/*
| Wildcard | Meaning               | Example                   |
| -------- | --------------------- | ------------------------- |
| `%`      | 0 or more characters  | `'M%'` → Mohammed, Mike   |
| `%`      | Ends with             | `'%n'` → John             |
| `%`      | Contains              | `'%oh%'` → Mohammed, John |
| `_`      | Exactly one character | `'J_ck'` → Jack, Jeck     |

'M%'    → starts with M

'%M'    → ends with M

'%oh%'  → contains "oh"

'J_ck'  → J + one character + ck

'A___'  → A + exactly 3 more characters
*/