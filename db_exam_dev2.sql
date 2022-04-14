--1
CREATE TABLE sales_old (
    sales_id INT PRIMARY KEY,
    order_date DATE,
    customer_id INT NOT NULL REFERENCES customer(customer_id),
    amount DECIMAL
);

--2
INSERT INTO sales_old 
(sales_id, order_date, customer_id, amount)
VALUES 
(6, '2018/09/02', 2, 20000),
(7, '2018/09/02', 1, 5000),
(8, '2018/09/02', 3, 6000),
(9, '2018/09/02', 1, 3000);

--3
INSERT INTO sales
(sales_id, order_date, customer_id, amount)
SELECT * FROM sales_old;

--4
DROP TABLE sales_old;

--5
SELECT sales_id, order_date
, CASE
    WHEN order_date <= '2018/10/01' THEN '○'
    ELSE ''
END is_old
FROM sales
ORDER BY order_date ASC;

--6
SELECT customer_id || ':' || customer_name AS customer_id_name
FROM customer;

--7
SELECT *
FROM sales
WHERE customer_id = 1
ORDER BY order_date LIMIT 2;

--8
SELECT order_date, SUM(amount)
FROM sales
WHERE order_date = (SELECT MIN(order_date)
                    FROM sales)
GROUP BY order_date;

--9
SELECT s.customer_id, c.customer_name, AVG(amount) AS avg_amount
FROM sales AS s
INNER JOIN customer AS c
ON s.customer_id = c.customer_id
GROUP BY s.customer_id, c.customer_name
ORDER BY s.customer_id ASC;

--10
SELECT *
FROM sales
WHERE order_date BETWEEN '2018/09/01' AND '2018/09/30'
ORDER BY amount DESC LIMIT 1;