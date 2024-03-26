-- order by clause
-- this can change how our data is displayed since usually it is sorted by id
-- we can change their order by using order by
-- when calling order by we can specify the table we want to order them by and describe if descending order and asccending
-- if we are working with strings it will sort alphabetically
-- if by date then it will order them by as the name implies dates
-- if they are integers then it will order by smallest to highest

-- if we tell sql that we want our data to be desceding then it will flip our 
select * from employees order by last_name asc;

-- in instances where columns will share the same value then we can add another param to check the date so if amount is the same then it will check the id to see which data comes first.
select * from transactions where amount < 4.99 order by amount asc, customer_id;

-- select * from transactions where job = "New Hire";
-- order by amount, customer_id;