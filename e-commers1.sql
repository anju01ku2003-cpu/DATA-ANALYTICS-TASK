CREATE DATABASE ecommerce;
USE ecommerce;

-- 1. Customers
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(50),
    signup_date DATE
);

-- 2. Products
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock INT
);

-- 3. Orders
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    status VARCHAR(30),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- 4. Order Details
CREATE TABLE Order_Details (
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- 5. Payments
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_date DATE,
    payment_method VARCHAR(30),
    payment_status VARCHAR(30),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

INSERT INTO Customers VALUES
(1, 'Rahul Sharma', 'rahul@gmail.com', 'Delhi', '2026-01-10'),
(2, 'Priya Singh', 'priya@gmail.com', 'Lucknow', '2026-02-15'),
(3, 'Amit Kumar', 'amit@gmail.com', 'Agra', '2026-03-05'),
(4, 'Neha Verma', 'neha@gmail.com', 'Noida', '2026-03-20'),
(5, 'Rohit Gupta', 'rohit@gmail.com', 'Kanpur', '2026-04-12');

INSERT INTO Products VALUES
(101, 'Laptop', 'Electronics', 55000, 20),
(102, 'Mobile Phone', 'Electronics', 25000, 35),
(103, 'Headphones', 'Electronics', 2000, 50),
(104, 'Shoes', 'Fashion', 3000, 40),
(105, 'T-Shirt', 'Fashion', 1200, 60),
(106, 'Smart Watch', 'Electronics', 5000, 25);

INSERT INTO Orders VALUES
(1001, 1, '2026-04-01', 57000, 'Delivered'),
(1002, 2, '2026-04-03', 25000, 'Delivered'),
(1003, 3, '2026-04-05', 5000, 'Pending'),
(1004, 1, '2026-04-10', 3000, 'Shipped'),
(1005, 4, '2026-04-15', 6200, 'Delivered');

INSERT INTO Order_Details VALUES
(1, 1001, 101, 1, 55000),
(2, 1001, 103, 1, 2000),
(3, 1002, 102, 1, 25000),
(4, 1003, 106, 1, 5000),
(5, 1004, 104, 1, 3000),
(6, 1005, 106, 1, 5000),
(7, 1005, 105, 1, 1200);

INSERT INTO Payments VALUES
(501, 1001, '2026-04-01', 'Credit Card', 'Paid'),
(502, 1002, '2026-04-03', 'UPI', 'Paid'),
(503, 1003, '2026-04-05', 'Cash', 'Pending'),
(504, 1004, '2026-04-10', 'UPI', 'Paid'),
(505, 1005, '2026-04-15', 'Debit Card', 'Paid');