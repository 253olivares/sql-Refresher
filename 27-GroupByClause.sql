-- Group By ==  aggregates all rows by a specific column often used with aggregate functions
--  		ex: sum(), max(), min(), avg(), count()

-- select * from transactions;

-- adding more values for example
-- alter table transactions add column order_date Date default "2023-01-01";

-- insert into transactions values (null, 2.49, 4, "2023-01-03"),
-- (null, 5.48, null, "2023-01-04");

-- update our table for the exmaple
-- update transactions set order_date = "2023-01-06" where transaction_id in (1001,1002);

-- for this example: We want to figure out our total sum of amounts of money made per day in our table
-- select * from transactions 

-- selecting our total amount of the day and the order date from transicionts grouped by order date
select sum(amount), order_date from transactions group by order_date;

-- get the highest order each day
select max(amount), order_date from transactions group by order_date;
-- get smallest order each day
select min(amount), order_date from transactions group by order_date;
-- get our avg sales for each day
select avg(amount), order_date from transactions group by order_date;
 -- get total number of sales each day
select count(amount), order_date from transactions group by order_date;

-- Extra note to make about our groub by is that this clause does not work with where
-- instead of where we need to use having
-- for example search number of visits each person has

-- this will get us our users who have visited more than once
select count(amount), customer_id from transactions group by customer_id having count(amount) >  1;

-- if we want to remove null results
select count(amount), customer_id from transactions group by customer_id having count(amount) >  1 and customer_id is not null;