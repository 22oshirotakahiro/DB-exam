--1
CREATE DATABASE axiz_exam_dev;

--2
CREATE TABLE customer (
    customer_id INT PRIMARY KEY
    , customer_name VARCHAR(50)
)

--3
CREATE TABLE sales (
    sales_id INT PRIMARY KEY
    , order_date DATE
    , customer_id INT NOT NULL REFERENCES customer(customer_id)
    , amount DECIMAL
);

--4
INSERT INTO customer (customer_id, customer_name)
VALUES (1, '田中')
, (2, '鈴木')
, (3, '田中')
, (4, '田島');

--5
INSERT INTO sales (sales_id, order_date, customer_id, amount)
VALUES (1, '2018/11/01', 1, 3000)
, (2, '2018/10/01', 3, 5000)
, (3, '2018/10/01', 4, 6000)
, (4, '2018/11/02', 2, 2000)
, (5, '2018/11/15', 2, NULL);

--6
SELECT * 
FROM sales
WHERE amount < 5000;

--7
SELECT *
FROM sales
WHERE amount >= 5000;

--8
SELECT *, amount * 1.1
FROM sales;

--9
SELECT *
FROM sales
WHERE amount IS NOT NULL;

--10
SELECT *
FROM customer
WHERE customer_name != '田中';

--11
UPDATE sales
SET order_date = '2018/11/05', customer_id = 4
WHERE sales_id = 4;

--12
DELETE FROM sales
WHERE amount IS NULL;