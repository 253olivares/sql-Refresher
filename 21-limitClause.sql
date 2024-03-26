-- limit clause can help limit the amount of data we recieve which is really usefull for pagination
-- and over all help keep data from getting clusered by helping us only focus on small segments of a data at a time.

-- limit can be used along side our other clauses like order by and where to help further filter our data

-- here we are selecting all our data
-- then we are ordering our data by last name so that last names on the lower end of our alphabet show up first 
-- then after we order our data we limit by one so we show the data at the very top that comes up usually last
select * from customers
order by last_name desc
Limit 1;

-- we can change our limit to show more or less data as needed
select * from customers
order by last_name desc
Limit 2;

-- along side setting a value for how much we want to limit our data we can also define an offset for our data
-- after defining our limit our second value defines our offset
select * from customer order by last_name desc limit 1, 2;
-- this will return our 3 row as we are showing only one row after skipping 2

-- this is where we can then handel pagnations
select * from customers limit 10, 10; 
-- we are telling sql to grab all our customers but only grab 10 data entriest after skipping the first 10

-- this would be good for example if we were viewing the second page of a user directory.

