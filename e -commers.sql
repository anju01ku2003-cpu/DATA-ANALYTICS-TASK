SELECT * FROM Customers;
SELECT * FROM Products;
SELECT *
FROM Products
WHERE price > 5000;

SELECT SUM(total_amount) AS total_sales
FROM Orders
WHERE status = 'Delivered';

SELECT 
    c.customer_name,
    COUNT(o.order_id) AS total_orders
FROM Customers c
LEFT JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_name;

SELECT
    c.customer_name,
    o.order_id,
    o.total_amount
FROM Customers c
LEFT JOIN Orders o
    ON c.customer_id = o.customer_id;
    
    SELECT
    c.customer_name,
    o.order_id,
    o.total_amount
FROM Customers c
RIGHT JOIN Orders o
    ON c.customer_id = o.customer_id;