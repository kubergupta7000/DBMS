CREATE TABLE Employee2 (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    age INT CHECK (age >= 18),
    department VARCHAR(50) DEFAULT 'General',
    salary DECIMAL(10,2) CHECK (salary > 0)
);

INSERT INTO Employee2
(employee_id, name, email, age, department, salary)
VALUES
(101, 'Kuber', 'kuber@gmail.com', 19, 'IT', 80000),
(102, 'Tanmaya', 'tanmaya@gmail.com', 22, 'HR', 70000),
(103, 'Siddharth', 'siddharth@gmail.com', 18, 'IT', 60000),
(104, 'Jassi', 'jassi@gmail.com', 28, 'Finance', 55000),
(105, 'Aadil', 'aadil@gmail.com', 23, 'HR', 50000);

SELECT * FROM Employee2;

SELECT *
FROM Employee2
WHERE salary > 50000;

UPDATE Employee2
SET salary = salary + 5000
WHERE employee_id IN (101, 103);

DELETE FROM Employee2
WHERE employee_id = 105;

ALTER TABLE Employee2
ADD phone VARCHAR(15);

DESC Employee2;

TRUNCATE TABLE Employee2;

SELECT * FROM Employee2;