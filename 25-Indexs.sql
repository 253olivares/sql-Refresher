-- INDEX (BTREE data structure)
-- Indexes are used to find values within a specific column more quickly
-- mysql normally searches sequentally through a column
-- the longer the column, the more expensive the operation is
-- update takes more time, select takes less time

-- this would be benefitial for tables that are searched in frequently so for example our customer table would be good to index. 
-- our transactions table would not be a food match since we are writing into it and updating it frequently

-- we can existing indexs by calling our table
show indexes from customers;
-- by default when a table is create and data is inserted a index is created of the primary key if select

-- if we wanted to create an index we can execute the followinf code below
-- create index (index name) on (Table(column))
create index last_name_idx on customers(last_name);

show indexes from customers;

-- an additional feature given to use is create a mulit column index for instances where we search for data using multiple inputs and columns
-- ex:
create index last_name_first_name_index on customers(first_name, last_name);
-- this should give a multi column index where it will search through first name first and then last name

-- we can drop our last name now that we have a milit column index
-- to this this we use alter table and drop our last name idx

alter table customers drop index last_name_idx;

show indexes from customers;