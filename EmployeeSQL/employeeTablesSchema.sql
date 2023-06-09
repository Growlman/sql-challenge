DROP TABLE departments

CREATE TABLE departments (
	dept_no VARCHAR(55),
	dept_name VARCHAR(55) NOT NULL,
	PRIMARY KEY (dept_no)
);

SELECT * FROM departments


DROP TABLE employees

CREATE TABLE employees (
		emp_no INT NOT NULL PRIMARY KEY,
		emp_title_id VARCHAR (55) NOT NULL,
		birth_date DATE NOT NULL,
		first_name VARCHAR(55) NOT NULL,
		last_name VARCHAR(55) NOT NULL,
		sex VARCHAR(11) NOT NULL,
		hire_date DATE NOT NULL,
		FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT * FROM employees



DROP TABLE dept_emp

CREATE TABLE dept_emp (
		emp_no INT NOT NULL,
		dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp



DROP TABLE dept_managers

CREATE TABLE dept_managers (
		dept_no VARCHAR (55),
		emp_no INT,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_managers



DROP TABLE salaries

CREATE TABLE salaries (
		emp_no INT NOT NULL,
		salary INT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries




DROP TABLE titles

CREATE TABLE titles (
		title_id VARCHAR(55) NOT NULL,
		title VARCHAR(55) NOT NULL,
		PRIMARY KEY (title_id)
);

SELECT * FROM titles