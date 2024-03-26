-- sub queries 
-- a query within another query
-- query (subquery)

-- ex: we want to compare all the employees hourly pay to the average pay
-- this is really good to dynamically update tables since we can later on change hour pay of an employee and this would through
-- our select below out of wack
select first_name, last_name, hourly_pay, (select avg(hourly_pay) from  employees) as "average pay" from employees;

-- now we are selectin data where the hourly pay is above average to find out where pay reduction needs to be made
select first_name, last_name, hourly_pay from employees where hourly_pay > (select avg(hourly_pay) from employees);

-- our subqury calculated our average and that number is what we are using to determine who is being paid above average
-- Translation :  select first_name, last_name, hourly_pay from employees where hourly_pay > 22;

-- new exmaples

select * from transactions;

-- ADDITIONAL NOTE
-- If we want to avoid repeats we can use the keyword distinct to remove any repeat values

-- Problem: we want to find the first name and last name of every customer who has palced an order
-- step one is to get our customer ids from transactions
select customer_id from transactions where customer_id is not null;
-- step 2 is make a query using our customers table where we will return our first name and last name of users who match our results of the qury above
select first_name, last_name from customers where customers_id IN ((select distinct customer_id from transactions where customer_id IS NOT Null));

-- our first query has going into our in clause to help us create a set of numbers for the ids we are looking for.
-- in this case users with the ids of 1 2 and 3

-- using not we can grab everyone who hasnt placed an order. this is a useful search to figure out who hasnt placed an order and why

select first_name, last_name from customers where customers_id not IN ((select distinct customer_id from transactions where customer_id IS NOT Null));
