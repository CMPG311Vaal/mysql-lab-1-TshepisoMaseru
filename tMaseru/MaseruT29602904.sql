
Question 1


mysql> create database Bidvestbank;
mysql> use BidvestBank;
mysql> Database changed
    ->  create table CustomerAccount
    ->     (
    ->     account_number char(15) not null primary key,
    ->     branch_name varchar(20),
    ->     balance double
    ->      );


mysql> create table BankBranch
    -> (
    -> branch_name varchar(25) not null primary key,
    -> branch_city varchar(25),
    -> assets varchar(25)
    -> );
Query OK, 0 rows affected (0.16 sec)

mysql> create table Customer
    -> (
    -> customer_name varchar(25) not null primary key,
    -> customer_street varchar(25),
    -> customer_city varchar(25)
    -> );
Query OK, 0 rows affected (0.17 sec)


mysql> create table Loan
    -> (
    -> loan_number char(15) not null primary key,
    -> branch_name varchar(25),
    -> amount double
    -> );
Query OK, 0 rows affected (0.14 sec)

mysql> create table Depositor
    -> (
    -> customer_name varchar(25) not null primary key,
    -> account_number char(15)
    -> );
Query OK, 0 rows affected (0.17 sec)

mysql> create table Borrower
    -> (
    -> customer_name varchar(25) not null primary key,
    -> loan_number char(15)
    -> );
Query OK, 0 rows affected (0.22 sec)

mysql> create table Employee
    -> (
    -> employee_name varchar(25) not null primary key,
    -> branch_name varchar(25),
    -> salary double
    -> );
Query OK, 0 rows affected (0.50 sec)

mysql> show tables;
+-----------------------+
| Tables_in_bidvestbank |
+-----------------------+
| bankbranch            |
| borrower              |
| customer              |
| customeraccount       |
| depositor             |
| employee              |
| loan                  |
+-----------------------+
7 rows in set (0.01 sec)


mysql> insert into CustomerAccount values('A-5324', 'Newtown', 500);
Query OK, 1 row affected (0.09 sec)

mysql> insert into CustomerAccount values('A-5624', 'Sunnyside', 400);
Query OK, 1 row affected (0.08 sec)

mysql> insert into CustomerAccount values('A-7794', 'Midrand', 900);
Query OK, 1 row affected (0.05 sec)

mysql> insert into CustomerAccount values('A-4467', 'Mabopane', 700);
Query OK, 1 row affected (0.06 sec)

mysql> insert into CustomerAccount values('A-3546', 'Midrand', 750);
Query OK, 1 row affected (0.06 sec)

mysql> insert into CustomerAccount values('A-3453', 'Universitas', 700);
Query OK, 1 row affected (0.06 sec)

mysql> insert into CustomerAccount values('A-2542', 'Mamelodi', 350);
Query OK, 1 row affected (0.06 sec)

mysql> insert into BankBranch values('Midrand', 'Johannesburg', 7100000);
Query OK, 1 row affected (0.06 sec)

mysql> insert into BankBranch values('Newtown', 'Johannesburg', 9000000);
Query OK, 1 row affected (0.05 sec)

mysql> insert into BankBranch values('Mabopane', 'Pretoria', 1700000);
Query OK, 1 row affected (0.05 sec)

mysql> insert into BankBranch values('Belgravia', 'Kimberly', 3700000);
Query OK, 1 row affected (0.05 sec)

mysql> insert into BankBranch values('Sunnyside', 'Pretoria', 1700000);
Query OK, 1 row affected (0.05 sec)

mysql> insert into BankBranch values('Amanzimtoti', 'Durban', 300000);
Query OK, 1 row affected (0.06 sec)

mysql> insert into BankBranch values('Universitas', 'Bloemfontein', 2100000);
Query OK, 1 row affected (0.08 sec)

mysql> insert into BankBranch values('Mamelodi', 'Pretoria', 8000000);
Query OK, 1 row affected (0.05 sec)

mysql> insert into Customer values('Modise', 'Spring', 'George');
Query OK, 1 row affected (0.06 sec)

