PART 1
Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 6
Server version: 5.5.16-log MySQL Community Server (GPL)

Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database master;
Query OK, 1 row affected (0.02 sec)

mysql> use master;
Database change
mysql> create table client_master(clientno int primary key,names varchar(100),address varchar(50),city varchar(50),state varchar(50),bal_due int(100));
Query OK, 0 rows affected (0.02 sec)

mysql> desc client_master;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| clientno | varchar(50)  | NO   | PRI |         |       |
| names    | varchar(100) | YES  |     | NULL    |       |
| address  | varchar(50)  | YES  |     | NULL    |       |
| city     | varchar(50)  | YES  |     | NULL    |       |
| state    | varchar(50)  | YES  |     | NULL    |       |
| bal_due  | int(100)     | YES  |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+
6 rows in set (0.01 sec)
QUESTION 1

mysql> insert into client_master values('c110','alice','123streetA','huye','rwandan',1000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into client_master values('c123','mutoni','123streetB','nyagatare','burundi',2000);
Query OK, 1 row affected (0.00 sec)
mysql> insert into client_master values('c124','chantal','453streetF','rubavu','rwanda',4500);
Query OK, 1 row affected (0.02 sec)

mysql> insert into client_master values('c125','keza','203streetg','kigali','kenya',700);
Query OK, 1 row affected (0.02 sec)

mysql> insert into client_master values('c126','aneti','103streetH','huye','rwanda',600);
Query OK, 1 row affected (0.02 sec)

mysql>
mysql> select * from client_master;
+----------+---------+------------+-----------+---------+---------+
| clientno | names   | address    | city      | state   | bal_due |
+----------+---------+------------+-----------+---------+---------+
| c110     | alice   | 123streetA | huye      | rwandan |    1000 |
| c123     | mutoni  | 123streetB | nyagatare | burundi |    2000 |
| c124     | chantal | 453streetF | rubavu    | rwanda  |    4500 |
| c125     | keza    | 203streetg | kigali    | kenya   |     700 |
| c126     | aneti   | 103streetH | huye      | rwanda  |     600 |
+----------+---------+------------+-----------+---------+---------+
5 rows in set (0.00 sec)
Rows matched: 1  Changed: 1  Warning

QUESTION 2
mysql> select names from client_master where bal_due>5000;
+-------+
| names |
+-------+
| alice |
+-------+
1 row in set (0.00 sec)
QUESTION 3
mysql> update client_master set bal_due=5100 where clientno='c123';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select* from client_master;
+----------+---------+------------+-----------+---------+---------+
| clientno | names   | address    | city      | state   | bal_due |
+----------+---------+------------+-----------+---------+---------+
| c110     | alice   | 123streetA | huye      | rwandan |    6000 |
| c123     | mutoni  | 123streetB | nyagatare | burundi |    5100 |
| c124     | chantal | 453streetF | rubavu    | rwanda  |    4500 |
| c125     | keza    | 203streetg | kigali    | kenya   |     700 |
| c126     | aneti   | 103streetH | huye      | rwanda  |     600 |
+----------+---------+------------+-----------+---------+---------+
5 rows in set (0.00 sec)
QUESTION 4
mysql> select bal_due as balance from client12;
+---------+
| balance |
+---------+
|    6000 |
|    5100 |
|    4500 |
|     700 |
|     600 |
+---------+
5 rows in set (0.00 sec)
PART B

QUESTION 6
Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 7
Server version: 5.5.16-log MySQL Community Server (GPL)

Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
A.	
mysql> create databse school;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'databse school' at line 1
mysql> create database school;
Query OK, 1 row affected (0.00 sec)

mysql> use school;
Database changed
A.mysql> create table department(deptmentid int primary key,deptname varchar(100), location varchar(100),manager varchar(50),years int);
Query OK, 0 rows affected (0.03 sec)

mysql> desc department;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| deptmentid | int(11)      | NO   | PRI | NULL    |       |
| deptname   | varchar(100) | YES  |     | NULL    |       |
| location   | varchar(100) | YES  |     | NULL    |       |
| manager    | varchar(50)  | YES  |     | NULL    |       |
| years      | int(11)      | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
5 rows in set (0.02 sec)

mysql> create table employees(empid int primary key,empname varchar(100),position varchar(100),deptmentid int, salary varchar(100),forign key (deptmentid) references department(deptmentid);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'key (deptmentid) references department(deptmentid)' at line 1
mysql> create table employees(empid int primary key,empname varchar(100),position varchar(100),deptmentid int(11), salary int(100),foreign key (deptmentid) references department(deptmentid));
Query OK, 0 rows affected (0.02 sec)

mysql> desc employees;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| empid      | int(11)      | NO   | PRI | NULL    |       |
| empname    | varchar(100) | YES  |     | NULL    |       |
| position   | varchar(100) | YES  |     | NULL    |       |
| deptmentid | int(11)      | YES  | MUL | NULL    |       |
| salary     | int(100)     | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
5 rows in set (0.02 sec)

mysql>
mysql> desc derpatment;
ERROR 1146 (42S02): Table 'school.derpatment' doesn't exist
mysql> desc department;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| deptmentid | int(11)      | NO   | PRI | NULL    |       |
| deptname   | varchar(100) | YES  |     | NULL    |       |
| location   | varchar(100) | YES  |     | NULL    |       |
| manager    | varchar(50)  | YES  |     | NULL    |       |
| years      | int(11)      | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
5 rows in set (0.02 sec)
A.
mysql>
mysql> insert into derpartment values(1,'finance','kigali','john',2024);
ERROR 1146 (42S02): Table 'school.derpartment' doesn't exist
mysql> insert into derpatment values(1,'finance','kigali','john',2024);
ERROR 1146 (42S02): Table 'school.derpatment' doesn't exist
mysql> insert into department values(1,'finance','kigali','john',2024);
Query OK, 1 row affected (0.03 sec)

mysql>
mysql> insert into derpatment values(2,'business','nyagatare','mugisha',2023);
ERROR 1146 (42S02): Table 'school.derpatment' doesn't exist
mysql>
mysql> insert into department values(2,'business','nyagatare','mugisha',2023);
Query OK, 1 row affected (0.01 sec)

mysql> insert into department values(3,'marketing','kayonza','mugabe',2022);
Query OK, 1 row affected (0.02 sec)

mysql> insert into department values(4,'medecine','muhanga','chantal',1999);
Query OK, 1 row affected (0.03 sec)

mysql>
mysql> insert into department values(5,'economic','gatsibo','ishimwe',2001);
Query OK, 1 row affected (0.01 sec)

mysql> select * from department;
+------------+-----------+-----------+---------+-------+
| deptmentid | deptname  | location  | manager | years |
+------------+-----------+-----------+---------+-------+
|          1 | finance   | kigali    | john    |  2024 |
|          2 | business  | nyagatare | mugisha |  2023 |
|          3 | marketing | kayonza   | mugabe  |  2022 |
|          4 | medecine  | muhanga   | chantal |  1999 |
|          5 | economic  | gatsibo   | ishimwe |  2001 |
+------------+-----------+-----------+---------+-------+
5 rows in set (0.00 sec)

mysql> insert into employees values(101,'john','analyst',1,55000);
Query OK, 1 row affected (0.03 sec)

mysql> insert into employees values(102,'keza','recruiter',2,54000);
Query OK, 1 row affected (0.02 sec)

mysql>
mysql> insert into employees values(103,'muneza','programer',3,4000);
Query OK, 1 row affected (0.02 sec)

mysql> insert into employees values(104,'kwizera','manager',4,8000);
Query OK, 1 row affected (0.03 sec)

mysql>
mysql> insert into employees values(105,'chantal','supervisor',5,3240);
Query OK, 1 row affected (0.02 sec)

mysql> select* from employees;
+-------+---------+------------+------------+--------+
| empid | empname | position   | deptmentid | salary |
+-------+---------+------------+------------+--------+
|   101 | john    | analyst    |          1 |  55000 |
|   102 | keza    | recruiter  |          2 |  54000 |
|   103 | muneza  | programer  |          3 |   4000 |
|   104 | kwizera | manager    |          4 |   8000 |
|   105 | chantal | supervisor |          5 |   3240 |
+-------+---------+------------+------------+--------+
5 rows in set (0.00 sec)

B. mysql> desc employees;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| empid      | int(11)      | NO   | PRI | NULL    |       |
| empname    | varchar(100) | YES  |     | NULL    |       |
| position   | varchar(100) | YES  |     | NULL    |       |
| deptmentid | int(11)      | YES  | MUL | NULL    |       |
| salary     | int(100)     | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
5 rows in set (0.02 sec)'
C.mysql> select employees.empname, department.deptname from employees left join department on employees.deptmentid= department.deptmentid;
+---------+-----------+
| empname | deptname  |
+---------+-----------+
| john    | finance   |
| keza    | business  |
| muneza  | marketing |
| kwizera | medecine  |
| chantal | economic  |
+---------+-----------+
5 rows in set (0.00 sec)

D. mysql> select employees.empname,department.deptname from employees right join department on employees.deptmentid=department.deptmentid;
+---------+-----------+
| empname | deptname  |
+---------+-----------+
| john    | finance   |
| keza    | business  |
| muneza  | marketing |
| kwizera | medecine  |
| chantal | economic  |
+---------+-----------+
5 rows in set (0.00 sec)

E .mysql> select* from employees where salary > (select avg(salary) from employees);
+-------+---------+-----------+------------+--------+
| empid | empname | position  | deptmentid | salary |
+-------+---------+-----------+------------+--------+
|   101 | john    | analyst   |          1 |  55000 |
|   102 | keza    | recruiter |          2 |  54000 |
+-------+---------+-----------+------------+--------+
2 rows in set (0.00 sec)

Question 7
| deptmentid | int(11)      | NO   | PRI | NULL    |       |
| deptname   | varchar(100) | YES  |     | NULL    |       |
| location   | varchar(100) | YES  |     | NULL    |       |
| manager    | varchar(50)  | YES  |     | NULL    |       |
| years      | int(11)      | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
5 rows in set (0.02 sec)
mysql> create table employees(empid int primary key,empname varchar(100),position varchar(100),deptmentid int, salary int(100),foreign key (deptmentid) references department(deptmentid);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> create table employees(empid int primary key,empname varchar(100),position varchar(100),deptmentid int(11), salary int(100),foreign key (deptmentid) references department(deptmentid));
Query OK, 0 rows affected (0.02 sec)

mysql> desc employees;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| empid      | int(11)      | NO   | PRI | NULL    |       |
| empname    | varchar(100) | YES  |     | NULL    |       |
| position   | varchar(100) | YES  |     | NULL    |       |
| deptmentid | int(11)      | YES  | MUL | NULL    |       |
| salary     | int(100)     | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
5 rows in set (0.02 sec)

mysql>
mysql> desc derpatment;
ERROR 1146 (42S02): Table 'school.derpatment' doesn't exist
mysql> desc department;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| deptmentid | int(11)      | NO   | PRI | NULL    |       |
| deptname   | varchar(100) | YES  |     | NULL    |       |
| location   | varchar(100) | YES  |     | NULL    |       |
| manager    | varchar(50)  | YES  |     | NULL    |       |
| years      | int(11)      | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
5 rows in set (0.02 sec)

mysql>
mysql> insert into derpartment values(1,'finance','kigali','john',2024);
ERROR 1146 (42S02): Table 'school.derpartment' doesn't exist
mysql> insert into derpatment values(1,'finance','kigali','john',2024);
ERROR 1146 (42S02): Table 'school.derpatment' doesn't exist
mysql> insert into department values(1,'finance','kigali','john',2024);
Query OK, 1 row affected (0.03 sec)

mysql>
mysql> insert into derpatment values(2,'business','nyagatare','mugisha',2023);
ERROR 1146 (42S02): Table 'school.derpatment' doesn't exist
mysql>
mysql> insert into department values(2,'business','nyagatare','mugisha',2023);
Query OK, 1 row affected (0.01 sec)

mysql> insert into department values(3,'marketing','kayonza','mugabe',2022);
Query OK, 1 row affected (0.02 sec)

mysql> insert into department values(4,'medecine','muhanga','chantal',1999);
Query OK, 1 row affected (0.03 sec)

mysql>
mysql> insert into department values(5,'economic','gatsibo','ishimwe',2001);
Query OK, 1 row affected (0.01 sec)

mysql> select * from department;
+------------+-----------+-----------+---------+-------+
| deptmentid | deptname  | location  | manager | years |
+------------+-----------+-----------+---------+-------+
|          1 | finance   | kigali    | john    |  2024 |
|          2 | business  | nyagatare | mugisha |  2023 |
|          3 | marketing | kayonza   | mugabe  |  2022 |
|          4 | medecine  | muhanga   | chantal |  1999 |
|          5 | economic  | gatsibo   | ishimwe |  2001 |
+------------+-----------+-----------+---------+-------+
5 rows in set (0.00 sec)

mysql> insert into employees values(101,'john','analyst',1,55000);
Query OK, 1 row affected (0.03 sec)

mysql> insert into employees values(102,'keza','recruiter',2,54000);
Query OK, 1 row affected (0.02 sec)

mysql>
mysql> insert into employees values(103,'muneza','programer',3,4000);
Query OK, 1 row affected (0.02 sec)

mysql> insert into employees values(104,'kwizera','manager',4,8000);
Query OK, 1 row affected (0.03 sec)

mysql>
mysql> insert into employees values(105,'chantal','supervisor',5,3240);
Query OK, 1 row affected (0.02 sec)

mysql> select* from employees;
+-------+---------+------------+------------+--------+
| empid | empname | position   | deptmentid | salary |
+-------+---------+------------+------------+--------+
|   101 | john    | analyst    |          1 |  55000 |
|   102 | keza    | recruiter  |          2 |  54000 |
|   103 | muneza  | programer  |          3 |   4000 |
|   104 | kwizera | manager    |          4 |   8000 |
|   105 | chantal | supervisor |          5 |   3240 |
+-------+---------+------------+------------+--------+
5 rows in set (0.00 sec)

mysql> desc employees;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| empid      | int(11)      | NO   | PRI | NULL    |       |
| empname    | varchar(100) | YES  |     | NULL    |       |
| position   | varchar(100) | YES  |     | NULL    |       |
| deptmentid | int(11)      | YES  | MUL | NULL    |       |
| salary     | int(100)     | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
5 rows in set (0.02 sec)

mysql> select employees.name, department.deptname from employees left join department on employees.deptmentid= department.deptmentid);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 1
mysql> select employees.name, department.deptname from employees left join department on employees.deptmentid= department.deptmentid;
ERROR 1054 (42S22): Unknown column 'employees.name' in 'field list'
mysql> select employees.empname, department.deptname from employees left join department on employees.deptmentid= department.deptmentid;
+---------+-----------+
| empname | deptname  |
+---------+-----------+
| john    | finance   |
| keza    | business  |
| muneza  | marketing |
| kwizera | medecine  |
| chantal | economic  |
+---------+-----------+
5 rows in set (0.00 sec)

mysql> select employees.empname,department.deptname from employees right join department on employees.deptmentid=department.deptmentid;
+---------+-----------+
| empname | deptname  |
+---------+-----------+
| john    | finance   |
| keza    | business  |
| muneza  | marketing |
| kwizera | medecine  |
| chantal | economic  |
+---------+-----------+
5 rows in set (0.00 sec)

mysql> select* from employees where salary > (select avg(salary) from employees);
+-------+---------+-----------+------------+--------+
| empid | empname | position  | deptmentid | salary |
+-------+---------+-----------+------------+--------+
|   101 | john    | analyst   |          1 |  55000 |
|   102 | keza    | recruiter |          2 |  54000 |
+-------+---------+-----------+------------+--------+
2 rows in set (0.00 sec)

Question 7
mysql> CREATE TABLE STUDENT(studentid VARCHAR(5),fullname VARCHAR(25),gender VARCHAR(6),age INT(2), department VARCHAR(30));
Query OK, 0 rows affected (0.02 sec)

mysql> SELECT * FROM STUDENT;
Empty set (0.00 sec)

mysql> INSERT INTO STUDENT (studentid, fullname, gender, age, department)VALUES ('S001', 'Alice Johnson', 'Female', 21, 'Computer Science'),  ('S002', 'Bob Smith', 'Male', 20, 'Mathematics');
Query OK, 2 rows affected (0.02 sec)
Records: 2  Duplicates: 0  Warnings: 0

1.	Mysql> SELECT * FROM STUDENT;
+-----------+---------------+--------+------+------------------+
| studentid | fullname      | gender | age  | department       |
+-----------+---------------+--------+------+------------------+
| S001      | Alice Johnson | Female |   21 | Computer Science |
| S002      | Bob Smith     | Male   |   20 | Mathematics      |
+-----------+---------------+--------+------+------------------+
2 rows in set (0.00 sec)

2. mysql> SELECT * FROM STUDENT WHERE gender = 'Female';
+-----------+---------------+--------+------+------------------+
| studentid | fullname      | gender | age  | department       |
+-----------+---------------+--------+------+------------------+
| S001      | Alice Johnson | Female |   21 | Computer Science |
+-----------+---------------+--------+------+------------------+
1 row in set (0.00 sec)

3. mysql> SELECT * FROM STUDENT WHERE gender = 'Male';
+-----------+-----------+--------+------+-------------+
| studentid | fullname  | gender | age  | department  |
+-----------+-----------+--------+------+-------------+
| S002      | Bob Smith | Male   |   20 | Mathematics |
+-----------+-----------+--------+------+-------------+
1 row in set (0.00 sec)

4.Mysql> INSERT INTO STUDENT (studentid, fullname, gender, age, department)VALUES ('S001', 'Alice Johnson', 'Female', 21, 'Computer Science'),('S002', 'Bob Smith', 'Male', 20, 'Mathematics');
Query OK, 2 rows affected (0.02 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select* from student;
+-----------+---------------+--------+------+------------------+
| studentid | fullname      | gender | age  | department       |
+-----------+---------------+--------+------+------------------+
| S001      | Alice Johnson | Female |   21 | Computer Science |
| S002      | Bob Smith     | Male   |   20 | Mathematics      |
| S001      | Alice Johnson | Female |   21 | Computer Science |
| S002      | Bob Smith     | Male   |   20 | Mathematics      |
+-----------+---------------+--------+------+------------------+
4 rows in set (0.00 sec)

5. mysql> DELETE FROM STUDENT WHERE age < 20;
Query OK, 0 rows affected (0.00 sec)

mysql> select* from student;
+-----------+---------------+--------+------+------------------+
| studentid | fullname      | gender | age  | department       |
+-----------+---------------+--------+------+------------------+
| S001      | Alice Johnson | Female |   21 | Computer Science |
| S002      | Bob Smith     | Male   |   20 | Mathematics      |
| S001      | Alice Johnson | Female |   21 | Computer Science |
| S002      | Bob Smith     | Male   |   20 | Mathematics      |
+-----------+---------------+--------+------+------------------+
4 rows in set (0.00 sec)

PART  C


QUESTION 10

Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 5.5.16-log MySQL Community Server (GPL)

Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> Enter password:
    -> Welcome to the MySQL monitor.  Commands end with ; or \g.
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Enter password:
Welcome to the MySQL monitor.  Commands end with' at line 1
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'or' at line 1
    -> Your MySQL connection id is 22
    -> Server version: 8.0.21 MySQL Community Server - GPL
    ->
    -> Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.
    ->
    -> Oracle is a registered trademark of Oracle Corporation and/or its
    -> affiliates. Other names may be trademarks of their respective
    -> owners.
    ->
    -> Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
    ->
    -> mysql> create database SALES;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '.
Your MySQL connection id is 22
Server version: 8.0.21 MySQL Community Server -' at line 1
mysql> Query OK, 1 row affected (0.00 sec)
    ->
    -> mysql> use sales;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 1 row affected (0.00 sec)

mysql> use sales' at line 1
mysql> Database changed
    -> mysql> CREATE TABLE Sales (
    ->     ->     Sales_No INT PRIMARY KEY,
    ->     ->     Salesname VARCHAR(50),
    ->     ->     Branch VARCHAR(50),
    ->     ->     Salesamount DECIMAL(10, 2),
    ->     ->     DOB DATE
    ->     -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Database changed
mysql> CREATE TABLE Sales (
    ->     Sales_No INT PRIMARY KEY' at line 1
mysql> Query OK, 0 rows affected (0.01 sec)
    ->
    -> mysql> INSERT INTO Sales (Sales_No, Salesname, Branch, Salesamount, DOB) VALUES
    ->     ->     (1, 'Mucyo Nshimiyimana', 'Kigali Branch', 1000, '1990-12-15'),
    ->     ->     (2, 'Ganza Rurangirwa', 'Huye Branch', 1500, '1985-05-20'),
    ->     ->     (3, 'David Lee', 'Musanze Branch', 800, '1978-08-10'),
    ->     ->     (4, 'Sarah Jones', 'Rubavu Branch', 2000, '1992-11-01'),
    ->     ->     (5, 'Michael Brown', 'Kigali Branch', 1200, '1988-12-25');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 0 rows affected (0.01 sec)

mysql> INSERT INTO Sales (Sales_No, Salesn' at line 1
mysql> Query OK, 5 rows affected (0.00 sec)
    -> Records: 5  Duplicates: 0  Warnings: 0
    ->
    -> mysql> select * from sales;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mys' at line 1
mysql> +----------+--------------------+----------------+-------------+------------+
    -> | Sales_No | Salesname          | Branch         | Salesamount | DOB        |
    -> +----------+--------------------+----------------+-------------+------------+
    -> |        1 | Mucyo Nshimiyimana | Kigali Branch  |     1000.00 | 1990-12-15 |
    -> |        2 | Ganza Rurangirwa   | Huye Branch    |     1500.00 | 1985-05-20 |
    -> |        3 | David Lee          | Musanze Branch |      800.00 | 1978-08-10 |
    -> |        4 | Sarah Jones        | Rubavu Branch  |     2000.00 | 1992-11-01 |
    -> |        5 | Michael Brown      | Kigali Branch  |     1200.00 | 1988-12-25 |
    -> +----------+--------------------+----------------+-------------+------------+
    -> 5 rows in set (0.00 sec)
    ->
    -> mysql> SELECT Branch, SUM(Salesamount) AS Total_Sales
    ->     -> FROM Sales
    ->     -> GROUP BY Branch;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '+----------+--------------------+----------------+-------------+------------+
| ' at line 1
mysql> +----------------+-------------+
    -> | Branch         | Total_Sales |
    -> +----------------+-------------+
    -> | Kigali Branch  |     2200.00 |
    -> | Huye Branch    |     1500.00 |
    -> | Musanze Branch |      800.00 |
    -> | Rubavu Branch  |     2000.00 |
    -> +----------------+-------------+
    -> 4 rows in set (0.00 sec)
    ->
    -> mysql> SELECT Branch, AVG(Salesamount) AS Avg_Sales
    ->     -> FROM Sales
    ->     -> GROUP BY Branch;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '+----------------+-------------+
| Branch         | Total_Sales |
+-------------' at line 1
mysql> +----------------+-------------+
    -> | Branch         | Avg_Sales   |
    -> +----------------+-------------+
    -> | Kigali Branch  | 1100.000000 |
    -> | Huye Branch    | 1500.000000 |
    -> | Musanze Branch |  800.000000 |
    -> | Rubavu Branch  | 2000.000000 |
    -> +----------------+-------------+
    -> 4 rows in set (0.00 sec)
    ->
    -> mysql> SELECT Salesname, TO_CHAR(DOB, 'DD-Mon-YY') AS DOB_Formatted
    ->     -> FROM Sales
    ->     -> WHERE EXTRACT(MONTH FROM DOB) = 12;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '+----------------+-------------+
| Branch         | Avg_Sales   |
+-------------' at line 1
mysql> ERROR 1305 (42000): FUNCTION sales.TO_CHAR does not exist
    -> mysql> SELECT Salesname, TO_CHAR(DOB, 'DD-Mon-YY') AS DOB_Formatted
    ->     -> FROM Sales
    ->     -> WHERE EXTRACT(MONTH FROM DOB) = 12;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1305 (42000): FUNCTION sales.TO_CHAR does not exist
mysql> SELECT Salesnam' at line 1
mysql> ERROR 1305 (42000): FUNCTION sales.TO_CHAR does not exist
    ->
    -> mysql> SELECT Salesname, TO_CHAR(DOB, 'Mon') AS DOB_Month
    ->     -> FROM Sales
    ->     -> ORDER BY DOB_Month;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1305 (42000): FUNCTION sales.TO_CHAR does not exist

mysql> SELECT Salesna' at line 1
mysql> ERROR 1305 (42000): FUNCTION sales.TO_CHAR does not exist
    ->
    -> mysql> SELECT Salesname, DATE_FORMAT(DOB, '%d-%b-%y') AS DOB_Formatted
    ->     -> FROM Sales
    ->     -> WHERE MONTH(DOB) = 12;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1305 (42000): FUNCTION sales.TO_CHAR does not exist

mysql> SELECT Salesna' at line 1
mysql> +--------------------+---------------+
    -> | Salesname          | DOB_Formatted |
    -> +--------------------+---------------+
    -> | Mucyo Nshimiyimana | 15-Dec-90     |
    -> | Michael Brown      | 25-Dec-88     |
    -> +--------------------+---------------+
    -> 2 rows in set (0.00 sec)
    ->
    -> mysql> SELECT Salesname, DATE_FORMAT(DOB, '%b') AS DOB_Month
    ->     -> FROM Sales
    ->     -> ORDER BY DOB_Month;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '+--------------------+---------------+
| Salesname          | DOB_Formatted |
+-' at line 1
mysql> +--------------------+-----------+
    -> | Salesname          | DOB_Month |
    -> +--------------------+-----------+
    -> | David Lee          | Aug       |
    -> | Mucyo Nshimiyimana | Dec       |
    -> | Michael Brown      | Dec       |
    -> | Ganza Rurangirwa   | May       |
    -> | Sarah Jones        | Nov       |
    -> +--------------------+-----------+
    -> 5 rows in set (0.00 sec)
    
QUESTION 9


Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 5.5.16-log MySQL Community Server (GPL)

Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> Enter password:
    -> Welcome to the MySQL monitor.  Commands end with ; or \g.
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Enter password:
Welcome to the MySQL monitor.  Commands end with' at line 1
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'or' at line 1
    -> Your MySQL connection id is 21
    -> Server version: 8.0.21 MySQL Community Server - GPL
    ->
    -> Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.
    ->
    -> Oracle is a registered trademark of Oracle Corporation and/or its
    -> affiliates. Other names may be trademarks of their respective
    -> owners.
    ->
    -> Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
    ->
    -> mysql> create database SCHOOL2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '.
Your MySQL connection id is 21
Server version: 8.0.21 MySQL Community Server -' at line 1
mysql> Query OK, 1 row affected (0.00 sec)
    ->
    -> mysql> use school2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 1 row affected (0.00 sec)

mysql> use school2' at line 1
mysql> Database changed
    -> mysql> CREATE TABLE EMPLOYEES (
    ->     ->     Employee_Id INT PRIMARY KEY,
    ->     ->     First_Name VARCHAR(50),
    ->     ->     Last_Name VARCHAR(50),
    ->     ->     Email VARCHAR(100),
    ->     ->     Phone_Number VARCHAR(20),
    ->     ->     Hire_Date DATE,
    ->     ->     Job_Id VARCHAR(10),
    ->     ->     Salary DECIMAL(10, 2),
    ->     ->     Commission_Pct DECIMAL(5, 2),
    ->     ->     Manager_Id INT,
    ->     ->     Department_Id INT
    ->     -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Database changed
mysql> CREATE TABLE EMPLOYEES (
    ->     Employee_Id INT PRIM' at line 1
mysql> Query OK, 0 rows affected (0.01 sec)
    ->
    -> mysql> desc employees;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 0 rows affected (0.01 sec)

mysql> desc employees' at line 1
mysql> +----------------+---------------+------+-----+---------+-------+
    -> | Field          | Type          | Null | Key | Default | Extra |
    -> +----------------+---------------+------+-----+---------+-------+
    -> | Employee_Id    | int           | NO   | PRI | NULL    |       |
    -> | First_Name     | varchar(50)   | YES  |     | NULL    |       |
    -> | Last_Name      | varchar(50)   | YES  |     | NULL    |       |
    -> | Email          | varchar(100)  | YES  |     | NULL    |       |
    -> | Phone_Number   | varchar(20)   | YES  |     | NULL    |       |
    -> | Hire_Date      | date          | YES  |     | NULL    |       |
    -> | Job_Id         | varchar(10)   | YES  |     | NULL    |       |
    -> | Salary         | decimal(10,2) | YES  |     | NULL    |       |
    -> | Commission_Pct | decimal(5,2)  | YES  |     | NULL    |       |
    -> | Manager_Id     | int           | YES  |     | NULL    |       |
    -> | Department_Id  | int           | YES  |     | NULL    |       |
    -> +----------------+---------------+------+-----+---------+-------+
    -> 11 rows in set (0.00 sec)
    ->
    -> mysql> INSERT INTO EMPLOYEES (Employee_Id, First_Name, Last_Name, Email, Phone_Number, Hire_Date, Job_Id, Salary, Commission_Pct, Manager_Id, Department_Id)
    ->     -> VALUES
    ->     -> (101, 'John', 'Smith', 'john.smith@example.com', '123-456-7890', '2022-05-01', 'IT_PROG', 5500.00, NULL, 100, 60),
    ->     -> (102, 'Jane', 'Austin', 'jane.austin@example.com', '234-567-8901', '2021-03-15', 'HR_MGR', 4800.00, 0.10, 100, 70),
    ->     -> (103, 'Michael', 'Brown', 'michael.brown@example.com', '345-678-9012', '2023-01-12', 'SA_REP', 6000.00, 0.20, 101, 80),
    ->     -> (104, 'Anna', 'Taylor', 'anna.taylor@example.com', '456-789-0123', '2020-07-23', 'AD_VP', 9000.00, NULL, NULL, 90),
    ->     -> (105, 'Chris', 'Johnson', 'chris.johnson@example.com', '567-890-1234', '2021-11-04', 'IT_PROG', 5200.00, NULL, 102, 60);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '+----------------+---------------+------+-----+---------+-------+
| Field       ' at line 1
mysql> Query OK, 5 rows affected (0.00 sec)
    -> Records: 5  Duplicates: 0  Warnings: 0
    ->
    -> mysql> truncate table employees;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mys' at line 1
mysql> Query OK, 0 rows affected (0.01 sec)
    ->
    -> mysql> INSERT INTO EMPLOYEES (Employee_Id, First_Name, Last_Name, Email, Phone_Number, Hire_Date, Job_Id, Salary, Commission_Pct, Manager_Id, Department_Id)
    ->     -> VALUES
    ->     -> (101, 'John', 'Smith', 'john.smith@example.com', '123-456-7890', '2022-05-01', 'IT_PROG', 5500.00, NULL, 100, 60),
    ->     -> (102, 'Jane', 'Austin', 'jane.austin@example.com', '234-567-8901', '2021-03-15', 'HR_MGR', 4800.00, 0.10, 100, 70),
    ->     -> (103, 'Michael', 'Brown', 'michael.brown@example.com', '345-678-9012', '2023-01-12', 'SA_REP', 6000.00, 0.20, 101, 80),
    ->     -> (104, 'Anna', 'Taylor', 'anna.taylor@example.com', '456-789-0123', '2020-07-23', 'AD_VP', 9000.00, NULL, NULL, 90),
    ->     -> (102, 'Jane', 'Austin', 'jane.austin@example.com', '234-567;
    '>     '> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 0 rows affected (0.01 sec)

mysql> INSERT INTO EMPLOYEES (Employee_Id,' at line 1
mysql>     '> ^C
    '> mysql> (101, 'MANZI', 'ROBERT', 'manzirobert@gmail.com', '123-456-7890', '2022-05-01', 'IT_PROG', 5500.00, NULL, 100, 60),(102, 'IRACYADUKUNDA', 'FLORENTINE', 'iracyadukunda@gmail.com', '123-456-7890', '2022-05-01', 'HR', 5400.00, NULL, 100, 60),(102, 'eric', 'NIYIGENA','eric@gmail.com', '123-456-7220', '2022-05-01', 'FINANCE', 50000.00, NULL, 100, 60),(101, 'John', 'Smith', 'john.smith@example.com', '123-456-7890', '2022-05-01', 'IT_PROG', 5500.00, NULL, 100, 60),(101, 'John', 'Smith', 'john.smith@example.com', '123-456-7890', '2022-05-01', 'IT_PROG', 5500.00, 10.00, 100, 60);
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '101, 'MANZI', 'ROBERT', 'manzirobert@gmail.com', '123-456-7890', '2022-05-01', '' at line 1
    -> mysql> insert into employees values(101, 'MANZI', 'ROBERT', 'manzirobert@gmail.com', '123-456-7890', '2022-05-01', 'IT_PROG', 5500.00, NULL, 100, 60),(102, 'IRACYADUKUNDA', 'FLORENTINE', 'iracyadukunda@gmail.com', '123-456-7890', '2022-05-01', 'HR', 5400.00, NULL, 100, 60),(102, 'eric', 'NIYIGENA','eric@gmail.com', '123-456-7220', '2022-05-01', 'FINANCE', 50000.00, NULL, 100, 60),(101, 'John', 'Smith', 'john.smith@example.com', '123-456-7890', '2022-05-01', 'IT_PROG', 5500.00, NULL, 100, 60),(101, 'John', 'Smith', 'john.smith@example.com', '123-456-7890', '2022-05-01', 'IT_PROG', 5500.00, 10.00, 100, 60);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''> ^C
mysql> (101, 'MANZI', 'ROBERT', 'manzirobert@gmail.com', '123-456-7890', '' at line 1
mysql> ERROR 1062 (23000): Duplicate entry '102' for key 'employees.PRIMARY'
    -> mysql> insert into employees values(101, 'MANZI', 'ROBERT', 'manzirobert@gmail.com', '123-456-7890', '2022-05-01', 'IT_PROG', 5500.00, NULL, 100, 60),(109, 'IRACYADUKUNDA', 'FLORENTINE', 'iracyadukunda@gmail.com', '123-456-7890', '2022-05-01', 'HR', 5400.00, NULL, 100, 60),(106, 'eric', 'NIYIGENA','eric@gmail.com', '123-456-7220', '2022-05-01', 'FINANCE', 50000.00, NULL, 100, 60),(104, 'John', 'Smith', 'john.smith@example.com', '123-456-7890', '2022-05-01', 'IT_PROG', 5500.00, NULL, 100, 60),(105, 'John', 'Smith', 'john.smith@example.com', '123-456-7890', '2022-05-01', 'IT_PROG', 5500.00, 10.00, 100, 60);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1062 (23000): Duplicate entry '102' for key 'employees.PRIMARY'
mysql> ins' at line 1
mysql> ERROR 1062 (23000): Duplicate entry '101' for key 'employees.PRIMARY'
    -> mysql> insert into employees values(101, 'MANZI', 'ROBERT', 'manzirobert@gmail.com', '123-456-7890', '2022-05-01', 'IT_PROG', 5500.00, NULL, 100, 60),(109, 'IRACYADUKUNDA', 'FLORENTINE', 'iracyadukunda@gmail.com', '123-456-7890', '2022-05-01', 'HR', 5400.00, NULL, 100, 60),(110, 'eric', 'NIYIGENA','eric@gmail.com', '123-456-7220', '2022-05-01', 'FINANCE', 50000.00, NULL, 100, 60),(104, 'John', 'Smith', 'john.smith@example.com', '123-456-7890', '2022-05-01', 'IT_PROG', 5500.00, NULL, 100, 60),(105, 'John', 'Smith', 'john.smith@example.com', '123-456-7890', '2022-05-01', 'IT_PROG', 5500.00, 10.00, 100, 60);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1062 (23000): Duplicate entry '101' for key 'employees.PRIMARY'
mysql> ins' at line 1
mysql> ERROR 1062 (23000): Duplicate entry '101' for key 'employees.PRIMARY'
    -> mysql> select * from employees;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1062 (23000): Duplicate entry '101' for key 'employees.PRIMARY'
mysql> sel' at line 1
mysql> +-------------+---------------+------------+-------------------------+--------------+------------+---------+---------+----------------+------------+---------------+
    -> | Employee_Id | First_Name    | Last_Name  | Email                   | Phone_Number | Hire_Date  | Job_Id  | Salary  | Commission_Pct | Manager_Id | Department_Id |
    -> +-------------+---------------+------------+-------------------------+--------------+------------+---------+---------+----------------+------------+---------------+
    -> |         101 | MANZI         | ROBERT     | manzirobert@gmail.com   | 123-456-7890 | 2022-05-01 | IT_PROG | 5500.00 |           NULL |        100 |            60 |
    -> |         102 | IRACYADUKUNDA | FLORENTINE | iracyadukunda@gmail.com | 123-456-7890 | 2022-05-01 | HR      | 5400.00 |           NULL |        100 |            60 |
    -> +-------------+---------------+------------+-------------------------+--------------+------------+---------+---------+----------------+------------+---------------+
    -> 2 rows in set (0.00 sec)
    ->
    -> mysql> insert into employees values(103,'John', 'Smith', 'john.smith@example.com', '123-456-7890', '2022-05-01', 'FINANCE', 5500.00, 20, 100, 60);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '+-------------+---------------+------------+-------------------------+----------' at line 1
mysql> Query OK, 1 row affected (0.00 sec)
    ->
    -> mysql> insert into employees values(103,'robert', 'kagabo', 'kangabe@gmail.com', '123-456-7890', '2022-05-01', 'TEACHER', 10000.00, 12, 120, 10);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 1 row affected (0.00 sec)

mysql> insert into employees values(103,'ro' at line 1
mysql> ERROR 1062 (23000): Duplicate entry '103' for key 'employees.PRIMARY'
    -> mysql> insert into employees values(104,'robert', 'kagabo', 'kangabe@gmail.com', '123-456-7890', '2022-05-01', 'TEACHER', 10000.00, 12, 120, 10);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1062 (23000): Duplicate entry '103' for key 'employees.PRIMARY'
mysql> ins' at line 1
mysql> Query OK, 1 row affected (0.00 sec)
    ->
    -> mysql> insert into employees values(105,'mutuye', 'ALINE', 'MUTUYEALINE@gmail.com', '122-456-72890', '2023-05-01', 'REGISTRAR', 12300.00, 13, 20, 30);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 1 row affected (0.00 sec)

mysql> insert into employees values(105,'mu' at line 1
mysql> Query OK, 1 row affected (0.00 sec)
    ->
    -> mysql> select * rrom employees;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 1 row affected (0.00 sec)

mysql> select * rrom employees' at line 1
mysql> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'rrom employees' at line 1
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1064 (42000): You have an error in your SQL syntax' at line 1
    -> mysql> select * from employees;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'the manual that corresponds to your MySQL server version for the right syntax to' at line 1
mysql> +-------------+---------------+------------+-------------------------+---------------+------------+-----------+----------+----------------+------------+---------------+
    -> | Employee_Id | First_Name    | Last_Name  | Email                   | Phone_Number  | Hire_Date  | Job_Id    | Salary   | Commission_Pct | Manager_Id | Department_Id |
    -> +-------------+---------------+------------+-------------------------+---------------+------------+-----------+----------+----------------+------------+---------------+
    -> |         101 | MANZI         | ROBERT     | manzirobert@gmail.com   | 123-456-7890  | 2022-05-01 | IT_PROG   |  5500.00 |           NULL |        100 |            60 |
    -> |         102 | IRACYADUKUNDA | FLORENTINE | iracyadukunda@gmail.com | 123-456-7890  | 2022-05-01 | HR        |  5400.00 |           NULL |        100 |            60 |
    -> |         103 | John          | Smith      | john.smith@example.com  | 123-456-7890  | 2022-05-01 | FINANCE   |  5500.00 |          20.00 |        100 |            60 |
    -> |         104 | robert        | kagabo     | kangabe@gmail.com       | 123-456-7890  | 2022-05-01 | TEACHER   | 10000.00 |          12.00 |        120 |            10 |
    -> |         105 | mutuye        | ALINE      | MUTUYEALINE@gmail.com   | 122-456-72890 | 2023-05-01 | REGISTRAR | 12300.00 |          13.00 |         20 |            30 |
    -> +-------------+---------------+------------+-------------------------+---------------+------------+-----------+----------+----------------+------------+---------------+
    -> 5 rows in set (0.00 sec)
    ->
    -> mysql> select employee_id,First_Name,Last_Name,Email,Salary from employees;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '+-------------+---------------+------------+-------------------------+----------' at line 1
mysql> +-------------+---------------+------------+-------------------------+----------+
    -> | employee_id | First_Name    | Last_Name  | Email                   | Salary   |
    -> +-------------+---------------+------------+-------------------------+----------+
    -> |         101 | MANZI         | ROBERT     | manzirobert@gmail.com   |  5500.00 |
    -> |         102 | IRACYADUKUNDA | FLORENTINE | iracyadukunda@gmail.com |  5400.00 |
    -> |         103 | John          | Smith      | john.smith@example.com  |  5500.00 |
    -> |         104 | robert        | kagabo     | kangabe@gmail.com       | 10000.00 |
    -> |         105 | mutuye        | ALINE      | MUTUYEALINE@gmail.com   | 12300.00 |
    -> +-------------+---------------+------------+-------------------------+----------+
    -> 5 rows in set (0.00 sec)
    ->
    -> mysql> SELECT Employee_Id, First_Name, Last_Name
    ->     -> FROM EMPLOYEES
    ->     -> WHERE Manager_Id = 100;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '+-------------+---------------+------------+-------------------------+----------' at line 1
mysql> +-------------+---------------+------------+
    -> | Employee_Id | First_Name    | Last_Name  |
    -> +-------------+---------------+------------+
    -> |         101 | MANZI         | ROBERT     |
    -> |         102 | IRACYADUKUNDA | FLORENTINE |
    -> |         103 | John          | Smith      |
    -> +-------------+---------------+------------+
    -> 3 rows in set (0.00 sec)
    ->
    -> mysql> SELECT First_Name, Last_Name
    ->     -> FROM EMPLOYEES
    ->     -> WHERE Salary >= 4800;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '+-------------+---------------+------------+
| Employee_Id | First_Name    | Las' at line 1
mysql> +---------------+------------+
    -> | First_Name    | Last_Name  |
    -> +---------------+------------+
    -> | MANZI         | ROBERT     |
    -> | IRACYADUKUNDA | FLORENTINE |
    -> | John          | Smith      |
    -> | robert        | kagabo     |
    -> | mutuye        | ALINE      |
    -> +---------------+------------+
    -> 5 rows in set (0.00 sec)
    ->
    -> mysql> SELECT First_Name, Last_Name
    ->     -> FROM EMPLOYEES
    ->     -> WHERE Last_Name = 'AUSTIN';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '+---------------+------------+
| First_Name    | Last_Name  |
+---------------+-' at line 1
mysql> Empty set (0.00 sec)
    ->
    -> mysql> SELECT First_Name, Last_Name
    ->     -> FROM EMPLOYEES
    ->     -> WHERE Department_Id IN (60, 70, 80);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Empty set (0.00 sec)

mysql> SELECT First_Name, Last_Name
    -> FROM EMPLOYEES
' at line 1
mysql> +---------------+------------+
    -> | First_Name    | Last_Name  |
    -> +---------------+------------+
    -> | MANZI         | ROBERT     |
    -> | IRACYADUKUNDA | FLORENTINE |
    -> | John          | Smith      |
    -> +---------------+------------+
    -> 3 rows in set (0.00 sec)
    ->
    -> mysql>

