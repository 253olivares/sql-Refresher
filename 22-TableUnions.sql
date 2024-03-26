-- union combines the results of two or more select statments

-- this is how we would combine our two tables 
-- the only problem  is that we cant just call * columns from our table since both tables have a diffrent number of colomns
-- to fix this we are only going to call specific colomns
select first_name, last_name from employees 
union
select first_name, last_name from customers;

-- union by defualt will get rid of all duplicates so if we want to include all dups then we have to call union all
select first_name, last_name from employees 
union all
select first_name, last_name from customers;