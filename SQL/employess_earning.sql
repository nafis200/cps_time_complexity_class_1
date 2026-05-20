-- Create Employee Table
CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT,
    managerId INT
);

-- Insert Values
INSERT INTO Employee (id, name, salary, managerId)
VALUES
(1, 'Joe', 70000, 3),
(2, 'Henry', 80000, 4),
(3, 'Sam', 60000, NULL),
(4, 'Max', 90000, NULL);

SELECT e.name as "Employee" from Employee as e JOIN Employee m on e.managerid = m.id WHERE e.salary > m.salary