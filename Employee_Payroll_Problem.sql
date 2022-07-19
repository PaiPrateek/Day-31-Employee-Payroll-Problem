--Welcome to Employee Payroll Problem 

--Creating the database
Create Database payroll_service

--go to the databse
use payroll_service

--Creating the Table
Create Table employee_payroll(
id int primary key identity not null,
name varchar(20) not null,
salary int not null,
startdate date not null)

--to select all / display the table
select * from employee_payroll

--Inserting the data in to table
INSERT INTO employee_payroll values ('Prateek',25000,'2020-02-14'),('Manjesh',20000,'2019-02-10'),('Suhas',35000,'2019-11-04'),('Prajwal',15000,'2020-06-20'),('Sanath',18000,'2018-08-01');

--to select all / display the table
select * from employee_payroll

--Retrieve salary data from particular employee
SELECT salary FROM employee_payroll
WHERE name = 'Prateek'

--Retrieve Names from the selected date to present date
select name FROM employee_payroll
WHERE startdate BETWEEN CAST('2020-01-01' AS DATE) AND GETDATE()

--Alter table to add gender column
ALTER TABLE employee_payroll
add  gender char 

--update the gender 
update  employee_payroll
set gender = 'M'

--add field gender field after name field
select id,name,gender,startdate,salary from employee_payroll

--Sum of salary of employee groupby Male employee
select SUM(salary) FROM employee_payroll where gender = 'M' GROUP BY gender

--Average salary of employee groupby Male employee
select AVG(salary) FROM employee_payroll where gender = 'M' GROUP BY gender

--Min salary of employee groupby Male employee
select MIN(salary) FROM employee_payroll where gender = 'M' GROUP BY gender

--Max salary of employee groupby Male employee
select MAX(salary) FROM employee_payroll where gender = 'M' GROUP BY gender

--Number of employee groupby Male employee
select COUNT(salary) FROM employee_payroll where gender = 'M' GROUP BY gender

--Alter the Table
ALTER TABLE employee_payroll
add phone bigint , address varchar(25) default 'Bangalore', department varchar(20) 

select * from employee_payroll

--updating the phone, address and department field 
update employee_payroll
set phone = 9945007207, address = 'Bangalore', department = 'Mechanical' where name = 'Prateek'

update employee_payroll
set phone = 82115363496, address = 'Pavagada', department = 'Electronics' where name = 'Manjesh'

update employee_payroll
set phone = 7760054592, address = 'Bangalore', department = 'Civil' where name = 'Suhas'

update employee_payroll
set phone = 9865327452, address = 'Chitradurga', department = 'Computer Science' where name = 'Prajwal'

update employee_payroll
set phone = 8762265775, address = 'Udupi', department = 'Electrical' where name = 'Sanath'

--Altering the column deparment to not null
ALTER table employee_payroll
alter column department varchar(20) not null

--Altering the column address to not null
ALTER table employee_payroll
alter column address varchar(25)  not null

--ionsert the data into employee_payroll table
insert into employee_payroll values ('Rakesh',20000,'2019-12-15','M',8642516384,'Hubli','Production')

--Altering the table by adding additional information regarding salaryies of employee
ALTER TABLE employee_payroll
add BasicPay float, Deductions float, TaxablePay float, IncomeTax float, NetPay float

--updating the phone, address and department field 
update employee_payroll
set BasicPay = 25000, Deductions = 2000, TaxablePay = 1000, IncomeTax = 500, NetPay= 21500 where name = 'Prateek'

update employee_payroll
set BasicPay = 20000, Deductions = 1000, TaxablePay = 1000, IncomeTax = 200, NetPay= 18000 where name = 'Manjesh'

update employee_payroll
set BasicPay = 35000, Deductions = 2500, TaxablePay = 1500, IncomeTax = 500, NetPay= 30000 where name = 'Suhas'

update employee_payroll
set BasicPay = 15000, Deductions = 500, TaxablePay = 500, IncomeTax = 100, NetPay= 13500 where name = 'Prajwal'

update employee_payroll
set BasicPay = 18000, Deductions = 1000, TaxablePay = 500, IncomeTax = 100, NetPay= 16000 where name = 'Sanath'

update employee_payroll
set BasicPay = 20000, Deductions = 1000, TaxablePay = 1000, IncomeTax = 200, NetPay= 18000  where name = 'Rakesh'


--Insert employee details
insert into employee_payroll values ('Terissa', 35000, '2018-05-06', 'F',98263579510,'Mumbai','Sales',35000, 2500, 1500, 500, 31000),
('Terissa', 35000, '2018-05-06', 'F',98263579510,'Mumbai','Marketing',35000, 2500, 1500, 500, 31000)

--check for composite or multivaled data
select * from employee_payroll where name = 'Terissa'


