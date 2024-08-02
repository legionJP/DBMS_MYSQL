/*Numeric Data type : 
  INT datatype is the data type which can be stored as a 
  1). TINYINT : USED FOR VERY SMALL Value which can be upto maxmimum possible value is 255
  2). INT : reprsents large value number and can store is over four billion . and store the positive and negative value. 

String Data_type : 
 Used when storing data with mixed type of characters
  These are the data types which accepts the : Alphabet characters , Numeric Characters , and Special Characters 

  examples: 1.) char : this type of datatype is used for characters of fixed length. In thhis given length is predefined and can't be changed after decalration 
            2.) varchar : this stands for the characters of fixed length  this type of the datatype is used for character of varriable length 
              this means the length can be changed it's not fixed it can consume the varchar(50) , so it can be consumed 50 or less ,
               means it only occupies the sapce as much as it is in the name of the field.
               exmaples: TINYTEXT: used for the less than the 255 characters like short paragraphs and 
                 2).    Text is used for defining the charcter less than 65535 charcters like an article 
                 3). MEDIUMTEXT  is used for definig the column of 16.7 milion characters , text of book
                 4). LONGTEXT is a type of the datatype which is used for four gigabyte of text data .
                 */

 Data type and CONSTRAINTS: -  Limit the type of the data that can be stored in a table 
 and ensure that all data insereted in the table is accurate and reliable .


 Note: DATABASE abort the violation if it dictates the vilation between the constraints and data operations, then it aborts these operations 
  example : inserting and uploading the invalid data to a table.

-- Constraints can be aplly to the columuns but ,
-- Rules can be apply to the specific columns 

Like we can use the foreign key constraints that would destroy links between the tables 

Examples: Two types of the most  used database constraints  are 
: 1) NOT NULL :  Preserve empty value fields : ensure that data fields never left blanks 
 create TABLE customer (customer_id int NOT NULL, customer_name varchar(255) NOT NULL,);
 2): DEFAULT : it is the method for assigning the Default values : Sets or filled  a default value which is assigned as a default value, 
  if no value is specified 
  ex- CREATE Table player(player_name varchar(20), team_name varchar(20) DEFAULT "Indian Team");


-- Craeting the database 
-- Database names must be unique and can only have a maximum of 63 characters 


--Alter the database Table :

-- ALTER TABLE tbale_name ADD(columun_name , Datatype )

--using the drop command 

-- ALTER TABLE table_name DROP  columun_name;

-- Changing the structure of the table 

--ALTER TABLE students MODIFY country varchar(100);