--Drop tabl if one exists
Drop Table departments;

CREATE TABLE departments (
dept_no VARCHAR (10) PRIMARY KEY,
dept_name VARCHAR(30)
);

select *
from departments