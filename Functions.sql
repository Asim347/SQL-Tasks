DROP TABLE IF EXISTS products;

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price NUMERIC(10, 2),
    quantity INT,
    added_date DATE,
    discount_rate NUMERIC(5, 2)
);

INSERT INTO products (product_name, category, price, quantity, added_date, discount_rate) 
VALUES 
('Gaming Mouse', 'Accessories', 2500.00, 40, '2024-03-12', 10.00),
('Monitor 24 inch', 'Electronics', 18000.00, 15, '2024-01-20', 8.00),
('Keyboard', 'Accessories', 3500.50, 30, '2024-02-15', 12.00),
('Study Desk', 'Furniture', 12000.00, 8, '2023-11-25', 5.00),
('Power Bank', 'Accessories', 4000.00, 22, '2024-03-10', 20.00),
('Smart Watch', 'Electronics', 12500.00, 18, '2024-02-28', 15.00),
('LED Desk Lamp', 'Accessories', 1800.00, 25, '2024-03-15', 5.00),
('Ergonomic Mouse Pad', 'Accessories', 850.00, 100, '2024-02-05', 0.00),
('Bookshelf', 'Furniture', 8500.00, 5, '2023-12-15', 10.00),
('External Hard Drive', 'Electronics', 9500.00, 12, '2024-01-10', 12.50);


-- total quantity
select sum(quantity) AS Total_Quantity
FROM products;

select sum(quantity) AS quantity_of_Electr
FROM products
WHERE category = 'Acessories';

select count(*) AS Total_count
FROM products;

select count(*) AS Total_count
FROM products
WHERE category = 'Accessories';

SELECT AVG(price) AS avg_price
FROM products
WHERE category = 'Electronics' AND price >= 10000;

select * from products;

--NOW function gets current date and time

select NOW() as ct;

--CURRENT DATE today date

select CURRENT_DATE AS cd;

-- EXTRACT() part of a date
SELECT product_name,
EXTRACT(YEAR FROM added_date) AS  ext
FROM products;

SELECT product_name,
EXTRACT(MONTH FROM added_date) AS  ext_M
FROM products;

SELECT product_name,
EXTRACT(DAY FROM added_date) AS  exT_D
FROM products;

--AGE()  for difference between dates and time
SELECT product_name,
AGE(CURRENT_DATE, added_date)
AS diff FROM products;
--my current age
SELECT product_name,
AGE(CURRENT_DATE, '2002-04-12')
AS diff FROM products;

SELECt
AGE(CURRENT_DATE, '2005-04-12');


-- TO_CHAR() formats the date and time as string
SELECT product_name,
TO_CHAR(added_DATE, 'DD-MM-YYYY')
AS str FROM products;

SELECT product_name,
TO_CHAR(added_DATE, 'DD-MONTH-YYYY')
AS str FROM products;

SELECT product_name, added_date,
DATE_TRUNC('WEEK', added_date) AS month_start,
DATE_PART('isodow' , added_date) AS day_of_week
FROM products;

--intervals add or subtract time

SELECT product_name, added_date,
added_date + INTERVAL '6 DAYS' AS new_date
FROM products;

