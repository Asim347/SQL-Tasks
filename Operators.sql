	SELECT * FROM products;

	SELECT  product_name, price,
	(price * 0.10) AS 
	newprice FROM products;

	SELECT  product_name, price,
	(price * 12) AS annual_price,
	(price * 0.05) AS increasedby5
	FROM products;
	SELECT * FROM products

	CREATE TABLE std_22(
      std_id INT PRIMARY KEY,
	  std_name VARCHAR(50),
	  course VARCHAR(50)
	);

	CREATE TABLE std_23(
     std_id INT PRIMARY KEY,
	  std_name VARCHAR(50),
	  course VARCHAR(50)
	);
	INSERT INTO std_22 (std_id, std_name, course) VALUES
(1, 'Ali', 'Computer Science'),
(2, 'Sara', 'Mathematics'),
(3, 'Ahmed', 'Physics'),
(4, 'Ayesha', 'Chemistry'),
(5, 'John', 'Biology');

-- Insert data into std_23
-- Two students are the same as in std_22 (Ali and Sara)
INSERT INTO std_23 (std_id, std_name, course) VALUES
(1, 'Ali', 'Computer Science'),
(2, 'Sara', 'Mathematics'),
(6, 'Zara', 'English'),
(7, 'Omar', 'Economics'),
(8, 'Hassan', 'History');


-- UNION all OPERATOR gives all record from many tables
SELECT std_name , course 
FROM std_22
UNION ALL
select std_name , course
FROM std_23;


-- UNION OPERATOR gives unique record from many tables
SELECT std_name , course 
FROM std_22
UNION
select std_name , course
FROM std_23;


-- INTERSECT OPERATOR gives common record from many tables
SELECT std_name , course 
FROM std_22
INTERSECT
select std_name , course
FROM std_23;


-- EXCEPT OPERATOR gives UNIQUE  record from first tables
SELECT std_name , course 
FROM std_22
EXCEPT
select std_name , course
FROM std_23;


