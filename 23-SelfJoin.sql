-- self join
-- self join lets us join another copy of a table to itself
-- used to cpare rows of the same table
-- helps display a heirarchy of data

-- alter table customers add referalId int;

-- update customers set referalId = 2
-- where customers_id in (3,4); 

select a.customers_id, concat(a.first_name," ", a.last_name) as "Fullname" , concat(b.first_name," ", b.last_name) as "Refered By" from customers as a left join customers as b on a.referalId = b.customers_id;
-- were creating a new table using our preexisting table and joining both of them to create a new table
-- this requires the use of creating a alias for our tables so we can tell the code which table columns from which table we want to display


-- second self join practice

-- alter table employees add supervisor_id int;

-- update employees set supervisor_id = 5 where employee_id in (3,2); 

-- update employees set first_name = "Sandy", last_name="Cheeks",job = "Assistant Manger" where employee_id = 5; 

-- Same as above but this time we are doing it with our employee table joining our table and displaying our supervisor name using data from our duplicated table
-- telling sql we want everything  from our first table and then just the first and last name from table 2
select a.*, concat(b.first_name, " ", b.last_name ) as "Supervisor Name" 
-- then define those tables as a and b
from employees as a inner join employees as b 
-- alternative : from employees as a left join employees as b (Will show everything from our left table showing krabs as well.)
-- telling sql that we want to joing these tables using our supervisor id and employee id
on a.supervisor_id = b.employee_id;