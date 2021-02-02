--Drop Table if one exists.
DROP TABLE employees;

--Create Table employees.
CREATE TABLE employees(
emp_no INT PRIMARY KEY,
emp_title_id VARCHAR(10),
birth_date DATE,
first_name VARCHAR (20),
last_name VARCHAR (20),
sex VARCHAR (5),
hire_date DATE
);



select *
from employees;
