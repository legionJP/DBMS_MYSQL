 --Table:  A table is known as a entitty in a conceptual or logical way, made up of rows and columun and these have relations,\
   -- Object oriented DB or entitty : entity is object that is attributes that are like columns or fields : 
   --each columun: hold the different types of data like numeric and string and tables

   --Rows: 
   --cloumns and fields forms a rows in a relational database technology .  Rows also reffered as the tupels.
  
  -->
 --  Data types : in many DB as  they supports are the : String , Numeric, and the Ddate and time 

--Domain:
--> A domain is a set of legal values that are assign to a attribute basically on the basis of the data type domain
-- like numeric data should be placed in the numeric domain and characters or string in the string domain  


-- Data Types in the SQL:-

--Numeric data types: such as INT, TINYINT, BIGINT, FLOAT, REAL. 

--Date and time data: types such as DATE, TIME, DATETIME. 

--Character and string data: types such as CHAR, VARCHAR. 

--Binary data types: such as BINARY, VARBINARY. 

--Miscellaneous data types such as: 

--Character Large Object (CLOB) for storing a large block of text in some form of text encoding.   

--Binary Large Object (BLOB) for storing a collection of binary data such as images. 


/*Note:  In relational database terminology a table is also known as a relation.
 A table row or a record is also known as a tuple. For example, the student relation above has six tuples.

Each table or relation in a database has its own schema. Schema simply means the structure. The structure includes:

the name of the table or relation,  

its attributes,  

their names  

and data type.  */


--What is a primary key?
--In a table, there is a field or column that is known as a key which can uniquely identify a particular tuple (row) in a relation (table).
--This key is specifically known as a primary key.

/*In some cases, the primary key can comprise more than one column or field.
 This happens when a single column cannot make a record in a table uniquely identifiable.
 The primary key of this table is EMP_ID and DEPT_ID.these to can make records together UNIQUE
  This is also known as a composite primary key.
*/

--Foregin key: 
--*it REFERENCES as a UNIQUE key in another table
--Tables are linked with one another through a key column (the primary key) of one table that’s
--also present in the related table as a foreign key.

--Alternate Key:  It is the key that is not selected to be a primary key, it is a columun that contains a unique value in each field.
--Secondary Key: 

/* Integrity constraints

There are three main integrity constraints:

1. Key constraints

2. Domain constraints

3. Referential integrity constraints

What are key constraints:- 

The key constraint specifies that there should be a column, or columns, in a table that can be used to fetch data for any row.
like primary key.  
This key attribute or primary key should never be NULL or the same for two different rows of data. 

Domain constraints:-
Domain constraints refer to the rules defined for the values that can be stored for a certain column. For instance, you cannot store the 
home address of a student in the first name column.
 Similarly, a contact number cannot exceed ten digits.

referential integrity constraints:-

When a table is related to another table via a foreign key column, then the referenced column value must exist in the other table.

*/

--Records
--A record consists of a collection of data for each entity. It’s also known as a row in the table.

/*

#Logical DATABASE Structure

The logical structure of a database is represented using a diagram known as the Entity Relationship Diagram (ERD).
 It is a visual representation of how the database will be implemented into tables during physical database design, 
using a Database Management System (DBMS),like MySQL or Oracle

 three ways in which entity instances can be related to each other:

One-to-one relationships 

One-to-many relationships 

Many-to-many relationships 

This is also known as cardinality of relationships.
The logical database structure which is represented using an ERD also depicts these relationships.


Physical database structure:-

In the physical database structure, where entities are implemented as tables, the relationships are established using a field known as a foreign key.
 A foreign key is a field in one table that refers to a common field in another table (usually the primary key). 

#Multivalue attributes should be avoided in a relational database management design


Composite Key attributte: 

It is a key that is composite of the two or more attribute to form a a unique value in a each new row , 
it is considered when a signle attribute key can't be identified.
*/