-- wild card characters % _
-- These can be used to substitute one ore more characters in a string 

-- this will return nothing since nothing since none of our first names are not just s
select * from employees where first_name = "s";

-- using these wild card we can tell sql to return values that are similiar to what we are looking for 
-- for example

-- like allows us to search for patterns within our query
-- so this should return any inputs where the first name starts with the letter s.
select * from employees where first_name like "s%";

-- this can be used to search for values ending in s as well 
select * from employees where last_name like "%s";

-- we can add additional characters to these searches
select * from employees where first_name like "sp%";

-- this can be used with dates as well.  
select * from employees where hire_date like "2023%";

-- _ underscore would be used to search for words that have similar letters. This is more contraintive than % since it requires u knowing the length of the work and where the input values are
-- ex:

-- we are searching for data where job is similiar to cook. our imput is ook and sql just has to match the one space
-- this wouldnt work  if we did _ook_ instead cuz now its looking for a 5 letter word instead
select * from employees where job like "_ook";

-- and ideal situation for our _ wild card wouild be searching for dates since our format will always be the same

 select * from employees where hire_date like "____-__-_2";
 -- this will retue everything since all our inputs have a hire date of 2023-01-02
 
 -- using both wildcard operators can help alleviate any issues with _ as we can use % to tell our query to search data where our value has a specifc character at its set location and any space after that 
 select * from employees where job like "_a%";