mysql> insert into Customer values('Brooks', 'Senator', 'Johannesburg');
Query OK, 1 row affected (0.06 sec)

mysql> insert into Customer values('Jooste', 'North', 'Kimberly');
Query OK, 1 row affected (0.06 sec)

mysql> insert into Customer values('Lombard', 'Sand Hill', 'Nelspruit');
Query OK, 1 row affected (0.06 sec)

mysql> insert into Customer values('Mokwena', 'Walnut', 'Port-Elizabeth');
Query OK, 1 row affected (0.06 sec)

mysql> insert into Customer values('Johnson', 'Mmabatho', 'Mafikeng');
Query OK, 1 row affected (0.08 sec)

mysql> ALTER TABLE CUSTOMER DROP PRIMARY KEY;
Query OK, 6 rows affected (0.69 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> insert into Customer values('Johnson', 'Alma', 'Bloemfontein');
Query OK, 1 row affected (0.08 sec)

mysql> insert into Customer values('Zwane', 'Main', 'Mafikeng');
Query OK, 1 row affected (0.06 sec)

mysql> insert into Customer values('Lindsay', 'Park', 'George');
Query OK, 1 row affected (0.06 sec)

mysql> insert into Customer values('Smith', 'North', 'Kimberly');
Query OK, 1 row affected (0.06 sec)

mysql> insert into Customer values('Dlamini', 'Putnam', 'Port-Elizabeth');
Query OK, 1 row affected (0.09 sec)

mysql> insert into Customer values('Williams', 'Nassau', 'Giyane');
Query OK, 1 row affected (0.08 sec)

mysql>  ALTER TABLE Depositor DROP PRIMARY KEY;
Query OK, 0 rows affected (0.39 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> insert into Depositor values('Johnson', 'A-5624');
Query OK, 1 row affected (0.05 sec)

mysql> insert into Depositor values('Johnson', 'A-5624');
Query OK, 1 row affected (0.11 sec)

mysql> insert into Depositor values('Johnson', 'A-7794');
Query OK, 1 row affected (0.06 sec)

mysql> insert into Depositor values('Zwane', 'A-3546');
Query OK, 1 row affected (0.05 sec)

mysql> insert into Depositor values('Lindsay', 'A-3453');
Query OK, 1 row affected (0.05 sec)

mysql> insert into Depositor values('Smith', 'A-4467');
Query OK, 1 row affected (0.06 sec)

mysql> insert into Depositor values('Dlamini', 'A-2542');
Query OK, 1 row affected (0.08 sec)

mysql> select * from Depositor;

mysql> insert into Loan values('L-11', 'Mamelodi', 900);
Query OK, 1 row affected (0.23 sec)

mysql> insert into Loan values('L-14', 'Newtown', 1500);
Query OK, 1 row affected (0.11 sec)

mysql> insert into Loan values('L-15', 'Sunnyside', 1500);
Query OK, 1 row affected (0.06 sec)

mysql> insert into Loan values('L-16', 'Sunnyside', 1300);
Query OK, 1 row affected (0.05 sec)

mysql> insert into Loan values('L-17', 'Newtown', 1000);
Query OK, 1 row affected (0.06 sec)

mysql> insert into Loan values('L-23', 'Universitas', 2000);
Query OK, 1 row affected (0.06 sec)

mysql> insert into Loan values('L-93', 'Mabopane', 500);
Query OK, 1 row affected (0.17 sec)

mysql> insert into Borrower values('Modise', 'L-16');
Query OK, 1 row affected (0.17 sec)

mysql> ALTER TABLE Borrower DROP PRIMARY KEY;
Query OK, 1 row affected (0.45 sec)
Records: 1  Duplicates: 0  Warnings: 0

mysql> insert into Borrower values('Jooste', 'L-93');
Query OK, 1 row affected (0.11 sec)

mysql> insert into Borrower values('Johnson', 'L-15');
Query OK, 1 row affected (0.06 sec)

mysql> insert into Borrower values('Jackson', 'L-14');
Query OK, 1 row affected (0.05 sec)

mysql> insert into Borrower values('Zwane', 'L-17');
Query OK, 1 row affected (0.06 sec)

mysql> insert into Borrower values('Smith', 'L-11');
Query OK, 1 row affected (0.05 sec)

mysql> insert into Borrower values('Smith', 'L-23');
Query OK, 1 row affected (0.05 sec)

mysql> insert into Borrower values('Williams', 'L-17');
Query OK, 1 row affected (0.06 sec)

mysql> insert into Employee values('Modise', 'Sunnyside', 1500);
Query OK, 1 row affected (0.09 sec)

mysql> insert into Employee values('Brown', 'Sunnyside', 1300);
Query OK, 1 row affected (0.06 sec)

mysql> insert into Employee values('Gopal', 'Sunnyside', 5300);
Query OK, 1 row affected (0.06 sec)

mysql> insert into Employee values('Johnson', 'Newtown', 1500);
Query OK, 1 row affected (0.07 sec)

mysql> insert into Employee values('Loreena', 'Newtown', 1300);
Query OK, 1 row affected (0.09 sec)

mysql> insert into Employee values('Peterson', 'Newtown', 2500);
Query OK, 1 row affected (0.06 sec)

mysql> insert into Employee values('Rao', 'Austin', 1500);
Query OK, 1 row affected (0.06 sec)

mysql> insert into Employee values('Sato', 'Austin', 1600);
Query OK, 1 row affected (0.08 sec)

mysql> SELECT account_number,balance FROM CustomerAccount WHERE balance < 700;
+----------------+---------+
| account_number | balance |
+----------------+---------+
| A-2542         |     350 |
| A-5324         |     500 |
| A-5624         |     400 |
+----------------+---------+
3 rows in set (0.05 sec)


mysql> select customer_name,customer_city FROM Customer WHERE customer_city='Johannesburg';
+---------------+---------------+
| customer_name | customer_city |
+---------------+---------------+
| Brooks        | Johannesburg  |
+---------------+---------------+
1 row in set (0.00 sec)


mysql> select employee_name,branch_name,salary
    -> from employee
    -> where salary > 1500 and branch_name != 'newtown';
+---------------+-------------+--------+
| employee_name | branch_name | salary |
+---------------+-------------+--------+
| Gopal         | Sunnyside   |   5300 |
| Sato          | Austin      |   1600 |
+---------------+-------------+--------+
2 rows in set (0.00 sec)


mysql> SELECT AVG(salary) From Employee WHERE branch_name = Employee.branch_name;
+-------------+
| AVG(salary) |
+-------------+
|      2062.5 |
+-------------+
1 row in set (0.00 sec)

mysql> SELECT MAX(assets) AS max_amount FROM BankBranch;
+------------+
| max_amount |
+------------+
| 9000000    |
+------------+
1 row in set (0.00 sec)


mysql>  SELECT employee_name,branch_name FROM Employee WHERE branch_name='Sunnyside';
+---------------+-------------+
| employee_name | branch_name |
+---------------+-------------+
| Brown         | Sunnyside   |
| Gopal         | Sunnyside   |
| Modise        | Sunnyside   |
+---------------+-------------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM Borrower;
+---------------+-------------+
| customer_name | loan_number |
+---------------+-------------+
| Modise        | L-16        |
| Jooste        | L-93        |
| Johnson       | L-15        |
| Jackson       | L-14        |
| Zwane         | L-17        |
| Smith         | L-11        |
| Smith         | L-23        |
| Williams      | L-17        |
+---------------+-------------+
8 rows in set (0.00 sec)

mysql>  SELECT account_number,balance FROM CustomerAccount WHERE balance > 600 AND branch_name = 'Newtown';
Empty set (0.00 sec)

mysql> SELECT branch_name,assets FROM BankBranch;
+-------------+---------+
| branch_name | assets  |
+-------------+---------+
| Amanzimtoti | 300000  |
| Belgravia   | 3700000 |
| Mabopane    | 1700000 |
| Mamelodi    | 8000000 |
| Midrand     | 7100000 |
| Newtown     | 9000000 |
| Sunnyside   | 1700000 |
| Universitas | 2100000 |
+-------------+---------+
8 rows in set (0.00 sec)
