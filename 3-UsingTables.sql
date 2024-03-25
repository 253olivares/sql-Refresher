-- After creating our table we can select colomns to select our data using the * character
-- This will return everything in our table
SELECT * FROM employees;

-- If we want to select specific data then we want to specift the colomns we want to choose
SELECT first_name From employees;

--  if we want to change our table names then we use the rename tables queries  
Rename Table Employees TO Workers;

-- Changing employees table back to normal 
RENAME TABLE WORKERS TO EMPLOYEES;

-- if we wanted to drop a table then we would use DROP TABLE
-- DROP TABLE EMPLOYEES;

-- if we want to change our table and add a new column then we use add after calling ALTER TABLE
-- After calling add table we add the column name we want alongside the data type which in this case will be varchar 15 
ALTER TABLE EMPLOYEES 
ADD phone_number VARCHAR(15);

-- Then if we want to rename our column like for if some reason we gave it an incorrect name or typo then we call the alter table again
-- but this time we refrence rename column
ALTER Table employee
RENAME COLUMN phone_number to email;

-- Now our column has been changed from phone number to email but the data type still persists to what it was before
-- to  change our character type for a column we call 
ALTER TABLE EMPLOYEEs
Modify Column email Varchar(100);
-- This will change our phone_number varchar(50) to varchar(100)

-- Next modification is changing tables positioning we do this by calling our script from before and adding a postion at the end 
ALTER TABLE EMPLOYEES 
MODIFY COLUMN EMAIL VARCHAR (100)
FIRST;

-- TO modify after a column
ALTER TABLE EMPLOYEES 
MODIFY COLUMN EMAIL VARCHAR (100)
AFTER first_name;

-- and then last to drop our column we call drop column after alter table
ALTER TABLE EMPLOYEES 
DROP COLUMN EMAIL;
-- THis will remove email from our table.



