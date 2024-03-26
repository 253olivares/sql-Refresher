-- logical operators that are used to combine conditions

-- adding a new column for this table then setting a default of new hire and making sure to set this coluimn after hourly pay.
-- alter table employees add column job varchar(25) default "New Hire" after hourly_pay;
-- update employees set job = "Manager" where employee_id = 1;
-- update employees set job = "Fry Cook" where employee_id = 2;
-- update employees set job = "Cashier" where employee_id = 3;

-- and logical opperator checks to make just more than one conditions are true when creating a query

select * from employees where hire_date < "2023-01-05" and job = 'Fry Cook';


-- or logical only one condition must be true to return and display the information
select * from employees where job = "cook" or job = "cashier";

-- not returns all data that is false so fi we ask for a job  that is manger we return all jobs that are not mang
select * from employees where not job = "manager";

-- not can be used along side and as well to exlcude another condition so we can check for two diffrent jobs being false
select * from employees where not job = "manager" and not job = "cashier";

-- between can be used to return data where our select value falls between two selects contindtions
-- this can most commonly be used to check for conditions between two integers or two dates
select * from employees where hire_date between "2023-01-04" and "2023-01-07";
-- this should return all data entered where the hire date is betweeen the 4th and the 7th

-- in | we create a set and then tell our query to return data where our select column matches one of the values within the set created
select * from employees where job in ("Manager","Fry Cook","Cashier");
-- this should return our rows 1,2,3 and exclude everything that is not in our data set

-- our logical operator in can be stringed alongside not  to return everything that is now in our data set
select * from employees where job not in ("Manager","Fry Cook","Cashier");


