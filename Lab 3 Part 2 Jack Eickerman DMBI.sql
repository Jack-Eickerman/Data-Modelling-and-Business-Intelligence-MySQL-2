USE employees;

#6 - Return employee number, first name, last name and hire date of all employees with the first name Vincent

SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE first_name = "Vincent";

#7 - Return all columns for all employees whose first name starts with “Mar..” i.e. Mark, Margaret, Markus etc

SELECT emp_no, birth_date, first_name, last_name, gender, hire_date
FROM employees
WHERE first_name LIKE "Mar%";

#8 - Number of employees with the last name Boyle

SELECT last_name, COUNT(Last_name)
FROM employees
GROUP BY last_name
HAVING last_name = 'Boyle';

#9 - Get the top 10 last names within the company

SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC
LIMIT 10;

#10 - Find the jobtitle, first name, last name of the employees in the employees table

SELECT title, first_name, last_name
FROM employees
JOIN titles ON employees.emp_no = titles.emp_no;

#11 - Return the first name, last name, hire date of all employees hired in the period 1990 to 1998 inclusive

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1998-12-31';

#12 - Find names of employees (still employed by the company) who earn more than the average company salary

SELECT first_name, last_name, salary
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE to_date = '9999-01-01' AND salary > 
	(SELECT AVG(salary) FROM salaries);

#13 - What department does the employee Ebru Alpin work in?

SELECT first_name, last_name, dept_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE first_name = 'Ebru' AND last_name = 'Alpin';

#14 - How many male and female employees work in the company?

SELECT gender, COUNT(gender)
FROM employees
GROUP BY gender;

#15 - Find the first name, last name, and job title of the employee with employee number ‘11303’

SELECT employees.emp_no, first_name, last_name, title
FROM employees
JOIN titles ON employees.emp_no = titles.emp_no
WHERE employees.emp_no = '11303';