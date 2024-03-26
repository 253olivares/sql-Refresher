-- Roll up, extension of the group by clause
-- produces another row and shows the grand total (super aggregate value)


-- select * from transactions;

-- for example the code below executes a table that shows us our sum of sales each day
select sum(amount), order_date from transactions group by order_date;

-- adding roll up will then add one additional column that will add all our calculated sums at the bottom
select sum(amount), order_date from transactions group by order_date with rollup;

-- another example would be to use count instead of sum
-- with count we would be colling our total number of sales each day and then show the total number of sales across all days
select count(amount), order_date from transactions group by order_date;

select count(amount), order_date from transactions group by order_date with rollup;

select count(transaction_id) as "# of orders", customer_id from transactions group by customer_id; 

select * from transactions;

select * from customers;

-- this wouldnt work with roll up mas it has a tring in its name first name and last name all our columns would have to be integers
select count(a.transaction_id) as "# of orders",  a.customer_id, concat(b.first_name," ",b.last_name) as "Customer Name" from transactions as a left join customers as b on a.customer_id = b.customers_id group by customer_id;

