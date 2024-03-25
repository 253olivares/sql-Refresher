-- primary key | this constraint allows us to label our column when we are 
-- doing this we are telling sql that our data entry is to be both unique and not null. Often time we label a column to be a indetifer for our data and if frequently used for creating table ids
-- each table can only ever have one primary key


-- PRIMARY KEY

-- When creating our tables we can define a primary key by calling it after our column name SQL registers this as a contraint and knows to label it as such 
create table transactions (
transaction_id int primary key,
amount decimal (5,2)
);

-- this will bounce an error since when creating our table it was already assigned as a primary key
-- if we want to add a primary key to an existing table then we can alter our data set
ALTER TABLE TRANSITIONS ADD CONSTRAINT PRIMARY KEY (transaction_id);

-- Then after we just insert values as normal 
insert into transactions values (1000, 4.99);

insert into transactions values (1001, 4.99);

-- this will bounce an error since our insert above has the same key. 
insert into transactions values (1001, 4.99);

-- this row needs to be label when insert if we do not add a auto increment constraint
-- for this table if I do 
insert into transactions values (null, 4.99);
-- it will give an error

-- when we add our auto increment contraint we can then not have to worry about the id and our sql will handle it on itself.

-- Display everything 
SELECT * FROM transactions;