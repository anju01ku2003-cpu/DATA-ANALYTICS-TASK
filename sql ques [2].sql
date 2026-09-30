USE college;

CREATE TABLE employee3 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

INSERT INTO employee3 VALUES
(101, 'Rahul', 50000, 'IT'),
(102, 'Amit', 40000, 'HR'),
(103, 'Priya', 60000, 'Finance'),
(104, 'Neha', 45000, 'Marketing'),
(105, 'Rohit', 55000, 'IT');

SELECT department, SUM(salary) AS total_salary
FROM employee3
GROUP BY department;