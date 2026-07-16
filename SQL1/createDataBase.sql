-- SQL = structured query language used to create delete update retrieve data from database

-- How to create a DATABASE:
CREATE DATABASE database_name; -- database_name is what u name it 

-- think of database as folder that contain files (tables).

-- To use/select a database, write:
USE database_name; -- database_name is what u name it

-- To delete a database completely:
DROP DATABASE database_name; -- database_name is what u name it


-- ALTER = Change the structure of an existing table.

-- read-only database:
ALTER DATABASE database_name READ ONLY = 1;

-- To allow changes again (not read only):
ALTER DATABASE database_name READ ONLY = 0;
