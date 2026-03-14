CREATE TABLE users(
user_id SERIAL PRIMARY KEY,
name VARCHAR(100),
email VARCHAR(100),
age INT,
city VARCHAR(50)
);
SELECT * FROM users;
-- Insert 5 users
INSERT INTO users (name, email, age, city) VALUES
('Ali Khan', 'ali.khan@example.com', 25, 'Lahore'),
('Sara Ahmed', 'sara.ahmed@example.com', 28, 'Karachi'),
('Usman Tariq', 'usman.tariq@example.com', 30, 'Islamabad'),
('Ayesha Malik', 'ayesha.malik@example.com', 24, 'Peshawar'),
('Hamza Shah', 'hamza.shah@example.com', 27, 'Multan');
SELECT name, age, city FROM users;


UPDATE users
SET age = 26
WHERE name = 'Ali Khan';
SELECT * FROM users;

SELECT * FROM users ORDER BY user_id ASC;

UPDATE users
SET city = 'Quetta'
WHERE age > 29;

UPDATE users
SET age = 35, city = 'Murree'
WHERE age = 24;

UPDATE users
SET age = age+1
WHERE email like '@gmail.com';

UPDATE users
SET email = 'usman.tariq@gmail.com'
WHERE name = 'Usman Tariq';