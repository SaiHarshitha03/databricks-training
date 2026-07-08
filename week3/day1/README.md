# 📘 Week 3 – Day 1: ROW_NUMBER() Window Function in MySQL

This project demonstrates the use of the **`ROW_NUMBER()`** window function in MySQL using practical employee management examples. It covers ranking, sorting, and department-wise numbering to help understand analytical SQL queries.

---

## 📖 Overview

`ROW_NUMBER()` is a window function that assigns a **unique sequential number** to each row in a result set based on the specified ordering.

### Syntax

```sql
ROW_NUMBER() OVER (
    ORDER BY column_name
);
```

To generate row numbers within groups:

```sql
ROW_NUMBER() OVER (
    PARTITION BY column_name
    ORDER BY column_name
);
```

---

## 📚 Topics Covered

### 1️⃣ Rank Employees by Salary

Assign row numbers based on highest salary.

```sql
SELECT emp_name,
       salary,
       ROW_NUMBER() OVER (
           ORDER BY salary DESC
       ) AS salary_rank
FROM employees;
```

---

### 2️⃣ Department-wise Salary Ranking

Assign row numbers separately for each department.

```sql
SELECT emp_name,
       department,
       salary,
       ROW_NUMBER() OVER (
           PARTITION BY department
           ORDER BY salary DESC
       ) AS dept_rank
FROM employees;
```

---

### 3️⃣ Rank Employees by Joining Date

Assign row numbers based on the latest joining date.

```sql
SELECT emp_name,
       joining_date,
       ROW_NUMBER() OVER (
           ORDER BY joining_date DESC
       ) AS join_rank
FROM employees;
```

---

### 4️⃣ Department-wise Joining Order

Assign row numbers within each department based on the earliest joining date.

```sql
SELECT emp_name,
       department,
       joining_date,
       ROW_NUMBER() OVER (
           PARTITION BY department
           ORDER BY joining_date ASC
       ) AS dept_join_rank
FROM employees;
```

---

## 🛠 SQL Concepts Used

- ROW_NUMBER()
- OVER()
- PARTITION BY
- ORDER BY
- Window Functions

---

## 💼 Real-World Applications

- Employee salary ranking
- Department-wise reporting
- HR analytics
- Payroll analysis
- Employee performance reports
- Generating serial numbers
- Joining-date analysis

---

## 💻 Requirements

- MySQL 8.0+
- MariaDB (with Window Function support)

---

## 🎯 Suitable For

- SQL Beginners
- DBMS Lab Practice
- Placement Preparation
- Interview Preparation
- Window Function Practice
- Data Analytics Learners

---

## 📖 Learning Outcomes

After completing this project, you will be able to:

- Understand the `ROW_NUMBER()` window function.
- Generate sequential row numbers.
- Use `PARTITION BY` for group-wise ranking.
- Apply `ORDER BY` within window functions.
- Write analytical SQL queries.
- Perform employee ranking and reporting.

---

## 🚀 Project Objective

The objective of this project is to provide hands-on practice with the **`ROW_NUMBER()`** window function using real-world employee datasets. It helps learners understand ranking, ordering, and department-wise analysis commonly used in business reporting, HR analytics, and data analysis.

---

## 👨‍💻 Author

**Adapa Sai Harshitha**

B.Tech – Artificial Intelligence & Data Science  
Vishnu Institute of Technology
