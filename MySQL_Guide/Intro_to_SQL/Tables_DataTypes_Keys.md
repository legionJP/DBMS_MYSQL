 ## Table:
  ```
  A table is known as a entitty in a conceptual or logical way, made up of rows and columun and these have relations.
  So, A table is an organized collection of data stored in the form of rows and columns.
  Columns can be categorized as vertical and rows as horizontal.
 The columns in a table are called fields while the rows can be referred to as records. 
```
> [!NOTE]
>Records
>A record consists of a collection of data for each entity. It’s also known as a row in the table.

#### Object oriented DB or entitty : 

   ```Entity is object that is attributes that are like columns or fields : 
    each columun: hold the different types of data like numeric and string data
   ```
#### Rows: 
  ```
  columns and fields forms a rows in a relational database technology .  Rows also reffered as the tupels.
  ```
  -->
## Data types : 
--- In many DB as  they supports data types are the : String , Numeric, and the Ddate and time 

#### Domain:
```
A domain is a set of legal values that are assign to a attribute basically on the basis of the data type domain
like numeric data should be placed in the numeric domain and characters or string in the string domain  
```
### Data Types in the SQL:-

$\color{Green}{Numeric }$ : data types such as INT, TINYINT, BIGINT, FLOAT, REAL. 

$\color{Green}{Date-time }$ :data types such as DATE, TIME, DATETIME. 

$\color{Green}{Character-string}$ :data types such as CHAR, VARCHAR. 

$\color{Green}{Binary }$ :such as BINARY, VARBINARY. 

$\color{Green}{Miscellaneous}$: Data types such as
- Character Large Object (CLOB) for storing a large block of text in some form of text encoding.   
- Binary Large Object (BLOB) for storing a collection of binary data such as images. 

> [!NOTE] 
> In relational database terminology a table is also known as a relation.
> A table row or a record is also known as a tuple. For example, the student relation above has six
> tuples.

> [!IMPORTANT]
Each table or relation in a database has its own schema. Schema simply means the structure. The structure includes:
>1. the name of the table or relation,  
>2.  its attributes,  
>3. their names  
>4. and data type.  

```diff
+ What is a primary key?
```
```
1. In a table, there is a field or column that is known as a key which can uniquely identify a particular tuple (row) in a relation (table), This key is specifically known as a primary key.
2. It must contain UNIQUE values and has an implicit NOT NULL constraint.

CREATE TABLE Students (  
ID INT NOT NULL 
Name VARCHAR(255) 
PRIMARY KEY (ID) 
);  /* Create table with a single field as primary key */ 
```
```diff
+ Composite Key
```
```
In some cases, the primary key can comprise more than one column or field.
This happens when a single column cannot make a record in a table uniquely identifiable.
The primary key of this table is EMP_ID and DEPT_ID.these to can make records together UNIQUE
This is also known as a composite primary key.
```
```diff
- Foreign key:
```  
```
It REFERENCES as a UNIQUE key in another table Tables are linked with one another through a key column (the primary key) of one table that’s also present in the related table as a foreign key.
```

```diff
! Alternate Key:
```
```
It is the key that is not selected to be a primary key, it is a columun that contains a unique value in each field.
- Secondary Key: 
```

### Constraints in SQL
```
 Constraints are used to specify the rules concerning data in the table. It can be
 applied for single or multiple fields in an SQL table during the creation of the table or
 after creating using the ALTER TABLE command. 
 ```
