#Entity: object with a related atrributes , it represents a single object in a data base;
   it is comprised of rows and COLUMN in rdbms like in mysql


- Entity Represents a real-world object
- It Has attributes (fields)
Example: A Student entity might have:
- StudentID (Primary Key)
- Name



 Types of attribute in a database system 

 1). simple attributes  : that can't be classified futher 
 2). composite attributes : attribute which can be splited into a sub attribute 
 3).  single valued attribue:  a column which can contain only single value of a related column fields

4) Multi valued attribute : a column which can hold a multiple value for a students column like a email column.ABO
 5) Derived attribute : derived from the another column is called the derived attribute 
 6) key attribute: 

Entity Represntation:
two compartments is used to represent the entity and its related attributes. 
1st entityb  name and entity attribute 

Relationship reprenstation: 
The ER diagram uses different styles of lines to define the distinct types of relationships between entities.
The line style depends on the cardinality(number of the sets  presents in data ) of the relationship

1:1 (one-to-one):
 The ER-D uses a straight-line representation for a one-to-one cardinality relationship. For example, 
 each passenger on a train should have only one ticket. 
 1:N (one-to-many):
  The ER-D is a straight line with a crow’s foot notation on one side only to represent a one-to-many cardinality relationship.
  For example, one parent can have many children. 
 M:N (many-to-many):
  The ER-D is a straight line with crow’s foot notations on both sides of entities to represent a many-to-many cardinality relationship.
  For example, many players play many games.

 

Attributes representation

Each entity has a set of attributes that hold relevant information about it. Each attribute must be defined with a data type. 
In the college enrollment example, you can list the following attributes followed by relevant data types:

The department attributes: department number, department name and head of department.

The course attributes: course ID, course name, and course credits.

The student attributes: student ID, name, and date of birth.

***********************************************************************************************************

ACID properties and RDBMS:- 
_________________________________
Four crucial properties define relational database transactions: atomicity, consistency, isolation, and durability—typically referred to as ACID.

-->Atomicity: defines all the elements that make up a complete database transaction.

--> Consistency: defines the rules for maintaining data points in a correct state after a transaction.

--> Isolation: keeps the effect of a transaction invisible to others until it is committed, to avoid confusion.

--> Durability: ensures that data changes become permanent once the transaction is committed.

**************************************************************************************************************