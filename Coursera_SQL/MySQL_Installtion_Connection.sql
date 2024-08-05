
-- # MySQL Archtitecture
-------------------------------------------------------------------
--1. client layer 

--it is  topmost layer in MYSQL
--client give request instructions to the server via the help of client layer 

--2. Server Layer 

     -- Brain of MySQL Archtitecture 
     -- Subcomponents of Mysql Server

    --Thread Handling
    --Parser
    --Otimizer
    --Query Chache-
    --Buffer and cahce 
    -- Table Metadata Cache
    -- Key Cache
   -- stores the data for the 

--3. Storage Layer 

-- storage engines are InnoDB, 

--------------------------------------------------------------------------------------------
                                   --1. client layer 
-----------------------------------------------------------------------------------------



--#--------------------------------------------------------------------------------------
                        -- # Installing MYSQL Server on the Linux Distro like: Ubuntu
------------------------------------------------------------------------------------------



-- Qusewtions:
--  List all the customers who are not from mexicos 
-- all the customer whose customer_ID is less than 20 
-- all the customer whose customerid is more than 25 
-- list all the sales represntatvies 
DROP TABLE IF EXISTS emp;

CREATE TABLE emp (
  empno decimal(4,0) NOT NULL,
  ename varchar(10) default NULL,
  job varchar(9) default NULL,
  mgr decimal(4,0) default NULL,
  hiredate date default NULL,
  sal decimal(7,2) default NULL,
  comm decimal(7,2) default NULL,
  deptno decimal(2,0) default NULL
);

DROP TABLE IF EXISTS dept;

CREATE TABLE dept (
  deptno decimal(2,0) default NULL,
  dname varchar(14) default NULL,
  loc varchar(13) default NULL
);

INSERT INTO emp VALUES ('7369','SMITH','CLERK','7902','1980-12-17','800.00',NULL,'20');
INSERT INTO emp VALUES ('7499','ALLEN','SALESMAN','7698','1981-02-20','1600.00','300.00','30');
INSERT INTO emp VALUES ('7521','WARD','SALESMAN','7698','1981-02-22','1250.00','500.00','30');
INSERT INTO emp VALUES ('7566','JONES','MANAGER','7839','1981-04-02','2975.00',NULL,'20');
INSERT INTO emp VALUES ('7654','MARTIN','SALESMAN','7698','1981-09-28','1250.00','1400.00','30');
INSERT INTO emp VALUES ('7698','BLAKE','MANAGER','7839','1981-05-01','2850.00',NULL,'30');
INSERT INTO emp VALUES ('7782','CLARK','MANAGER','7839','1981-06-09','2450.00',NULL,'10');
INSERT INTO emp VALUES ('7788','SCOTT','ANALYST','7566','1982-12-09','3000.00',NULL,'20');
INSERT INTO emp VALUES ('7839','KING','PRESIDENT',NULL,'1981-11-17','5000.00',NULL,'10');
INSERT INTO emp VALUES ('7844','TURNER','SALESMAN','7698','1981-09-08','1500.00','0.00','30');
INSERT INTO emp VALUES ('7876','ADAMS','CLERK','7788','1983-01-12','1100.00',NULL,'20');
INSERT INTO emp VALUES ('7900','JAMES','CLERK','7698','1981-12-03','950.00',NULL,'30');
INSERT INTO emp VALUES ('7902','FORD','ANALYST','7566','1981-12-03','3000.00',NULL,'20');
INSERT INTO emp VALUES ('7934','MILLER','CLERK','7782','1982-01-23','1300.00',NULL,'10');

INSERT INTO dept VALUES ('10','ACCOUNTING','NEW YORK');
INSERT INTO dept VALUES ('20','RESEARCH','DALLAS');
INSERT INTO dept VALUES ('30','SALES','CHICAGO');
INSERT INTO dept VALUES ('40','OPERATIONS','BOSTON');




---   # Queries ----

select * from emp where ename != 'KING'
 select * from emp where sal>=-2000;
select * from emp where sal>=-3000 and sal<=4000;
select * from emp where sal>=-3000 and sal<=4000;
select * from emp where sal not between 3000 and 4000;

select * from emp where sal between 3000 and 4000;
select * from emp where comm is not null ;
select * from emp where ename like 'A%';
select * from emp where ename like '%A%' ;
select * from emp where ename like '%A%A%';

