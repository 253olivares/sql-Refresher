use mydb;

CREATE TABLE TEST (
	my_date Date,
    my_time Time,
    my_datetime datetime
);

SELECT * FROM TEST;

-- if we want to get our current date then we can use the current date function
-- same with current time using current time function
-- now will grab both our current date and time 
INSERT INTO TEST VALUES(CURRENT_DATE(), CURRENT_TIME(), now());

-- we can further manipulate our date by adding or subtracting 1
INSERT INTO TEST VALUES(CURRENT_DATE()+1, CURRENT_TIME()+10000, now()+100000000);

INSERT INTO TEST VALUES(CURRENT_DATE()-1, CURRENT_TIME(), now());
-- this will get us the day before or after depending on how much ur subtracting.

SELECT * FROM TEST;

DROP TABLE TEST;
