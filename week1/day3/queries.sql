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

