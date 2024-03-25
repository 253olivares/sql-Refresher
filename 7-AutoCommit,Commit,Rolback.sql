-- Auto commit is a sql feature that lets us roll back our table after commits in the events we make an unwanted change
-- by defauly autocommit is et to on and will create a new restore point after every query

-- we can turn this off by setting our autocommit to off
set autocommit = off;

-- then we can create our own points by calling commit
commit;

-- doing this we can create when we create restore points now if I delete my table I can call roll back to restore our table to before it was deleted
DELETE FROM EMPLOYEES where employee_id = 1;
-- this should the data input 1

-- to return my table I just need to call ROLLBACK
ROLLBACK;
-- THis will return our table to whenever our commit was called.and

-- this should show the table as if nothing happened
Select * From EMPLOYEES;

-- for my use case I will change auto commit back to on 
set autocommit = on;