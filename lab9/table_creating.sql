create database lab_9_db;
use  lab_9_db;
-- Table product details
CREATE TABLE product_details(
pro_code int not null primary key,
pro_name char(20) not null,
pro_price decimal,
transaction_no int,
pro_date date);
INSERT INTO product_details (pro_code, pro_name, pro_price, transaction_no, pro_date)
VALUES
  ('001', 'T-Shirt', 599, 33445555, '2014-11-07'),
  ('002', 'Jeans', 1999, 222222, '2014-11-07'),
  ('003', 'Shirt', 999, 5555603, '2014-12-07'),
  ('004', 'Trouser', 1799, 17777303, '2014-12-07'),
  ('005', 'Sweatshirt', 799, 22228801, '2014-07-13');
-- Table student info
CREATE TABLE student_info (
  St_id INT PRIMARY KEY,
  St_Name VARCHAR(50) NOT NULL,
  DOB DATE,
  Addr VARCHAR(50),
  Cont_no CHAR(15)
);

INSERT INTO student_info (St_id, St_Name, DOB, Addr, Cont_no)
VALUES
('11199', 'Rahul', '1994-09-22', '22/9/1994   DOB  Addr      11c siwan', '8005555245'),
('11112', 'Jignesh', '1995-08-02', 'Sector 26 chd', '8905555665'),
('11122', 'Sushil', '1994-01-07', 'Jd colony amb', '9005555555'),
('11155', 'Vikas', '1992-05-11', 'Yamuna nagar', '8090000245'),
('11116', 'Rohan', '1992-07-18', 'New city chd', '7775585245');

-- Table Enroll information
CREATE TABLE enroll_info (
  enroll_no INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  age INT NOT NULL,
  contact VARCHAR(20) NOT NULL,
  city VARCHAR(20) NOT NULL
);

-- Insert data into the table
INSERT INTO enroll_info (enroll_no, name, age, contact, city)
VALUES (12, 'Vivek', 21, '800444245', 'Chd'),
(13, 'Bhusan', 20, '894444665', 'Amb'),
(23, 'Tarun', 30, '900675555', 'Chd'),
(45, 'Prasoon', 25, '809987245', 'Chd'),
(48, 'Somya', 25, '799876245', 'Kota');

-- Salary mar
-- Create table
CREATE TABLE salary_mar (
  emp_id INT PRIMARY KEY,
  emp_name VARCHAR(50) NOT NULL,
  salary DECIMAL(10,2) NOT NULL,
  sal_da DECIMAL(10,2) NOT NULL,
  sal_bonus DECIMAL(10,2) NOT NULL
);

-- Insert data into the table
INSERT INTO salary_mar (emp_id, emp_name, salary, sal_da, sal_bonus)
VALUES (1223, 'Anuj', 25000.00, 800.00, 2000.00),
(6332, 'Richa', 55000.00, 1500.00, 2500.00),
(6442, 'Rohit', 65000.00, 1800.00, 2100.00),
(3557, 'Sunny', 40000.00, 1200.00, 5000.00),
(8668, 'Viren', 35000.00, 1000.00, 1000.00);

-- Customer info
CREATE TABLE customer_info (
  C_id INT PRIMARY KEY AUTO_INCREMENT,
  C_name VARCHAR(50) NOT NULL,
  C_city VARCHAR(50) NOT NULL,
  Sales_id VARCHAR(10) NOT NULL,
  Phone VARCHAR(20)
);

INSERT INTO customer_info (C_name, C_city, Sales_id, Phone)
VALUES ('Anil', 'Chd', '001', '8884455128'),
       ('A.Sharma', 'Ambala', '002', '9997775523'),
       ('SunilVerma', 'Delhi', '003', '8884444666'),
       ('Ravi', 'Delhi', '004', '9026345234'),
       ('John', 'Chd', '005', '9022266145');
