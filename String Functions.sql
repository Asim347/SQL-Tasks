SELECT * FROM products;

SELECT upper(category) AS cc
FROM products;


SELECT CONCAT(product_name, ' ' ,category) AS pc
FROM products;

SELECT SUBSTRING(product_name, 1,3) AS sub
from products;
  
SELECT product_name,  LENGTH(product_name) AS len
from products;