USE college;

CREATE TABLE employee7 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    manager_id INT
);

INSERT INTO employee7 VALUES
(101, 'Rahul', 50000, NULL),
(102, 'Amit', 40000, 101),
(103, 'Priya', 50000, 101),
(104, 'Neha', 45000, 101),
(105, 'Rohit', 40000, 101);

SELECT e.emp_name, e.salary, m.emp_name AS manager_name
FROM employee7 e
JOIN employee7 m
ON e.manager_id = m.emp_id
WHERE e.salary = m.salary;