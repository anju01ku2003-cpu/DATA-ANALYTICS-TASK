USE college;

CREATE TABLE purchase8 (
    purchase_id INT PRIMARY KEY,
    customer_id INT,
    purchase_date DATE
);

INSERT INTO purchase8 VALUES
(101, 1, '2026-01-10'),
(102, 1, '2026-03-15'),
(103, 1, '2026-06-20'),
(104, 2, '2026-02-05'),
(105, 2, '2026-05-18'),
(106, 3, '2026-01-25'),
(107, 3, '2026-04-10');

SELECT customer_id,
       MIN(purchase_date) AS first_purchase,
       MAX(purchase_date) AS last_purchase
FROM purchase8
GROUP BY customer_id;