/*C:\xampp\htdocs\11-mysql\employees*/
/*C:\xampp\htdocs\11-mysql\employees>mysql -u root < employees.sql*/

-- Lister tous les salariés né avant 2000 :
SELECT first_name, last_name FROM birth_date >='2000-01-01';

-- Lister tous les departements :
SELECT dept_name FROM departements;

-- Lister tous les salariés avec un salaire entre 40000-55000 :
SELECT first_name, last_name FROM salaries WHERE salary BETWEEN 40000 AND 55000;

-- Lister tous les salariée  avec un nom commençanty par la lettre "a" :
SELECT first_name, last_name FROM employees WHERE first_name LIKE 'a%';

-- lister tous les salariés :
SELECT first_name, last_name, gender FROM employees WHERE gender LIKE 'F';
SELECT first_name, last_name, gender FROM employees WHERE gender='F';

-- Lister tous les salariés antrer dans l'entreprise avant le 01 janvier 1980 :
SELECT first_name FROM employees WHERE hire_date <='1980-01-01';
SELECT first_name, last_name, gender FROM employees WHERE gender='F' AND hire_date <='1980-01-01'


-- Supprimer tous les salariés en CDI :
DELETE salaries FROM salaries WHERE to_date='9999-01-01';
DELETE dept_emp FROM dept_emp WHERE to_date='9999-01-01';
DELETE dept_manager FROM dept_manager WHERE to_date='9999-01-01';
DELETE titles FROM titles WHERE to_date='9999-01-01';

DELETE FROM employees AS e INNER JOIN dept_emp AS d ON e.emp_no = d.emp_no INNER JOIN salaries AS s ON d.emp_no = s.emp_no INNER JOIN titles AS t ON s.emp_no = t.emp_no

-- Afficher salariés pour chaque département(pas de doublon)
SELECT DISTINCT first_name, last_name, dept_name FROM employees AS e, departments AS d, dept_emp AS p WHERE e.emp_no = p.emp_no AND d.dept_no = p.dept_no;


-- Afficher manager pour chaque département (pas de doublon)
SELECT DISTINCT first_name, last_name FROM employees AS e, departments AS d, dept_manager AS m WHERE e.emp_no = m.emp_no AND d.dept_no = m.dept_no;

-- Afficher les titres()
SELECT DISTINCT title FROM titles;





-- Correction
SELECT * FROM employees WHERE birth_date <= '2000-01-01';
SELECT dept_name FROM department;
SELECT first_name, last_name FROM employees INNER JOIN salaries ON employees.emp_no = salaries.emp_no AND (salaries.salary BETWEEN 40000 AND 50000);
SELECT last_name FROM employees LIKE 'a%';
SELECT * FROM employees;
SELECT last_name, first_name, hire_date FROM employees WHERE hire_date <= '1980-01-01';
SELECT last_name, first_name FROM employees WHERE hire_date = '1980-01-01' AND gender = 'F';
DELETE FROM salaries WHERE to_date = '9999-01-01';