-- Create Tables

create table departments (
	dept_no VARCHAR(10) primary key,
	dept_name VARCHAR(60) not null 
);
select * from departments d2;


create table dept_emp (
	emp_no INT references employees(emp_no),
	dept_no VARCHAR(10) references departments(dept_no)
);
select * from dept_emp de;


create table dept_manager (
	dept_no VARCHAR(10) references departments(dept_no),
	emp_no INT references employees(emp_no)
);
select * from dept_manager d;


create table employees (
	emp_no INT primary key,
	emp_title_id VARCHAR(10) references titles(title_id),
	birth_date DATE not null,
	first_name VARCHAR(20) not null,
	last_name VARCHAR(20) not null,
	sex VARCHAR(2) not null,
	hire_date DATE not null
);
select * from employees e;


create table salaries (
	emp_no INT references employees(emp_no),
	salary INT not null
);
select * from salaries s;


create table titles (
	title_id VARCHAR(10) primary key,
	title VARCHAR(30) not null
);
select * from titles t;