select * from emp where hiredate like '%12%;
select * from emp where hiredate like '%-12-%'
--it will skip date and year
     
select empno , ename from emp where ename like '_A%';
select empno , ename from emp where ename like '____';



select ceil(12.01) from dual;
     select round(12.49) from dual 
     select mod(34,6) ;

      select rpad(ename, 15, "__") from emp;
      select hiredate , sysdate() from emp where substr(hiredate,6,7) < substr(sysdate() ,6,7);
     select hiredate , sysdate() from emp where substr(hiredate,6,7) < substr(sysdate() ,4,3);
     
     select instr('RAMANA','A') from dual;
+---------------------+
| instr('RAMANA','A') |
+---------------------+
|                   2 |
+---------------------+

select job, (case job when 'manager' then 'vp' when 'clerk' then 'exec' when 'salesman' then 's.officer' else job end) as new from emp;
+-----------+-----------+
| job       | new       |
+-----------+-----------+
| CLERK     | exec      |
| SALESMAN  | s.officer |
| SALESMAN  | s.officer |
| MANAGER   | vp        |
| SALESMAN  | s.officer |
| MANAGER   | vp        |
| MANAGER   | vp        |
| ANALYST   | ANALYST   |
| PRESIDENT | PRESIDENT |
| SALESMAN  | s.officer |
| CLERK     | exec      |
| CLERK     | exec      |
| ANALYST   | ANALYST   |
| CLERK     | exec      |
+-----------+-----------+

     ---Group By Clause;

     select job, count(*) from emp group by job;
     --mntion all the column in the group by if it is used in select column

     select distinct(job) , count(ename) from emp group by job;
+-----------+--------------+
| job       | count(ename) |
+-----------+--------------+
| CLERK     |            4 |
| SALESMAN  |            4 |
| MANAGER   |            3 |
| ANALYST   |            2 |
| PRESIDENT |            1 |
+-----------+--------------+

     

select distinct(deptno) , count(ename) from emp group by deptno;
+--------+--------------+
| deptno | count(ename) |
+--------+--------------+
|     20 |            5 |
|     30 |            6 |
|     10 |            3 |
+--------+--------------+
3 rows in set (0.00 sec)
select sum(sal) as total , max(sal) as max_sal , min(sal) as min_sal , count(ename) , avg(sal) , deptno from emp  group by deptno;
+----------+---------+---------+--------------+-------------+--------+
| total    | max_sal | min_sal | count(ename) | avg(sal)    | deptno |
+----------+---------+---------+--------------+-------------+--------+
| 10875.00 | 3000.00 |  800.00 |            5 | 2175.000000 |     20 |
|  9400.00 | 2850.00 |  950.00 |            6 | 1566.666667 |     30 |
|  8750.00 | 5000.00 | 1300.00 |            3 | 2916.666667 |     10 |
+----------+---------+---------+--------------+-------------+--------+

      select job, deptno, count(deptno)  from emp  group by deptno,job having count(*)>=2;
+----------+--------+---------------+
| job      | deptno | count(deptno) |
+----------+--------+---------------+
| CLERK    |     20 |             2 |
| SALESMAN |     30 |             4 |
| ANALYST  |     20 |             2 |
+----------+--------+---------------+

 select emp.empno , emp.ename , emp.deptno , dept.dname from emp inner join dept on emp.deptno = dept.deptno;
+-------+--------+--------+------------+
| empno | ename  | deptno | dname      |
+-------+--------+--------+------------+
|  7369 | SMITH  |     20 | RESEARCH   |
|  7499 | ALLEN  |     30 | SALES      |
|  7521 | WARD   |     30 | SALES      |
|  7566 | JONES  |     20 | RESEARCH   |
|  7654 | MARTIN |     30 | SALES      |
|  7698 | BLAKE  |     30 | SALES      |
|  7782 | CLARK  |     10 | ACCOUNTING |
|  7788 | SCOTT  |     20 | RESEARCH   |
|  7839 | KING   |     10 | ACCOUNTING |
|  7844 | TURNER |     30 | SALES      |
|  7876 | ADAMS  |     20 | RESEARCH   |
|  7900 | JAMES  |     30 | SALES      |
|  7902 | FORD   |     20 | RESEARCH   |
|  7934 | MILLER |     10 | ACCOUNTING |
+-------+--------+--------+------------+

     select Orders.OrderID, Customers.CustomerName from Orders inner join Customers on Orders.CustomerID = Customers.CustomerID;
