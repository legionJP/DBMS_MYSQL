--Operators in SQL
 these are the words/charcters  which are used to perform the activities in a database 

 -- Operators perform differnt types of activities like comaprison and other repetive info.

 Airthmetic Operators : 
  these are used to perform mathematical calculations in a database 

  Examples:1). "+" for the addition operator: SELECT 10+25;
            2)."- "  for the subtarction operator :
            3). "*": for the multiplication 
            4). "/" : for the division
            5). "%": for the modulus operation : provides the reminder value of the divison: SELECT 100%10;

--Using the the airthmetic operator :

--Addition Operator:

 select column1+columun2 FROM TABLE_name;

 -- Retrieving the data where sum of two column matched the wour criteria;
 SELECT * FROM employee where salary+allownce = 42000;

 --Using the subtraction operator

 SELECT column1- COLUMN2 from table_name;

 --perfroming the operation
  SELECT salary-tax from employee;


--Using the multiplication operator

SELECT allownce*2 from employee;

SELECT * from employee where allownce*2 or salary*2 = 32000;

--Using the division operator
like finding the percentage of the two values 
 
1). SELECT allownce/salary*100 from employee;

2). SELECT *  

FROM employee 

WHERE allowance / salary * 100 >= 5;



--Using the modulus operator

The modulus operator (%) behaves as it’s 
expected in SQL by giving the remainder when the numerical values of one column is divided by the numerical values of another column

select column1%column2 form TABLE;

select * FROM employee WHERE salary%2=0;


--SQL comparispon Operators 

-- used to compare two values or expression an resulting the value in the true or false 
-- These are used to filter ,Include, Exclude, compare  the data .
--SQL comparison operators can only perform calculations that return true or falseresults.

Types of operator :
 Equale TO =
 Less than, <
 Greater than: >
 Less than or equale TO: <=
 greater than or equale to ; >=
 Not equale TO, <>  OR != 


--Examples:

SELECT * from employee where salary = 12000;
SELECT * from employee where salary<12000;
--using the not eqaul to comparison

SELECT * from employee where salary<>24000;

select LPAD(ename,15) from emp;

