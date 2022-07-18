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