

--Order by Clause:

-- used for ordering and sorting the data

-- sorting the data in the differnet forms 
-- How ASC and DESC keywords behave when  uswed to short the data

--Syntax:
SELECT COLUMN1, COLUMN2, COLUMN3 from TABLE_name order ORDER by COLUMN_name ASC | Desc;


--Order by column for multiple syntax:
SELECT COLUMN1, COLUMN2, COLUMN3 from TABLE_name  ORDER by COLUMN1 ASC, column2 DES;

SELECT * from TABLE_name ORDER BY column1 , column2 ASC|DESC; -- not executing in the mysql
-- if the ASC or DSC is not mentioned the default order will be the ASC 
--Numeric data is ascending or descending in the order of numerical ordrer and 
-- String data sorts the data in the aplhabetical order

/*
Consider sorting the data by the City column which has a text data type of VARCHAR.
 If you want to sort the customer data by city, use the following SELECT statement:

 SELECT * 
FROM customers 
ORDER BY City;   
  -- and the ordering will happen in the asc.


*/


--2-->
/*  Where clause:

it filter and retrieve the  records/data of the tables that meet a specific conditions 

syntax;

--select column1, column2,.... from table_name where condition; 

*/
condition is use for the criteria of the filter

operand follow the operator
operand: it can be either a text value or numeric value 
operator:  1. comparison operaotr=, < , >, <= ,etc.
          2). Between  : It can filter records within numeric or time and date range 
          3). Like : it is used to specify a pattrn within a search criteria. 
          4) IN : it specify the multiple possibel values for COLUMN
          , and operators 
          6) !< checks if the value of the left operand is not less than the value of the right operand. If yes, then condition becomes true.
          7) !>

SELECT column1, column2 from table_1 where name='john';

SELECT FROM table_name where faculty(column_value) LIKE 'sc%'

--the '%' percentage is a wild card character that represents 01 or multiple character.
-- '_' UNDERSCORE used to represents the one single charracter.

select from students_info where country IN('UK', 'India');

--In operator specify the multiple possible value in that column


--_##################  Logical operators  ################


/*
1) ALL

Used to compare a single value to all the values in another value set.

2). AND

Allows for the existence of multiple conditions in an SQL statement's WHERE clause.

3) ANY

Used to compare a value to any applicable value in the list as per the condition.

4)  BETWEEN

Used to search for values that are within a set of values, given the minimum value and the maximum value.

5) EXISTS

Used to search for the presence of a row in a specified table that meets a certain criterion.

6) IN

Used to compare a value to a list of literal values that have been specified.

7) LIKE

Used to compare a value to similar values using wildcard operators.

8) NOT

Reverses the meaning of the logical operator with which it is used. For example: NOT EXISTS, NOT BETWEEN, NOT IN, etc. This is a negate operator.

9) OR

Used to combine multiple conditions in an SQL statement's WHERE clause

10) IS NULL

Used to compare a value with a NULL value.

11) UNIQUE

Searches every row of a specified table for uniqueness (no duplicates).

*/

Examples:  
 SELECT * from students_info where age >20 and country ='India' or country='UK';