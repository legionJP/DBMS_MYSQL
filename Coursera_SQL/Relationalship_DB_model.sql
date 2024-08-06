
/*____
________________________________________________________________________________________________________________
Three relatonship Mopdel:   the model is built on three concepts : 1. Data, 2. Realtionships and 3) Constraints 

1). One to Many : a records of a table can to linked to multiple table's rows with another , Like a student enrolled in a multiple course 
from student_id to course_id table.


2). One to One: in this the one table is associates with another table with a one single record in a tabel 

3). Many to many : in this the one record of a table is assciated with the multiple record wof a another table. 

Example- like: Many students are supervised by a many  staff and a student can have many projects. 
____________________________________________________________________________________________________________________________
*/

Concepts of relation Model in DATABASE : 

1). Realtion:   A relation represents a file that stores data. It’s also known as a table. Within a table there are rows and columns.
 Each row represents a group of related data values.
 -- A row, or record, is also known as a tuple. 
 --Columns in a table are also known as fields or attributes. These columns define or describe a row. 
 Therefore, a record or a row consists of a set of attributes.

2). Column:  A table stores pieces of data or facts as columns. In other words, the principal storage unit of a database is a column (attribute).
 ID, First Name and Last Name are columns. The ID numbers, first names and last names are instances or pieces of data 

 3). Domain: The domain is a set of acceptable values that a column is allowed to contain. The domain depends on the data type of the column.
  Namely whether it is numeric, or text based. 
4). Record or tuple
A record, also known as a tuple, is a row within a table.

5). Key
Each row or tuple has one or more attributes, known as a relation key, 
that can uniquely identify a specific row. This is also known as the primary key.

There are tYpe of keys like: primary, secondary , candidate key also, foreign key. 

6). Degree
Degree is the number of columns or attributes within a relation.
 A student table that stores the student's name, address, phone number and email address would have a degree of four.

7). Cardinality: number of records

Cardinality refers to how many records there are within a particular table in a database. If you have 100 students in your student table,
 with all their information organized into individual rows, then that table has a cardinality of 100.

8). What are constraints?

In the relational model, every relation needs to meet three conditions. 
These three conditions must be met for a relation to be valid. They are called relational integrity constraints and they are: 

Key constraints 

Domain constraints 

Referential integrity constraints 


9). Key constraints
The key constraint revolves around the key attribute(s). 
In the relational model, a key attribute is an identifier that can be used to refer to a record. It must also be unique for each record.

10). Domain constraints
Domain constraints are all about the requirement of inserting values that have a valid data type. 
There are a variety of data types that can be included within a table, namely numeric, text and data,
 in the case of the example. If an attempt is made to store an incorrect data typed value to an attribute

 11). Referential integrity constraints
A database has multiple tables that refer to one another.

 Referential integrity constraints are based on the concept of foreign keys.

*******************************************************************************************************************
Composite Primary key :
_______________________
 A combination of multiple attributes

 When there is no unique values than we can combine two columun can make these key as a composite primary key.

*************************************
foreign Key

--> A foreign (external) key columun used to connect a two table and create a cross refrencing between them. 


foreign key is a one or more columun that used to connect two tables to create cross refrencing between them.
one table can have the multiple foreign key.  
one to one realtionship. 


*/
To create this relationship in the actual database you need to modify the vehicle table structure to make the owner ID a foreign key.

ALTER TABLE vehicle ADD FOREIGN KEY (ownerID) REFERENCES owner (ownerID);
*/

# Adding a Named Foreign Key Constraint to an Existing Table

--ALTER TABLE Orders
ADD CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID) REFERENCES Persons (PersonID);

#Dropping a Named Foreign Key Constraint

--ALTER TABLE Orders
DROP CONSTRAINT FK_PersonOrder;

# Advantages to naming your constraints:

1.
Clarity in Error Messages:
 When a constraint is violated, the error message will include the constraint name. 
If the name is clear and descriptive, it makes it easier to understand the issue. 
For example, an error message mentioning FK_PersonOrder is more informative
 than one mentioning a system-generated name like FK__Orders__PersonID__123456781.

2. Ease of Maintenance:
 Named constraints make it easier to modify or drop them later. If you need to change or remove a constraint, having a specific name allows you to reference it directly. For example:
SQL

ALTER TABLE Orders DROP CONSTRAINT FK_PersonOrder;