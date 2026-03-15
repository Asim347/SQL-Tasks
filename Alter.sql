CREATE TABLE products(
product_id SERIAL PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50),
price DECIMAL(10,2),
stock INT
);


INSERT INTO products (product_name, category, price, stock) VALUES
('Laptop', 'Electronics', 85000.00, 10),
('Smartphone', 'Electronics', 45000.00, 20),
('Headphones', 'Accessories', 3000.00, 50),
('Office Chair', 'Furniture', 12000.00, 15),
('Backpack', 'Bags', 2500.00, 30);


ALTER TABLE products
RENAME COLUMN category TO type;

ALTER TABLE products
ALTER COLUMN price TYPE INT;

SELECT * FROM products;

ALTER TABLE products
ALTER COLUMN type SET NOT NULL


ALTER TABLE products
DROP CONSTRAINT product_name;

ALTER TABLE products
ADD CONSTRAINT product_name_length
CHECK (LENGTH(product_name) >= 5);