+---------+------------------------------------+
| OrderID | CustomerName                       |
+---------+------------------------------------+
|   10308 | Ana Trujillo Emparedados y helados |
|   10365 | Antonio Moreno Taquería            |
|   10355 | Around the Horn                    |
|   10383 | Around the Horn                    |
|   10278 | Berglunds snabbköp                 |
|   10280 | Berglunds snabbköp                 |
|   10384 | Berglunds snabbköp                 |
|   10265 | Blondel père et fils               |
_----------------------------------------------+
     
# joining the Three tables: 
select Orders.OrderID , Customers.CustomerName , Shippers.ShipperName from ((Orders inner join Customers on Orders.CustomerID = Customers.CustomerID) inner join Shippers on Orders.ShipperID = Shippers.ShipperID);
+---------+------------------------------------+------------------+
| OrderID | CustomerName                       | ShipperName      |
+---------+------------------------------------+------------------+
|   10249 | Tradição Hipermercados             | Speedy Express   |
|   10251 | Victuailles en stock               | Speedy Express   |
|   10258 | Ernst Handel                       | Speedy Express   |
|   10260 | Old World Delicatessen             | Speedy Express   |
|   10265 | Blondel père et fils               | Speedy Express   |
|   10267 | Frankenversand                     | Speedy Express   |
|   10269 | White Clover Markets               | Speedy Express   |
|   10270 | Wartian Herkku                     | Speedy Express   |
|   10274 | Vins et alcools Chevalier          | Speedy Express   |
|   10275 | Magazzini Alimentari Riuniti       | Speedy Express   |
|   10280 | Berglunds snabbköp                 | Speedy Express   |
|   10281 | Romero y tomillo                   | Speedy Express   |
|   10282 | Romero y tomillo                   | Speedy Express   |
|   10284 | Lehmanns Marktstand                | Speedy Express   |
+----------------------------------------------------------------+

     -Left Join 
select Customers.CustomerName, Orders.OrderID from Customers left join Orders on Customers.CustomerID= Orders.CustomerID order by Customers.CustomerName;
+--------------------------------------+---------+
| CustomerName                         | OrderID |
+--------------------------------------+---------+
| Alfreds Futterkiste                  |    NULL |
| Ana Trujillo Emparedados y helados   |   10308 |
| Antonio Moreno Taquería              |   10365 |
| Around the Horn                      |   10355 |
| Around the Horn                      |   10383 |
| B''s Beverages                       |   10289 |
| Berglunds snabbköp                   |   10278 |
| Berglunds snabbköp                   |   10280 |
| Berglunds snabbköp                   |   10384 |
     
select emp.ename , dept.dname, emp.deptno as emp_ID ,dept.deptno as Dept_ID from emp inner join dept on emp.deptno = dept.deptno;
+--------+------------+--------+---------+
| ename  | dname      | emp_ID | Dept_ID |
+--------+------------+--------+---------+
| SMITH  | RESEARCH   |     20 |      20 |
| ALLEN  | SALES      |     30 |      30 |
| WARD   | SALES      |     30 |      30 |
| JONES  | RESEARCH   |     20 |      20 |
| MARTIN | SALES      |     30 |      30 |
| BLAKE  | SALES      |     30 |      30 |


select emp.ename , dept.dname, emp.deptno as emp_ID ,dept.deptno as Dept_ID from dept left join emp on dept.deptno = emp.deptno;
+--------+------------+--------+---------+
| ename  | dname      | emp_ID | Dept_ID |
+--------+------------+--------+---------+
| MILLER | ACCOUNTING |     10 |      10 |
| KING   | ACCOUNTING |     10 |      10 |
| CLARK  | ACCOUNTING |     10 |      10 |
| FORD   | RESEARCH   |     20 |      20 |
| ADAMS  | RESEARCH   |     20 |      20 |
| SCOTT  | RESEARCH   |     20 |      20 || JONES  | RESEARCH   |     20 |      20 |
| SMITH  | RESEARCH   |     20 |      20 |
| JAMES  | SALES      |     30 |      30 |
| TURNER | SALES      |     30 |      30 |
| BLAKE  | SALES      |     30 |      30 |
| MARTIN | SALES      |     30 |      30 |
| WARD   | SALES      |     30 |      30 |
| ALLEN  | SALES      |     30 |      30 |
| NULL   | OPERATIONS |   NULL |      40 |
+--------+------------+--------+---------+

