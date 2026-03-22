CREATE TABLE Employees3 (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT
);

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);
INSERT INTO Employees3 VALUES
(1, 'Rahul', 'Sharma', 101),
(2, 'Priya', 'Mehta', 102),
(3, 'Ankit', 'Verma', 103),
(4, 'Simran', 'Kaur', NULL),
(5, 'Aman', 'Singh', 101);

INSERT INTO Departments VALUES
(101, 'Sales'),
(102, 'Marketing'),
(103, 'IT'),
(104, 'HR');

select * from Employees3;

-- INNER JOIN: Returns only matching records from both tables.
SELECT e.employee_id, e.first_name, e.last_name,
       d.department_id, d.department_name
FROM Employees3 e
INNER JOIN Departments d
ON e.department_id = d.department_id;

--LEFT JOIN: Returns all records from left table + matched from right.
SELECT e.employee_id, e.first_name, e.last_name,
       d.department_id, d.department_name
FROM Employees3 e
LEFT JOIN Departments d
ON e.department_id = d.department_id;

--RIGHT JOIN: Returns all records from right table + matched from left.

SELECT e.employee_id, e.first_name, e.last_name,
       d.department_id, d.department_name
FROM Employees3 e
RIGHT JOIN Departments d
ON e.department_id = d.department_id;

--FULL JOIN: Returns all records when there is a match in either table.
SELECT e.employee_id, e.first_name, e.last_name,
       d.department_id, d.department_name
FROM Employees3 e
FULL OUTER JOIN Departments d
ON e.department_id = d.department_id;

--CROSS JOIN: Returns all possible combinations of rows from both tables.
SELECT e.first_name, e.last_name,
       d.department_name
FROM Employees3 e
CROSS JOIN 
Departments d;


--SELF JOIN: Joins a table with itself to compare rows within the same table.
SELECT e1.first_name AS emloyee1,
       e2.first_name AS emloyee2,
	   d.department_name 
FROM employees3 e1 JOIN Employees3 e2
ON e1.department_id  = e2.department_id AND e1.employee_id != e2.employee_id
JOIN 
Departments d
ON
e1.department_id = d.department_id;