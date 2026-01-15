-- ALTER TABLE products
-- ADD CONSTRAINT
-- UNIQUE(product_name);
-- Create a database
CREATE DATABASE company;
USE company;

-- Create a table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hourly_pay DECIMAL(5,2),
    hire_date DATE
);

-- Insert data into table
INSERT INTO employees (employee_id, first_name, last_name, hourly_pay, hire_date)
VALUES
(1, 'Aditya', 'Madhav', 30.00, '2023-01-01'),
(2, 'Rahul', 'Sharma', 25.50, '2023-03-15'),
(3, 'Ankit', 'Verma', 28.00, '2024-06-10');

-- View table data
SELECT * FROM employees;

-- Update data
UPDATE employees
SET hourly_pay = 35.00
WHERE employee_id = 1;

-- Delete a row
DELETE FROM employees
WHERE employee_id = 2;

-- Add a new column
ALTER TABLE employees
ADD COLUMN created_at DATETIME DEFAULT CURRENT_TIMESTAMP;

-- Modify column datatype
ALTER TABLE employees
MODIFY hourly_pay DECIMAL(6,2);

-- Rename a column
ALTER TABLE employees
RENAME COLUMN hourly_pay TO salary_per_hour;

-- View final table
SELECT * FROM employees;






 
