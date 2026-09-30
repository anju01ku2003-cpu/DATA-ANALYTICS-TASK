USE college;

CREATE TABLE employee4 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

INSERT INTO employee4 VALUES
(101, 'Rahul', 50000, 'IT'),
(102, 'Amit', 40000, 'HR'),
(103, 'Priya', 60000, 'Finance'),
(104, 'Neha', 45000, 'Marketing'),
(105, 'Rohit', 55000, 'IT');

SELECT emp_name, salary,
RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employee4;
