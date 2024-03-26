-- triggers =  when an event happens we create triggers to do soemthing
--         ex: on insert, update, or delete
-- 				we can tell sql to check data, handle errors and audit tables

-- for example whenever we add a new employee we want o change our employee salary

-- adding salary for example
alter table employees add column salary decimal (10,2) after hourly_pay;
select * from employees;

-- add salary to our users
update employees 
set salary = hourly_pay * 2080;
select * from employees;


-- now to create a trigger that automatically does our function above when we add a user
create trigger before_hourly_pay_update
before update on employees
for each row
-- we have to tell sql we are referencing to hour new values
set new.salary = (New.hourly_pay * 2080);

-- now when we upate our tables hourly pay sql will update our salary automatically

update employees set hourly_pay  = 50 where employee_id = 1;
update employees set hourly_pay = hourly_pay + 2;
select * from employees;

-- new example

-- calculate salary when we insert a employee
create trigger before_hourly_pay_insert
Before Insert on employees
for each row
set new.salary = (new.hourly_pay * 2080);

-- with this new trigger whenever we add a new user it will automatically calculate a salary for our users
insert into employees (
employee_id, first_name, last_name, hourly_pay, job, hire_date, supervisor_id
) values (
null, "Plankton", "Sheldon", 10, "Cleaner", "2023-01-20",1
);

select * from employees;
