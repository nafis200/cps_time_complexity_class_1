CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE EmployeeUNI (
    id INT,
    unique_id INT,
    PRIMARY KEY (id, unique_id)
);

-- Employees table data
INSERT INTO Employees (id, name) VALUES
(1, 'Alice'),
(7, 'Bob'),
(11, 'Meir'),
(90, 'Winston'),
(3, 'Jonathan');

-- EmployeeUNI table data
INSERT INTO EmployeeUNI (id, unique_id) VALUES
(3, 1),
(11, 2),
(90, 3);

SELECT em.unique_id, e.name FROM Employees as e LEFT JOIN EmployeeUNI as em ON e.id = em.id ORDER BY e.name ASC