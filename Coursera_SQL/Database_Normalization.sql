__________________________________________________________________________________
Database normalization
It is a process that structures tables in a way that minimizes challenges.
like prevent the data duplication. 

DATABASE Normalization: so it is the process for structuring tables that minimizes challenges facing 
DATABASE systems . 
____________________________________________________________________________________________________
DATABASE normalization challanges:

->Insert anomly
->Update anomly
->Deletion anamoly

Insert anomaly: Insertion of one record leads to the insertion of several more required data sets. 

ex. like inserting a data in table where id is primary key so inserting the data in a table , we have to 
firsty insert the students data of id fields . 

Update anomaly: updating a record in a table column requires further updates in other  multiple columns. 
ex. for updating the department director which is common in a two row we alo have to update the other columns reocrds . 

Deletion anamolay: 
deletion of one records leads to the deletion of several more required data sets. or 
 removing the one instance of a reocrd of causes a deletion of the other records. 
***********************************************************************************************
DATABASE Normalization
**************************

database normalization optimizes the DATABASE design by creating a single purpose for each table. 


table of student records contains 
 student_id , student_name, course_name, course_credit, department_name, department_director, department_telNO;\
 here the table can be redesign or split into parts for each purpose ,
  
  like: student tbale having student_id, student_name column,
         course_table having course_name and course_credit 
         department_table having dept_name , department_direcotr, department_tel_no;
          
so it makes easier to write a sequel queries for search for, sort and analyze the data ,  
normalization aims to to minimize data duplications avoid errors during the data modifications . 

Types of normalization: 

--> First Normal form (1NF)
--> Second Normal form (2NF)
--> Third Normal Form (3NF)

***************************
First Normal: 
*****************
Enforce data atomicity  --(for removing the duplications in the data)
   to simplify the data structure of tables , the first normal form rules is apllied to enforce the 
   data atomicity rule and eliminate unnecessary repeating groups of data . 
  : The data atomicity rule means that you can only have one single instance value of the column attribute in 
   any cell of the table.

-->>after grouping the data in separate table where there is no repeating group of data. 
--finally creating a primary key for each table which we have created and then join the parts of the table 
--by foreign key . 

Data redundency and Data Inconsistency: 
  Instances of the repeated data is called the data redundency

*********************************
2nd Normal Form :
***************************

In the second normal form, you need to avoid any partial dependency relationships between data. 
Partial dependency refers to tables with a composite primary key.

Dependency:   
1). functional : it is the relationship between two attributes in a tables 
like a primary key or  the unique value column  value x is dependent on the other column value y

2). Partial Dependency : it reffers with the dependency with a composite primary key (combination of two ro more tables), if it depends only with 
the one column key attribute then it creates the partial dependency. 

a key that consists of a combination of two or more columns, where a non-key attribute value depends only on one part of the composite key.
 
 called partial dependency, which is not allowed in the second normal form. 
 This is because all non-key attributes should be determined by using both parts of the composite key, not only one of them.

 This can be fix by spilting the table into two parts , each spillted should have unique value . 


--so in the 2nd NF the table must be: 
--Each non-key attribute must be fully dependent on the entire PK and not on a subset of the PK
-- (i.e., there must be no partial dependency or augmentation).

 *****************************
 3rd Normal Form 
 *********************

 it must already be in the second normal form (2NF). In addition, it must have no transitive dependency. 
 This means that any non-key attribute in the surgery table may not be functionally dependent on another non-key attribute in the same table.
 /* 
  (In the surgery table, the postcode and the council are non-key attributes, and the postcode is dependent on the council. 
  Therefore, if you change the council value, 
 you must also change the postcode. This is called transitive dependency, which is not allowed in the third normal form.)
 */
 To fix it you can split this table into two tables: one for the region with the city and one for the surgery.   
 The third normal form is typically good enough to deal with the three anomaly challenges – insertion, update and deletion anomalies. 


Transitive dependency: 
  it means a non  key attributte can not be functionally dependent on the other another non key attribute. 
  like A relate to B and B relate to C . 
So  A non-key attribute cannot be functionally dependent on another non-key attribute.

****************************
Boyce-Codd normal form (BCNF):
 When a table has more than one candidate key, anomalies may result even though the relation is in 3NF.
 Boyce-Codd normal form is a special case of 3NF.
 A relation is in BCNF if, and only if, every determinant is a candidate key. 
 so we create the candidate key with the two separate TABLE in which one column is with the primary (candidate) key and also with the other column. 

*****************************
 Note: 
  Database Table should have the : 
-> Aim for the best possible database 
-> it ensure proper data structure 
-> Reduce application
-> allow for acurate data analysis and retrival 