##### The constraints are:
```diff
-1. NOT NULL
Restricts NULL value from being inserted into a column.
```
```diff
-2. CHECK 
Verifies that all values in a field satisfy a condition.
```
```diff
-3. DEFAULT 
Automatically assigns a default value if no value has been specified for the field.
```
```diff
-4. UNIQUE 
 Ensures unique values to be inserted into the field.
 ```
 ```diff
-5. INDEX 
 Indexes a field providing faster retrieval of records.
 They improve the performance of data retrieval queries at the cost of additional storage and maintenance. Indexes are used to quickly locate data without having to search every row in a database table whenever a database table is accessed.
Types of Indexes:
1.Unique Index: Ensures that the index key column does not have duplicate values.
2.Clustered Index: Alters the physical order of the table and search keys to match the index, making retrieval of data more efficient.
3.Non-Clustered Index: Does not alter the physical order of the table and maintains a logical order of the index.
How Indexes Work:
•	When an index is created on a column, the database stores a sorted copy of the indexed columns and pointers to the rows of the actual table.
•	The index allows the database to find data much faster compared to scanning the entire table.
+ Creating an Index:
-sql
CREATE INDEX idx_customer_name ON customers (customer_name);
+ Dropping an Index:
- sql
DROP INDEX idx_customer_name ON customers;

```
```diff
-6. PRIMARY KEY 
 Uniquely identifies each record in a table.
```
```diff
-7. FOREIGN KEY 
Ensures referential integrity for a record in another table
```

### Integrity constraints

```diff 
There are three main integrity constraints:

! 1. Key constraints

! 2. Domain constraints

! 3. Referential integrity constraints
```

$\color{Blue}{key constraints:- }$
```
The key constraint specifies that there should be a column, 
or columns, in a table that can be used to fetch data for any row like primary key.  
This key attribute or primary key should never be NULL or the same for two different rows of data. 
```

```diff
+ Domain constraints:-
```
```
Domain constraints refer to the rules defined for the values that can be stored for a certain column. For instance, you cannot store the 
home address of a student in the first name column.
Similarly, a contact number cannot exceed ten digits.
```
```diff
+ Referential integrity constraints:-
```
```
When a table is related to another table via a foreign key column, then the referenced column value must exist in the other table.
```

## Logical DATABASE Structure

The logical structure of a database is represented using a diagram known as the Entity Relationship Diagram (ERD).
 It is a visual representation of how the database will be implemented into tables during physical database design, 
using a Database Management System (DBMS),like MySQL or Oracle

Three ways in which entity instances can be related to each other:

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

> [!IMPORTANT]
> Cursors in SQL:
Cursors are database objects used to retrieve, manipulate, and navigate through result sets one row at a time. They are necessary when you need to fetch and process individual rows returned by a query. They provide a mechanism for traversing the rows of a result set, and they support operations on the data fetched from the database.
Types of Cursors:
1.	Implicit Cursors: Automatically created by the database for single row queries.
2.	Explicit Cursors: Defined and managed by the programmer for queries that return more than one row.
Working with Cursors:
1.	Declare: Define the cursor with a SELECT statement.
2.	Open: Execute the query and establish the result set.
3.	Fetch: Retrieve one row of the result set.
4.	Close: Release the cursor.
Cursor Example:
sql
-- Declare the cursor
DECLARE cursor_name CURSOR FOR
SELECT customer_name FROM customers;

-- Open the cursor
OPEN cursor_name;

-- Fetch the next row from the cursor into a variable
FETCH NEXT FROM cursor_name INTO @customer_name;

-- Process the fetched data (e.g., print the customer name)
PRINT @customer_name;

-- Close the cursor
CLOSE cursor_name;

-- Deallocate the cursor
DEALLOCATE cursor_name;
Key Differences:
•	Index: Optimizes read operations by quickly locating data without scanning the entire table.
•	Cursor: Provides row-by-row processing of result sets and is used when complex row-wise operations are necessary.
Indexes and cursors are powerful tools in SQL for optimizing database operations. Indexes enhance query performance by allowing quick data retrieval, while cursors enable detailed row-by-row processing of query results. Together, they help in managing complex data manipulations efficiently. 



###### Guides-----

1. $\color{Green}{useradd}$
$\color{Blue}{Command-Description}$


> [!NOTE]
> Useful information that users should know, even when skimming content.
 

> [!TIP]
> Helpful tips will share soon

> [!IMPORTANT]
> will share/write soon


> [!WARNING]
>  will share/write when applicable

> [!CAUTION]
> will share/write when applicable

```diff
- text in red
+ text in green
! text in orange
# text in gray
# grey highlight

@@ text in purple (and bold)@@
```
