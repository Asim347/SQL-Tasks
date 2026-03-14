select * from employee;

INSERT INTO employee(empolyee_id, name, position, department, hire_date, salary)
VALUES 
(2, 'Sara Khan', 'Manager', 'HR', '2021-05-10', 35000.00),
(3, 'Ahmed Raza', 'Data Analyst', 'DS', '2023-03-15', 30000.00),
(4, 'Ali Hassan', 'Developer', 'IT', '2022-09-20', 40000.00),
(5, 'Fatima Noor', 'Accountant', 'Finance', '2020-11-05', 32000.00);
TRUNCATE TABLE employee;
TRUNCATE TABLE employee RESTART IDENTITY;

