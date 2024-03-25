-- We can create databases by calling create Database and then the database name we want  
CREATE DATABASE myDB;

-- This is how we utilize databases we create. Use and then database name  
USE myDB;

-- We can alter databases to restrict access.
ALTER DATABASE myDB READ ONLY = 1;


-- this should give me an error since I set my database to read only. Databases can be set to read only using 1 (true)  or 2 (false) 
DROP DATABASE mydb;

-- To drop a database we need to make sure to alter our database and disable read only
ALTER DATABASE myDB READ ONLY = 0;

-- Only now will it let us drop our database
DROP DATABASE mydb; 