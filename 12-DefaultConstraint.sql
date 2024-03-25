-- DEFAULT CONSTRAINT

-- The default constraints helps ensure missing data gets filled in with placeholder data when adding new rows. For exmaple if we are missing a name we can input a placeholder name for our table

-- before default
-- INSERT into products
-- values (null, "straw", 0.00),
-- 		(null, "napkin", 0.00),
--         (null, "fork", 0.00),
--         (null, "spoon", 0.00);
-- 		

-- DELETE FROM products WHERE product_id >= 10;

-- this is how we would create a default for our contraint.
-- add default to the end of the column we want to watch with this rule 
-- CREATE Table products (
-- 	product_id int unique primary key,
--     product_name varchar(25),
--     price decimal(4,2) default 0.00
-- );

-- if we want to add default to an exising table then we can just call alter table and alter the column we want. 
ALTER TABLE products alter price SET Default 0.00;

-- now when we add our items from abot again we have shorten our code to only need id and name columns since now price will just default to 0 when it doesnt find a 3rd param
INSERT into products (product_id, product_name)
values (null, "straw"),
		(null, "napkin"),
        (null, "fork"),
        (null, "spoon");
   
-- creating a new table we include default for our date and just have sql create a new date timestamp using now function

-- create table transactions (
-- 	transaction_id int auto_increment primary key,
--     amount decimal(5,2),
--     transaction_date datetime default Now()
-- );

-- insert into transactions (amount) value (4.99);
-- now when inserting our transactions into our database we just need to insert the amount as date is handled automatically along side id as well. 
-- insert into transactions (amount) value (2.89);

-- drop table transactions;
