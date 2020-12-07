Create table departments(
	dept_no varchar(10),
	dept_name varchar (64) not null,
	primary key (dept_no)
);

select * from departments

--employee table
Create table employees(
emp_no varchar not null,
employee_title_id varchar (20) not null,
birth_date date not null,
first_name varchar (20) not null,
last_name varchar (20) not null,
sex varchar (10) not null,
hire_date date not null,
primary key (emp_no)
);

select * from employees

--dept_emp table

Create table dept_emb(
	emp_no int not null,
	dept_no varchar (64) not null,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

select * from dept_emb

--dept_managers 

create table dept_managers (
dept_no varchar (10),
emp_no int,
 FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
 FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from dept_managers

--salary table

create table salaries(
emp_no int,
salary int,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from salaries

--titles table

create table titles (
title_id varchar(20) not null,
title varchar(30) not null
);

select * from titles
