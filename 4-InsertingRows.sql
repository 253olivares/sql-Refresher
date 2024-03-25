-- T insert rows into our table to begin adding data we will use INSERT INTO

-- Call our database
use myDB;

-- after we are using the database we want we call the INSERT INTO to add rows of data into our column
-- for this we are going to enter one user
INSERT INTO EMPLOYEES
VALUES(null, "Eugene","KRABS",25.5, "2023-01-02");
-- (id,firstname, lastname, pay, hire date)
-- NOTE: for our first column  I had set it to auto increment so we do not need to pass a value over. We told the table at creation to auto increment this data and make it a priamry key
-- so our database will assing a unique id to this value wach time we insreat a data.

-- if we want to insert mulitple employees then we need to define multiple values when we insert for examples
INSERT INTO EMPLOYEES 
VALUES(null, "SPONGEBOB","SQUAREPANTS",20,"2023-01-02"), (null,"Squidward","tenticles",20,"2023-01-02"),(null, "Sandy", "Cheeks", 20,"2023-01-02");


-- if we wanted to just select specific entries then we ned to specify the columns we want
-- after specifing the table we are inserting into we define what those values are
INSERT INTO EMPLOYEES (first_name, last_name)
values("Plankton", "Benedict");

-- display our insert
SELECT * FROM EMPLOYEES