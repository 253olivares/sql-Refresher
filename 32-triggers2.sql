-- another file to continue to go over triggers

-- create table
create table expenses (
expense_id INt primary key auto_increment,
expense_name varchar(50),
expense_total Decimal(10,2)
);

-- select everthing from expenses
select * from expenses;

-- adding data to our table
insert into expenses
values (1,"salaries", 0),
		(2, "Supplies",0),
        (3, "taxes", 0);
--     

-- set our expense total based on total salaries from our employees table  

update expenses set expense_total = (select sum(salary) from employees)
where expense_id = 1; 

select * from expenses;

-- so now we will create a trigger that automatically does the above when it detects changes in our employee table

create trigger after_salary_delete
after delete on employees
for each row 
update expenses 
set expense_total = expense_total - old.salary
where expense_id = 1;

-- now that we hae a trigger for when we delete a employee when we delete one our trigger will update our expense
delete from employees where first_name = "Plankton";

-- now we will create a trigger for when we insert a new user

-- creating a trigger that will update our expenses when we add a new user

create trigger after_employee_added
after insert on employees
for each row 
update expenses 
set expense_total = expense_total + new.salary
where expense_id = 1;

-- now insert our new employee to test our trigger
 insert into employees values (null, "Patrick", "star",15,null,"Dunce","2023-01-30","5");

 Create trigger after_employee_update
after update on employees
for each row
update expenses
set expense_total = expense_total + (new.salary - old.salary)
where expense_id= 1;

update employees set hourly_pay = 100 where employee_id = 1;

select *  from expenses;

select * from employees;
