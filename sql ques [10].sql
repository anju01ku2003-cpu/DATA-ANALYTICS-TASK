USE college;

CREATE TABLE employee10 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

INSERT INTO employee10 VALUES
(101, 'Rahul', 50000, 'IT'),
(102, 'Amit', 40000, 'HR'),
(103, 'Priya', 60000, NULL),
(104, 'Neha', 45000, 'Marketing'),
(105, 'Rohit', 55000, NULL);

SELECT emp_id, emp_name, salary
FROM employee10
WHERE department IS NULL;