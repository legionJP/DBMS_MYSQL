## DDL Commands:

-- 1.CREATE:

 create table person(personID int, Lastname varchar(255), Firrstname varchar (255), Address varchar(255), city varchar(255));





-- DML Commands:
---______________________________________________________________________________________________
 --                                 1. INSERT INTO
--- ____________________________________________________________________________________________---

-- Insert into satements syntax 
 --Insert into TABLE_name (columun_name, columun_name2, columun_name3) values (value1, value2, value3);

 --each column shoud have value according to the data type of the required columun

##Inserting multiple rows of value : 
 Insert into TABLE_name (columun_name, columun_name2, columun_name3) values (value1, value2, value3),
  (value1,value2,value3),
  (value1, value2,value3);


-- while creating the table specify the data type 
example: varcahr use upto 1 bytes for per character and 2byte for holding the length, 
so if we storing the "jen" it will take 3 btyes and 2 bytes of extra , total of 5 bytes of the data .


-------------------------------------------
--        SQL SELECT  statement: 
---------------------------------------------
select columun_name form tabel;

-- Insert selcet into statements :-
-- for populaitng the columun in the other tables

--insert into SELECT statement is used to query a data from the a columun within the source table and 
-- place the results of that query in the columun within targe table. 
-- in this we insert the data 



--# Mysql  Key Constraints

-- to specify rules for the data in the table
--
Not Null -- column can't have the null value
Unique    -- Ensures that values in column are diffrent
Primary Key -- comination of not null and unique, so it uniquely identifies each row in table
foreign key  -- for relationship between the two or more tablles
check         -- checks that the values in the given column satisfies a specific condition
default   -- sets a default value for a column and satisfies a specific condition
create index -- used to create and retirieve data from the database very quickly

---________________________________________________________________________________________--
                                        NOT NULL 
---________________________________________________________________________________________--

create tbale Customer(personID int Not Null , Firrstname varchar Not Null , AGE int);

--________________________________________________________________________________________--
                                      ALTER TABLE
---________________________________________________________________________________________--

--add
alter table table_name ( add column datatype)

--drop
alter table persons drop column DatefoBirth;

--modify
ALTER TABLE MODIFY COLUMN_NAME DATATYPE
--------------------------------------------------------------------------------------------------
--Query
alter table Persons modify personID int not null , FirstName varchar(100) not null , LastName varchar(100) not null;


--________________________________________________________________________________________--
                                      DROP TABLE
---________________________________________________________________________________________--

DROP table shippers;
