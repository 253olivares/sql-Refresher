-- gets everything in our table
SELECT * FROM EMPLOYEES;

-- When selecting data from our tables we can specify what we want to not return the entire table.
SELECT first_name, last_name From EMPLOYEES;

-- we can filter our queries by using the where operator
-- First we call the column we want to filter then the values wer are filtering for
SELECT * FROM EMPLOYEES WHERE employee_id = 1;
-- this will return the employee with the id of 1

SELECT * FROM EMPLOYEES WHERE first_name = "Spongebob";

-- we can use common math operators that we used in other langauges just as js 
-- < Less than > greater than <= less than or equal to >= greater than or equal too != does not equal 
SELECT * FROM EMPLOYEES WHERE hourly_pay > 23;

SELECT * FROM EMPLOYEES WHERE hire_date <= "2023-01-01";

-- we can string our searches by using and or for example below
SELECT * FROM EMPLOYEES WHERE EMPLOYEE_ID >= 1 AND EMPLOYEE_ID <=3;


-- we can also search for rows that do no have entries
SELECT * FROM EMPLOYEES WHERE hire_date IS Null;