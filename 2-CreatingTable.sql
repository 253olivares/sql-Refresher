-- CREATE DATABASE myDB;

-- use our myDB database  
USE myDB;

-- Then to create a table we tell sql we want to make a table and the colomns we want
-- For this exmaple we are going to create a employee id, First name, Last name, hourly pay, and hire date   
CREATE TABLE EMPLOYEES (
	employee_id INT auto_increment PRIMARY KEY,
    first_name varchar(50),
    last_name VARCHAR(50),
    hourly_pay DECIMAL(5,2),
    hire_date date
);