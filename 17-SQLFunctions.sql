-- functions | My sql has some built in functions that let us run mathematical processes within our query
 -- https://www.w3schools.com/mysql/mysql_ref_functions.asp list of sql functions
 
 -- count can be used to count the number of rows within our amounr coluimn 
 select count(amount) as "Total rows of amount" from  transactions;
 
 -- we can couple this with our where to return counts of a speciftransactionstransactionsic condition
 select count(amount) as "total sales above 5$" from transactions where amount >= 4.99;
 -- this should return 2 as we have 2 data entries where our amount is 4.99 and above
 
 
 Select max(amount) as maximum from transactions;
 -- this should return our highest value from our transactions;
 
  Select min(amount) as mininum from transactions;
 -- this should return our lowest value from our transactions;
 
 select avg(amount) as average from transactions;
 -- should return our average
 
 select sum(amount) as sum from transactions; 
 -- should return our total sum of all our transactions
 
 select * from employees;
 
 -- concat function lets us combine functions and create a new function
 select employee_id, concat(first_name," ", last_name) as full_name , hourly_pay, hire_date from employee
 -- we can use concat along side when calling our other column names  