-- forgien key a key value that inserted into a table that is used to refrence data from a forgien table. 
-- this is key to creating complete database relationships. Creating a forgien keys causes tables to become intertwine
-- a side affect of creating these keys is that our database doesn not allow us to drop a row if another table depends on data inside said table. 

-- create table customers (
-- 	customers_id int primary key auto_increment,
-- 	first_name varchar(50),
--     last_name varchar(50)
-- );

-- insert into customers (first_name,last_name) values ("Fred", "Fish"), ("Larry", "Lobster"), ("Bubble", "Bass");

-- this is how we create a foreign key we are creating our transactions table andtransactions binding our customer id to our id column of the customers table
-- this way we are telling the program that these two tables are related to one another. Now if we decide to delete customers it wont allow us as transactions columnid is dependent on our customers table
-- Create table transactions (
-- 	transaction_id int primary key auto_increment,
--     amount decimal(5,2),
--     customer_id int,
--     Foreign Key (customer_id) references customers(customers_id)
-- );

-- if later we want to drop our foreign and get rid of our tables relationship with one another then we would use our alter table
-- ALTER TABLE transactions drop foreign key transactions_ibfk_1;
-- select table then tell it to drop the forgien key name

-- we can also assign foriegn keys to preexisting tables and give a unique name to those constraints when created. 
-- ALTER TABLE TRANSACTIONS add constraint fk_customer_id foreign key (customer_id) references customers (customers_id);

-- Alter table transactions auto_increment = 1000;

-- now when inserting data it is the same as before only diffrence is that it will not allow us if a customer does not exist
insert into transactions (amount, customer_id) values (4.99,3), 
								(2.89,2), 
								(3.38,3), 
								(4.99,1);

-- this wont work since we do not have a customer with an id of 300
insert into transactions (amount, customer_id) values (4.99,300);

select * from transactions;
