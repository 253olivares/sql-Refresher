-- CHECK constraints this allows us to create a rule for our column that as the name implys makes sure we check the value we are inserting clears our requirment

CREATE TABLE employess (
	employees_id INT,
    first_name Varchar(50),
    last_name varchar(50),
    hourly_pay decimal(5,2),
    hire_date date,
		-- What were doing is creating a constraint and assigning a name then calling our check key to create the rule in this case we are checking if hourly pay is greater than 10 to set a baseline
    CONSTRAINT chk_hourly_pay Check (hourly_pay >= 10.00)
);

-- if we want to add a constraint to an existint table then we can alter our table
-- ALTER TABLE employees ADD constraint chk_hourly_pay CHECK (hourly_pay >= 10.00);

SELECT * FROM employees;

-- this should trigger our constraint and prevent from inserting this row
-- alongide preventing us it should return an error telling us that our constraint has been violated and we are not following the set rule
insert into employees 
values (
	null, "Plankton", "Sheldon", 9, "2023-01-09"
);

-- if we want to drop our check then we need to call our alter table
ALTER TABLE employees
DROP Check chk_hourly_pay;

