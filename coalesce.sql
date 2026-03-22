select * from products;
-- COALESCE in SQL returns the first non-NULL value from a list.
ALTER TABLE products
ADD COLUMN discount_price NUMERIC(10,2);

UPDATE products
SET discount_price = NULL
WHERE product_name  IN('Keyboard', 'Study Desk');

UPDATE products
SET discount_price = price * 0.9
WHERE product_name NOT IN('Keyboard', 'Study Desk');

SELECT product_name , discount_price
FROM products;

SELECT product_name , 
     COALESCE (discount_price, price) AS final_price
FROM products;