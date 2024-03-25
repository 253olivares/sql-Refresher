-- JOINS -  clause that allows us to combine two or more tables and join depending on data that is shared betwen the two tables

-- insert into transactions (amount, customer_id) values (1,null);

-- insert into customers (first_name, last_name)
-- value ("poppy", "puff");

-- select * from transactions;

-- select * from customers;

-- inner join

-- this will create an inner join table it will dispaly all our transactions ids along side who the first and last name of the person who made the purchase is
Select * from transactions Inner Join Customers on transactions.customer_id = customers.customers_id;

-- if we want to specify columns we want to display then instead of using * we can tell sql which columns we want. This will make sorting much easier as we can only show the data we want specifically
select transaction_id, amount, customers_id ,first_name, last_name from transactions inner join customers on transactions.customer_id = customers.customers_id;


-- left join | now for a left join it will return all our data from the left table (first table) but then only return data from the right that matches our left table. 
-- so in these cases we may return data where customer id is null on the left table but nor return any data from the right table since nothing matches it.
select * from transactions left join customers on transactions.customer_id = customers.customers_id;

-- right join will do the same as left it will display all users from our right table (second table) but it will not display data from our left table if it doesnt match any ids from our right
select * from transactions right join customers on transactions.customer_id = customers_id;

-- outer join will get us everything that do not match between either table. 