| JONES  | RESEARCH   |     20 |      20 |
     
-- Right join

select emp.ename , dept.dname , emp.deptno  as emp_deptno from emp right join dept on emp.deptno = dept.deptno;
+--------+------------+------------+
| ename  | dname      | emp_deptno |
+--------+------------+------------+
| MILLER | ACCOUNTING |         10 |
| KING   | ACCOUNTING |         10 |
| CLARK  | ACCOUNTING |         10 |
| FORD   | RESEARCH   |         20 |
| ADAMS  | RESEARCH   |         20 |
| SCOTT  | RESEARCH   |         20 |
| JONES  | RESEARCH   |         20 |
| SMITH  | RESEARCH   |         20 |
| JAMES  | SALES      |         30 |
| TURNER | SALES      |         30 |
| BLAKE  | SALES      |         30 |
| MARTIN | SALES      |         30 |
| WARD   | SALES      |         30 |
| ALLEN  | SALES      |         30 |
| NULL   | OPERATIONS |       NULL |
+--------+------------+------------+
15 rows in set (0.00 sec)

     select Customers.contactName as customerName, Orders.OrderID from Customers left join Orders on Customers.CustomerID= Orders.CustomerID;
+----------------------+---------+
| customerName         | OrderID |
+----------------------+---------+
| Maria Anders         |    NULL |
| Ana Trujillo         |   10308 |
| Antonio Moreno       |   10365 |
| Thomas Hardy         |   10355 |
| Thomas Hardy         |   10383 |
| Christina Berglund   |   10278 |
| Christina Berglund   |   10280 |
| Christina Berglund   |   10384 |
+--------------------------------+

      select  Orders.OrderID , Employees.FirstName, Employees.EmployeeID from Orders right join Employees on Orders.EmployeeID = Employees.EmployeeID;
+---------+-----------+------------+
| OrderID | FirstName | EmployeeID |
+---------+-----------+------------+
|   10258 | Nancy     |          1 |
|   10270 | Nancy     |          1 |
|   10275 | Nancy     |          1 |
|   10285 | Nancy     |          1 |
|   10292 | Nancy     |          1 |
|   10293 | Nancy     |          1 |
|   10304 | Nancy     |          1 |
|   10306 | Nancy     |          1 |
|   10311 | Nancy     |          1 |
|   10314 | Nancy     |          1 |
|   10316 | Nancy     |          1 |
|   10325 | Nancy     |          1 |
|   10340 | Nancy     |          1 |
|   10351 | Nancy     |          1 |
|   10357 | Nancy     |          1 |
+----------------------------------+
     
      select Customers.ContactName as 'Customer_Name' , Orders.OrderID from Customers cross join Orders;


     --Self Join
select emp.empno, emp.ename, emp.mgr, mgr.ename, mgr.empno from emp as emp join emp as mgr on emp.mgr = mgr.empno;
+-------+--------+------+-------+-------+
| empno | ename  | mgr  | ename | empno |
+-------+--------+------+-------+-------+
|  7902 | FORD   | 7566 | JONES |  7566 |
|  7788 | SCOTT  | 7566 | JONES |  7566 |
|  7900 | JAMES  | 7698 | BLAKE |  7698 |
|  7844 | TURNER | 7698 | BLAKE |  7698 |
|  7654 | MARTIN | 7698 | BLAKE |  7698 |
|  7521 | WARD   | 7698 | BLAKE |  7698 |
|  7499 | ALLEN  | 7698 | BLAKE |  7698 |
|  7934 | MILLER | 7782 | CLARK |  7782 |
|  7876 | ADAMS  | 7788 | SCOTT |  7788 |
|  7782 | CLARK  | 7839 | KING  |  7839 |
|  7698 | BLAKE  | 7839 | KING  |  7839 |
|  7566 | JONES  | 7839 | KING  |  7839 |
|  7369 | SMITH  | 7902 | FORD  |  7902 |
+-------+--------+------+-------+-------+

     select e.empno, e.ename , e.mgr, m.empno , m.mgr, d.empno, d.ename  from emp as e join emp as m on e.mgr
= e.empno join emp as d on m.mgr = d.empno;

     
select  job sum(sal), sum(comm), count(empno), count(job) from emp group by job;

