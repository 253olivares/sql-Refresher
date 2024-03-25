
-- NOT NULL tells sql that this value should never be null so if we try to insert date that has a null column for this data set then it will return an error
 
-- we can set not nulls during table creation 

-- -- create table products (
-- -- 	product_id int unique primary key not null auto_increment,
-- --     product_name varchar(50) not null,
-- --     price Decimal(4,2) not null
-- -- );

-- we want to add this rule to an existing row then we do the below

-- to include the constaint not null we have to use alter table and modify to tell sql to make this row a not null row
Alter table products 
MODIFY price Decimal (4,2) not null;

-- now if we try to insert a row where price is null it will reject the query and return an error
INSERT into products 
values (null, "cookies",null)
