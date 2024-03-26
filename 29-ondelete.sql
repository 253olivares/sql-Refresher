-- on delete set null = when a fk is deleted replace dk with null 
-- on delete cascade = when a fk is dleted, delete row

-- on delete lets us delete rows the rely on foriegn keys and replace the deleted key or delete the row that is attached to our deleted row.


-- when deleting inputs that have forgein keys that rely on our table sql will not let us
-- deleteing a customer with the id of 4 will return an error as our transactions table requires a customer
-- Delete from customers where customers_id = 4;
-- Select* from customers

-- if we wanted to force a delete we could disabled foreign key checks
-- set foreign_ket_checks = 0;
-- This would disable checks for forgein keys which is something we do not want.

select * from transactions;

-- on delete set null will make it so we can delete forgein keys but when we do it will set the areas that previously add that value to null

-- to do this we need to add on delete set null as a constraint to do this we
-- create table transactions (
-- 	transaction_id int primary key,
--     amount Decimal(5,2),
--     customer_id INT,
--     order_date Date,
--     -- adding our constraint
--     -- it as added when we assign ou forgein key
--     foreign key (customer_id) references customers(customers_id)
--     -- create our forgein key and then set our on delete set null	
--     on Delete set null
-- );

-- drop our foreign key
-- alter table transactions drop foreign key fk_customer_id;

-- this is how we add our on delete set null constraint
-- alter table transactions add constraint fk_customer_id foreign key (customer_id) references customers(customers_id) on delete set null;

-- now when we run this our on delete set nul constraint changes our forgein key to null
-- delete from customers where customers_id = 4;

-- to do cascade we run the same code but instead of set null we replace it with cascade
alter table transactions add constraint fk_customer_id foreign key (customer_id) references customers(customers_id) on delete cascade;

select * from transactions;

-- now when we delete it will remove our data that is tied to our foreign key
delete from customers where customers_id = 4;


