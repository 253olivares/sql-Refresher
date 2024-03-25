SELECT * FROM EMPLOYEES;

-- To update row information of users in the table we can use the update Key word
-- we can select the table our Information is in tell it the what we want to set in this case our hourly pay to 10-25 and then
-- specify where we want this change to occure. In this case the row where our id is 7. We can also do queries based on names and other
-- identifiers but it will throw an error in workbench since the safest method to do this is to choose a id integer that is unqiue. 
UPDATE EMPLOYEES SET hourly_pay = 10.25 WHERE employee_id = 7;

-- we can also change mulitple columns at once by defining multiple values seperated by a comma
UPDATE EMPLOYEES SET hourly_pay = 10.50, hire_date="23-01-05" WHERE employee_id = 7;

-- if we want to remove our value for some reason we want to set our column value to null

update EMPLOYEES set hire_date = NULL where employee_id =7; 

-- we can delete columns by calling our delete from key words
-- after call our keyword we want to specifyt the table we want to delete from and then a condition
-- without a condition it will delete all our data from the table
-- this this case I will delete a row that is null
-- this row was created previously with no data. 
DELETE FROM EMPLOYEES WHERE first_name IS NULL;

SELECT * FROM EMPLOYEES;