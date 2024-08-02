/*'''SQL Subsets'''
 /*  1.DDL :  command name: Create, objects in db like tables b). Alter: Modify the object and strcutre of db
  c). drop: this command is used to remove an existing object from the database */
  /* 2.DML : It  is the manupulation of the data most crud operation is done by the DML
  a). Insert: to add data or record  b). Delete:  specified data can be removed from the table

   /* 3.DQL: it is use to retrive the data from the table 
   a). SELECT : used to retrieve the data with preferred filter material

    /*4.DCL : it is used to  control the  access to the database 
    a). Grant: & Revoke : are used to give access to users for the  privileges data */

/* CREATE DATABASE jp_db;
CREATE TABLE college;
insert into college COLUMN_name()VALUES(v1,v2,v3);

  
1. Data defination Langauge command:

CREATE Command:-

Purpose: To create the database or tables inside the database

Syntax to create a table with three columns:

CREATE TABLE table_name (column_name1 datatype(size), column_name2 datatype(size), column_name3   datatype(size));


DROP Command :-

Purpose: To delete a database or a table inside the database. 

Syntax to drop a table:

DROP TABLE table_name; 



ALTER Command 

Purpose: To change the structure of the tables in the database
 such as changing the name of a table, adding a primary key to a table,
 or adding or deleting a column in a table.

 1.)Syntax to add a column into a table:

            ALTER TABLE table_name ADD (column_name datatype(size)); 

            2.) Syntax to add a primary key to a table:

            ALTER TABLE table_name ADD primary key (column_name);



TRUNCATE Command:-

Purpose: To remove all records from a table, which will empty the table but not delete the table itself. 

Syntax to truncate a table:

TRUNCATE TABLE table_name;


COMMENT Command:

--Retrieve all data from a table
SELECT * FROM table_name; */

/*
Data Manipulation Language command :

The SQL DML commands provide the ability to query,
 delete and update data in the database.  Use the following commands in this category.

SELECT Command:-

Purpose: To retrieve data from tables in the database. 

Syntax to select data from a table:

SELECT * FROM table_name;


INSERT Command:


Purpose: To add records of data into an existing table. 
Syntax to insert data into three columns in a table:

INSERT INTO table_name (column1, column2, column3) VALUES (value1, value2, value3);


UPDATE :- 

Purpose: To modify or update data contained within a table in the database. 

Syntax to update data in two columns:

UPDATE table_name SET column1 = value1, column2 = value2 WHERE condition;


DELETE Command:-

Purpose: To delete data from a table in the database.

Syntax to delete data:

DELETE FROM table_name WHERE condition;

Data Control Language (DCL):-

You use DCL to deal with the rights and permissions of users of a database system. You can execute SQL commands to perform different types of operations such as create and drop tables.
 To do this, you need to have user rights set up. This is called user privileges. 

GRANT:- Command to provide the user of the database with the privileges required to allow users to access and manipulate the database.

REVOKE:-  Command to remove permissions from any user.

Transaction Control Language (TCL) :-
The TCL commands are used to manage transactions in the database. These are used to manage the changes made to the data in a table by utilizing the DML commands.
 It also allows SQL statements to be grouped together into logical transactions. 

COMMIT:- Command to save all the work you have already done in the database. 

ROLLBACK:- Command to restore a database to the last committed state.

*/