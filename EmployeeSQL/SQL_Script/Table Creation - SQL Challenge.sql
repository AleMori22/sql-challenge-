--Table Creation

CREATE TABLE title (
	title_id VARCHAR (5) NOT NULL, 
	title VARCHAR (25) NOT NULL,
	PRIMARY KEY (title_id)
);

CREATE TABLE departments (
	dept_no VARCHAR(4) NOT NULL,
	dept_name VARCHAR(20) NOT NULL,
	PRIMARY KEY (dept_no)
);

CREATE TABLE employees (
	emp_no VARCHAR(6) NOT NULL,
	emp_title_id VARCHAR (5) NOT NULL,
	birth_date VARCHAR (10),
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(1),
	hire_date VARCHAR (10),
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES title(title_id)
);

CREATE TABLE salaries(
	emp_no VARCHAR(6) NOT NULL,
	salary INT,
	PRIMARY KEY (emp_no,salary),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(5) NOT NULL,
	emp_no VARCHAR(6) NOT NULL,
	PRIMARY KEY (dept_no,emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_emp (
	emp_no VARCHAR(6) NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	PRIMARY KEY (emp_no,dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

--Insert the CSV files into the tables
