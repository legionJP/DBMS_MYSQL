
Schema: --

organization of information and it's relationship

Database schema: --

collection of the data structure within a a database;

it is defined in differnet ways in differnet database.
it shows how data is organized between tables.

comprises with the Data relationships , Unique objects key, Name and datatypes 
it structure that  represnets the storage of the data in a database.

designing the database  schema is the process of the Data modeling.
_________________________________________________________________________________________
Database Scehmas in differnt databases:
***************************************
1).SQL Server: in this database is a collection of a individual(tables, data fileds) 
but related components;

2).Postgre SQL: it is a namespace with named database objects , like views indexes and fuctions.

3).Oracle: in this the schema is a property of each database  user.it assign a single schema to each user.
____________________________________________________________________________________________

two important concepts of the database is :

1). Organizational data 
2) Relationship between the tables 

_______________________________________
Components of the databases:
1). Schema Object:  components within a object they include tables, columuns , relatioships, datatypes , and keys 

Advantages of the database Schemas:________________
1. Management : provide logical grouping for objects 
2. Acessibility : enable greater accessibilty to object 
3. Security : offer a rangeful security features
4. Owenership: permit the transer of the owenership between the users. 
________________________________________________________________________

Types of schema:-
_________________________________________________________________
1. Conceptual or logical  :
****************************
 it describes entities, attributes and relatioships.
An Entity Relationship Diagram (ER-D) is usually drawn to represent the logical schema of a databases.  in this database structure is described by
the software developers. 

example : like a employee and their department will be the entities and differnet column will be the attributes. 

2. Internal or Physical : 
**************************
 how data is stored in the secondary storage or describe the physical storage of db, and access path of the data 
Represents the entire schema at a very low level , how the data stored on disk in the form of tables, columns and records. 
It defines what data is stored in the database and how. 

3. External or view schema :
***************************
 different user view 

 This schema only describes the part of the database that the specific user is interested in. 
 It hides the nonrelevant details of the database from a user. 

importance of database schema:

Maintain a clean set of data in the database related to an application. 

Avoid reverse-engineering of the underlying data model from time to time. 

Write efficient queries to retrieve data for reporting purposes, analytics and so on. 


Types of database schema :

Conceptual?logical database Model:  

--it shows how the data is oraganzed in term of the table  , or how the attribute of the differnet table linked together 
   
 -->>   Entity relationship Modelling:  creatting the logical database means illustrating the ralationship between the entity types
     like: order , courier and shipment relate in the table with the entity, where ID will be primary and will be in each also order_id can be reffered as
     the foreign key. 

-->> Physical Schema:  in this how a physical structure of database stored in a disk 
like creating tthe physical schema for the customer , product and transactions.  
physical schema is created by the sql statements for controlling the storage of the physical schema.

