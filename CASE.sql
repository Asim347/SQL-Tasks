	SELECT product_name , price,
	CASE
	    WHEN price >= 20000 THEN 'Expensive'
		WHEN price >=5000 AND price <= 15000 THEN 'moderate'
		ELSE 'Affordable'
	END AS PRICE_CHECKING
From products;
select * from products;
SELECT product_name , quantity,
CASE 
	WHEN quantity >= 20 THEN 'In stock'
	WHEN quantity >=5 AND quantity <=19 THEN 'Limited stock'
	ELSE 'Out of stock'
END AS stock_Position 
FROM products;

SELECT product_name, category,
CASE
	WHEN category LIKE 'Accessories' THEN 'accessories'
    WHEN category LIKE 'Electronics' THEN 'Electronics'
	ELSE 'Furniture'
	END AS category_status
FROM products;