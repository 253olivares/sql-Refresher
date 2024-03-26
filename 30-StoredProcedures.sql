-- stored procedures -  prepared sql code that you can save. This feature is really resourceful for when theres a query that you write often 
-- helps alleviate writing code too many times.
-- this will be our example;
-- SELECT DISTINCT first_name, last_name
-- from transactions
-- inner join customers
-- on transactions.customer_id = customers.customers_id;

-- to call stored procedures we need to invoke our call key and then the name of procedure 
-- similar to when we make functions in javascript

-- Call get_customers();

-- to create a procedure we begin by using our create key and providing a name
-- then we define a start and end

-- delimiters let us change our ; to allow us to create procedures

-- Delimiter $$
-- -- using a delimter allows us to create our code snypit as it needs a ; to register the code in sql
-- create procedure get_customers()
-- Begin
-- 	select * from customers;
-- END $$
-- -- after we are fiinshed we set our delimter back to origin
-- Delimiter ;

-- now that we have created our procedure we can just invoke it with get customers
-- Call get_customers();

-- to drop our procedure we call our drop key
-- drop procedure get_customers;

-- a really cool features that procedures give us is that we can pass parameters in our () just like js
-- doing this we can create dynamic pieces of code that make it easy for us to repeat repetative lines of code when creating a modifying a table

-- creating our procedure with params

-- to add our params we need to use our IN key and define the data type we will be sending
-- in this case it will always be a integer
-- delimiter $$
-- create procedure find_customer(IN x INT)
-- begin
-- 	select * from customers where customers_id = x;
-- end $$
-- delimiter ;

-- now when we call our procedure all we need to do is just pass a number in our param
call find_customer(1);

-- create another procedure taking in 2 params
-- delimiter $$
-- create procedure find_customers(IN x varchar(50), IN y varchar(50))
-- begin
--  select * from customers where first_name = x AND last_name= y;
-- end $$

-- this will return fred fish
call find_customers("fred", "fish");

-- benefits to doing this
-- reduces network traffice
-- increases performance
-- secure admin can grant permisions to 

-- negative
-- increases memory ussage of every connections


