# WEEK 3 – DAY 1  
# ROW_NUMBER() FUNCTIONS IN MYSQL

This project demonstrates the use of the `ROW_NUMBER()` window function in MySQL using employee management examples. The queries help assign unique sequential numbers to rows based on different sorting and grouping conditions.

---

# What is ROW_NUMBER()?

`ROW_NUMBER()` is a window function that assigns a unique sequential number to each row in a result set.

## Syntax

```sql
ROW_NUMBER() OVER (
    ORDER BY column_name
)
```

The numbering starts from 1 and increases by 1 for each row.

---

# Topics Covered

## 1. Row Number Based on Highest Salary

Assign unique row numbers to employees based on salary in descending order.

```sql
SELECT emp_name,
       salary,
       ROW_NUMBER() OVER (
           ORDER BY salary DESC
       ) AS salary_rank
FROM employees;
```

---

## 2. Department-wise Salary Row Number

Assign row numbers separately within each department based on highest salary.

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

## 3. Latest Joining Date Row Number

Assign row numbers based on the most recent joining date.

```sql
SELECT emp_name,
       joining_date,
       ROW_NUMBER() OVER (
           ORDER BY joining_date DESC
       ) AS join_rank
FROM employees;
```

---

## 4. Department-wise Earliest Joining Date

Assign row numbers within departments based on earliest joining dates.

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

# SQL Concepts Used

```sql
ROW_NUMBER()
OVER()
PARTITION BY
ORDER BY
```

---

# Real-Time Use Cases

- Employee ranking
- Payroll analysis
- Department-wise employee ordering
- HR reporting
- Generating serial numbers in reports
- Employee joining-date analysis

---

# Recommended Database

- MySQL 8.0+
- MariaDB

---

# Suitable For

- SQL Beginners
- Window Function Practice
- Placement Preparation
- DBMS Lab Practice
- Interview Preparation

---

# Learning Outcomes

By completing this project, you will learn:

- How to use `ROW_NUMBER()`
- Working with window functions
- Sorting rows using `ORDER BY`
- Group-wise numbering using `PARTITION BY`
- Employee ranking and reporting techniques
- SQL analytical query writing

---

# Project Goal

The goal of this project is to provide hands-on practice with the `ROW_NUMBER()` window function using real-world employee datasets. It helps learners understand ranking, ordering, and department-wise analysis commonly used in business reporting and analytics.
