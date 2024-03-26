-- Views
-- A virtual table based on the result-set of an sql statement
-- the fields in a view are field from one or more real tables in the database
-- theyre not real tables but can be interacted with as if they were

-- select * from employees;

-- this creates our view by giving it a name the the colomns it will be watching
-- create view employee_attendance as select first_name,last_name from employees;

-- after creating a view we just call it as if we were calling a table like normal
-- select * from employee_attendance;

-- our data is now watching this view and will update the data as it changes

-- select * from employee_attendance order by last_name asc;  
-- views can take in our order by and any other clauses just like our table to display data in asc or desc order based on what we select. 

-- once we are doing with views we can just delete it by dropping it
-- drop view employee_attendance;

-- for this next example we will alter our table to add an email
-- alter table customers
-- add column email varchar(50);

-- after adding an email column we will update it for every user to make sure they each have an email
-- update customers set email = "fredfish@gmail.com" where customers_id = 1;
-- update customers set email = "LLobster@gmail.com" where customers_id = 2;
-- update customers set email = "Bbass@gmail.com" where customers_id = 3;
-- update customers set email = "Ppuff@gmail.com" where customers_id = 4;

-- after every user has been given an email we will create a view
-- create view customer_emails as select email from customers;


-- with this view now if we update an email in our table that change will reflect in our view
-- views automatically update with all the users emails
select * from customer_emails;

-- insert into customers values (null, "Pearl", "Krabs", null, "PKrabs@gmail.com");
-- after inserting the new user that email should show up in our view since it is watching all the emails in our customer table
select * from customer_emails;

select * from customers