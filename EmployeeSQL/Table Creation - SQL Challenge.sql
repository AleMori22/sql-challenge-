--Table Creation

CREATE TABLE title (
	title_id VARCHAR (5) PRIMARY KEY,
	title VARCHAR (25)
);

CREATE TABLE departments (
	dept_no VARCHAR(4) PRIMARY KEY,
	dept_name VARCHAR(20)
);

CREATE TABLE employees (
	emp_no VARCHAR(6),
	emp_title_id VARCHAR (5),
	birth_date VARCHAR (10),
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(1),
	hire_date VARCHAR (10),
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES title(title_id)
);

CREATE TABLE salaries(
	emp_no VARCHAR(6),
	salary INT,
	PRIMARY KEY (emp_no,salary),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(5),
	emp_no VARCHAR(6),
	PRIMARY KEY (dept_no,emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_emp (
	emp_no VARCHAR(6),
	dept_no VARCHAR(4),
	PRIMARY KEY (emp_no,dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

--Insert the CSV files into the tables



-- Tools 
SELECT *
FROM 

DROP TABLE employees,title,departments,salaries,dept_manager,dept_emp
