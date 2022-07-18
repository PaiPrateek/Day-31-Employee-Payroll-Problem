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
