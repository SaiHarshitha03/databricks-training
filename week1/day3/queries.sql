-- Question 41
SELECT name
FROM Employee
WHERE salary = (SELECT MAX(salary) FROM Employee);

-- Question 42
SELECT name
FROM Employee
WHERE salary > (SELECT AVG(salary) FROM Employee);

-- Question 43
SELECT name
FROM Employee
WHERE department_id IN (
SELECT department_id
FROM Department
WHERE name = 'IT'
);

-- Question 44
SELECT name
FROM Employee
WHERE EXISTS (
SELECT *
FROM Project
WHERE Project.department_id = Employee.department_id
);

-- Question 45
SELECT name
FROM Employee
WHERE salary = (
SELECT MIN(salary)
FROM Employee
);

-- Question 46
SELECT department_id, AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id;

-- Question 47
SELECT name
FROM Employee
WHERE age > (
SELECT AVG(age)
FROM Employee
);

-- Question 48
SELECT e.name, d.name AS department_name
FROM Employee e
JOIN Department d
ON e.department_id = d.department_id
WHERE e.salary > 50000;

-- Question 49
SELECT d.name, COUNT(e.emp_id) AS employee_count
FROM Department d
LEFT JOIN Employee e
ON d.department_id = e.department_id
GROUP BY d.name;

-- Question 50
SELECT p.name AS project_name, d.name AS department_name
FROM Project p
JOIN Department d
ON p.department_id = d.department_id;

-- Question 51
SELECT name
FROM Employee
WHERE salary < (
SELECT AVG(salary)
FROM Employee
);

-- Question 52
SELECT name, salary
FROM Employee
WHERE salary = (
SELECT MAX(salary)
FROM Employee
WHERE department_id = Employee.department_id
);

-- Question 53
SELECT d.name AS department_name, SUM(e.salary) AS total_salary
FROM Department d
JOIN Employee e
ON d.department_id = e.department_id
GROUP BY d.name;

-- Question 54
SELECT name
FROM Employee
WHERE department_id = (
SELECT department_id
FROM Department
WHERE name = 'HR'
);

-- Question 55
SELECT name
FROM Employee
WHERE hire_date = (
SELECT MIN(hire_date)
FROM Employee
);

-- Question 56
SELECT COUNT(*) AS total_employees
FROM Employee;

-- Question 57
SELECT department_id, COUNT(*) AS employee_count
FROM Employee
GROUP BY department_id;

-- Question 58
SELECT name
FROM Employee
WHERE age = (
SELECT MAX(age)
FROM Employee
);

-- Question 59
SELECT name, salary
FROM Employee
ORDER BY salary DESC;

-- Question 60
SELECT name, hire_date
FROM Employee
ORDER BY hire_date ASC;

-- Question 61
SELECT d.name AS department_name, AVG(e.salary) AS average_salary
FROM Department d
JOIN Employee e
ON d.department_id = e.department_id
GROUP BY d.name;

-- Question 62
SELECT p.name AS project_name, d.name AS department_name
FROM Project p
JOIN Department d
ON p.department_id = d.department_id;

-- Question 63
SELECT name
FROM Employee
WHERE department_id IN (
SELECT department_id
FROM Project
);

-- Question 64
SELECT name
FROM Employee
WHERE salary > 55000;

-- Question 65
SELECT department_id, MAX(salary) AS highest_salary
FROM Employee
GROUP BY department_id;

