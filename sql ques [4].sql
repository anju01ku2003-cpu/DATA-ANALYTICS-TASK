USE college;

CREATE TABLE customer5 (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);

INSERT INTO customer5 VALUES
(1, 'Rahul'),
(2, 'Amit'),
(3, 'Priya'),
(4, 'Neha'),
(5, 'Rohit');

CREATE TABLE purchase5 (
    purchase_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(50)
);

INSERT INTO purchase5 VALUES
(101, 1, 'Laptop'),
(102, 2, 'Mobile'),
(103, 4, 'Headphone');

SELECT c.customer_id, c.customer_name
FROM customer5 c
LEFT JOIN purchase5 p
ON c.customer_id = p.customer_id
WHERE p.purchase_id IS NULL;