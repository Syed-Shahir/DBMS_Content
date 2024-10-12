CREATE DATABASE lab_10_db;
USE lab_10_db;
CREATE TABLE customer (
  cus_id INT PRIMARY KEY,
  cus_name VARCHAR(255) NOT NULL,
  cus_city VARCHAR(255) NOT NULL,
  grad INT NOT NULL,
  opening_amt DECIMAL(10,2) NOT NULL,
  receive_amt DECIMAL(10,2) NOT NULL,
  payment_amt DECIMAL(10,2) NOT NULL,
  phone_no VARCHAR(20)
);

INSERT INTO customer (cus_id, cus_name, cus_city, grad, opening_amt, receive_amt, payment_amt, phone_no)
VALUES
(13, 'e Holmes', 'London', 2, 6000.00, 5000.00, 7000.00, '2'),
(12, 'Micheal', 'New York', 2, 5000.00, 5000.00, 2000.00, NULL),
(11, 'Albert', 'New york', 3, 6000.00, 7000.00, 6000.00, NULL),
(10, 'Ravindr', 'Bangalo', 3, 4000.00, 7000.00, 4000.00, NULL);

-- Tasks
-- task1
SELECT cus_id, cus_name, (opening_amt + receive_amt) AS total_amount FROM customer
WHERE opening_amt + receive_amt > 10000;

-- task2
SELECT cus_id, (opening_amt - payment_amt) AS difference_amount FROM customer;

-- task3
SELECT cus_id, cus_name, cus_city, payment_amt * 2 AS doubled_payment FROM customer;

-- task4
SELECT * FROM customer
WHERE payment_amt = 2000.00;

-- task5
SELECT * FROM customer WHERE payment_amt > 2000.00;
SELECT * FROM customer WHERE payment_amt < 2000.00;
SELECT * FROM customer WHERE payment_amt >= 2000.00;
SELECT * FROM customer WHERE payment_amt <= 2000.00;
SELECT * FROM customer WHERE payment_amt != 2000.00;

-- task6
SELECT cus_id, cus_name, cus_city, grad FROM customer
WHERE cus_city = 'New York' AND grad = 2;

-- task7
SELECT * FROM customer WHERE grad <= 2;

-- task8
SELECT * FROM customer
WHERE receive_amt BETWEEN 5000.00 AND 10000.00;

-- task9
SELECT cus_id, cus_name, cus_city FROM customer
WHERE cus_name LIKE 'H%';

-- task10
SELECT * FROM customer
WHERE cus_city = 'New York' OR cus_city = 'London';

-- task11
CREATE TABLE customer1 (
  cus_id INT PRIMARY KEY,
  cus_name VARCHAR(255) NOT NULL,
  cus_city VARCHAR(255) NOT NULL,
  grad INT NOT NULL,
  opening_amt DECIMAL(10,2) NOT NULL,
  receive_amt DECIMAL(10,2) NOT NULL,
  payment_amt DECIMAL(10,2) NOT NULL,
  phone_no VARCHAR(20)
);

INSERT INTO customer1 (cus_id, cus_name, cus_city, grad, opening_amt, receive_amt, payment_amt, phone_no)
VALUES
(14, 'Sophia', 'Paris', 2, 3000.00, 2000.00, 1500.00, NULL),
(15, 'Liam', 'London', 3, 7000.00, 8000.00, 5000.00, '1234567890');

SELECT cus_name AS customer_name FROM customer
UNION
SELECT cus_name AS customer_name FROM customer1;

-- Postlab tasks
-- creating tables
CREATE TABLE Products (
  ProductID INT PRIMARY KEY,
  ProductName VARCHAR(255) NOT NULL,
  SupplierID INT NOT NULL,
  CategoryID INT NOT NULL,
  Price DECIMAL(10,2) NOT NULL
);

INSERT INTO Products (ProductID, ProductName, SupplierID, CategoryID, Price)
VALUES
(1, 'Chais', 1, 1, 18.00),
(2, 'Chang', 1, 1, 19.00),
(3, 'Aniseed Syrup', 1, 2, 10.00),
(4, 'Chef Anton\'s Cajun Seasoning', 2, 2, 22.00);

CREATE TABLE OrderDetails (
  OrderDetailsID INT PRIMARY KEY,
  OrderID INT NOT NULL,
  ProductID INT NOT NULL,
  Quantity INT NOT NULL
);

INSERT INTO OrderDetails (OrderDetailsID, OrderID, ProductID, Quantity)
VALUES
(1, 10248, 1, 12),
(2, 10248, 2, 10),
(3, 10248, 3, 15),
(4, 10249, 1, 8);

-- task1
SELECT ProductName FROM Products
WHERE ProductID = ALL (
    SELECT ProductID
    FROM OrderDetails
    WHERE Quantity = 12
);
 -- task2
 SELECT ProductName FROM Products
WHERE ProductID = ANY (
    SELECT ProductID
    FROM OrderDetails
    WHERE Quantity > 99
);

-- task3
SELECT OrderID, Quantity,
    CASE
        WHEN Quantity > 10 THEN 'The amount is greater than 10'
        WHEN Quantity = 10 THEN 'The amount is 10'
        ELSE 'The amount is under 10'
    END AS Profit
FROM OrderDetails;



