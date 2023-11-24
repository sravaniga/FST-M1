REM   Script: Activity6
REM   Session 01

create table SBTCustomers(CustID int, CustName varchar(20) not null, ContactName varchar(12), Address varchar(50), City varchar(20), PostalCode varchar(20), Country varchar(20));

insert into SBTCustomers (CustID, CustName, ContactName) values ('1', 'SBT', 'Shailesh');

insert into SBTCustomers values('2','Ram','developer','3rd Avenue','Mumbai','400045','India');

select * from SBTCustomers;

insert all into SBTCustomers values(3,'Lakshman','tester','4th Avenue','Delhi','400085','India')  
into SBTCustomers values(4,'Lakha','DevOps','6th Avenue','Chennai','400145','India')  
select 1 from dual;

select * from SBTCustomers;

select * from SBTCustomers order by country;

create table SBTCustomers(CustID int, CustName varchar(20) not null, ContactName varchar(12), Address varchar(50), City varchar(20), PostalCode varchar(20), Country varchar(20)) 
insert into SBTCustomers (CustID, CustName, ContactName) values ('1', 'SBT', 'Shailesh') 
insert into SBTCustomers values('2','Ram','developer','3rd Avenue','Mumbai','400045','India') 
select * from SBTCustomers 
insert all into SBTCustomers values(3,'Lakshman','tester','4th Avenue','Delhi','400085','India')  
into SBTCustomers values(4,'Lakha','DevOps','6th Avenue','Chennai','400145','India')  
select 1 from dual 
select * from SBTCustomers order by country desc 
 
;

select * from SBTCustomers order by country desc;

select * from SBTCustomers ;

create table SBTCustomers(CustID int, CustName varchar(20) not null, ContactName varchar(12), Address varchar(50), City varchar(20), PostalCode varchar(20), Country varchar(20)) 
insert into SBTCustomers (CustID, CustName, ContactName) values ('1', 'SBT', 'Shailesh') 
insert into SBTCustomers values('2','Ram','developer','3rd Avenue','Mumbai','400045','India') 
select * from SBTCustomers 
insert all into SBTCustomers values(3,'Lakshman','tester','4th Avenue','Delhi','400085','India')  
into SBTCustomers values(4,'Lakha','DevOps','6th Avenue','Chennai','400145','India')  
select 1 from dual 
select * from SBTCustomers order by country desc;

create table SBTCustomers(CustID int, CustName varchar(20) not null, ContactName varchar(12), Address varchar(50), City varchar(20), PostalCode varchar(20), Country varchar(20)) 
insert into SBTCustomers (CustID, CustName, ContactName) values ('1', 'SBT', 'Shailesh') 
insert into SBTCustomers values('2','Ram','developer','3rd Avenue','Mumbai','400045','India') 
select * from SBTCustomers 
insert all into SBTCustomers values(3,'Lakshman','tester','4th Avenue','Delhi','400085','India')  
into SBTCustomers values(4,'Lakha','DevOps','6th Avenue','Chennai','400145','India')  
select 1 from dual 
select * from SBTCustomers order by country desc ;

select * from SBTCustomers order by country desc ;

select * from SBTCustomers order by country desc;

select * from SBTCustomers order by country asc ;

create table employee (EmpID int, EmpName varchar2(20), DeptID int);

create table department(DeptID int, DeptName varchar2(20));

insert all  
	into employee values (1, 'Varun', 10) 
	into employee values (2, 'Nisha', 20) 
	into employee values (3, 'Myra', 30) 
	into employee values (4, 'Arun', 40) 
select 1 from dual;

insert all  
	into department values (10, 'Sales') 
	into department values (20, 'Finance') 
select 1 from dual;

select DeptID, count(EmpID) as headcount from employee group by DeptID order by DeptID;

alter table employee add salary int;

update employee set salary = 1000 where EmpID = 1;

update employee set salary = 4000 where EmpID = 2 
update employee set salary = 6000 where EmpID = 3 
update employee set salary = 2000 where EmpID = 4;

update employee set salary = 4000 where EmpID = 2;

update employee set salary = 6000 where EmpID = 3;

update employee set salary = 2000 where EmpID = 4;

select * from employee;

select DeptID, min(salary) as Min_Sal from employee group by DeptID order by DeptID;

update employee set salary = 500 where EmpID = 4;

select DeptID, min(salary) as Min_Sal from employee group by DeptID order by DeptID;

update employee set salary = 2000 where EmpID = 4;

select DeptID, min(salary) as Min_Sal from employee group by DeptID order by DeptID;

update employee set DeptID = 10 where EmpID = 3;

select DeptID, min(salary) as Min_Sal from employee group by DeptID order by DeptID;

update employee set DeptID = 20 where EmpID = 4;

select DeptID, count(EmpID) as headcount from employee group by DeptID order by DeptID;

select DeptID, min(salary) as Min_Sal from employee group by DeptID order by DeptID;

select DeptID, count(EmpID)  headcount from employee group by DeptID order by DeptID;

select DeptID, count(EmpID) headcount from employee group by DeptID having max(salary)>1000 order by headcount desc;

select DeptID, salary count(EmpID) headcount from employee group by DeptID having max(salary)>1000 order by headcount desc;

select DeptID, count(EmpID) headcount from employee group by DeptID having max(salary)>1000 order by headcount desc;

create table orders(order_no int primary key, purchase_amount float, order_date date, customer_id int, salesman_id int);

INSERT ALL 
    INTO orders VALUES(70001, 150.5, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3005, 5002)  
    INTO orders VALUES(70009, 270.65, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3001, 5005) 
    INTO orders VALUES(70002, 65.26, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70004, 110.5, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70007, 948.5, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3005, 5002) 
    INTO orders VALUES(70005, 2400.6, TO_DATE('2012/07/27', 'YYYY/MM/DD'), 3007, 5001) 
    INTO orders VALUES(70008, 5760, TO_DATE('2012/08/15', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70010, 1983.43, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3004, 5006) 
    INTO orders VALUES(70003, 2480.4, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70012, 250.45, TO_DATE('2012/06/27', 'YYYY/MM/DD'), 3008, 5002) 
    INTO orders VALUES(70011, 75.29, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3003, 5007) 
    INTO orders VALUES(70013, 3045.6, TO_DATE('2012/04/25', 'YYYY/MM/DD'), 3002, 5001) 
SELECT 1 FROM DUAL;

select distinct salesman_id from orders;

select order_no, order_date from orders order by order_date;

select order_no, purchase_amount from orders order by purchase_amount DESC;

select * from orders where purchase_amount < 500;

select * from orders where purchase_amount between 1000 and 2000;

