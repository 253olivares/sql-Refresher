-- our autoincrement will have our sql automatically increate our integer value by one
-- this is usually bundled alongside when we declare our primary key. We tell sql we want our primary key to auto increment each time data is entered

create table transactions (
	transactions_id int primary key auto_increment,
    amount decimal(5,2)
);

-- if we want our increment to start from a specific number then we can alter our table and specify a starting point like below
-- we set our auto increment at 1000 so it will begin from their
alter table transactions
auto_increment = 1000;

insert into transactions (amount)
value(4.99);


select * from transactions