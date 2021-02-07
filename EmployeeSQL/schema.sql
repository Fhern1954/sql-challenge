--Drop table if one exists.
Drop Table departments;

--Create Table departments.
CREATE TABLE departments (
dept_no VARCHAR (10) PRIMARY KEY,
dept_name VARCHAR(30)
);

--Drop table if one exists.
DROP TABLE titles;

--Create Table titles.
CREATE TABLE titles (
title_id VARCHAR (10) PRIMARY KEY,
title TEXT
);


--Drop table if one exists.
DROP TABLE employees;

--Create Table employees.
CREATE TABLE employees(
emp_no INT PRIMARY KEY,
emp_title_id VARCHAR(10),
birth_date DATE,
first_name VARCHAR (20),
last_name VARCHAR (20),
sex VARCHAR (5),
hire_date DATE,
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)	
);


--Drop Table if one exists.
DROP TABLE salaries;

--Create Table salaries.
CREATE TABLE salaries (
emp_no INT,
salary INT,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)	
);


--Drop Table if one exists.
DROP TABLE dept_emp;

--Create Table dept_emp.
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(10),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);


--Drop Table if one excists.
DROP TABLE dept_manager;

--Create Table dept_manager
CREATE TABLE dept_manager (
	dept_no VARCHAR (10),
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)	
);