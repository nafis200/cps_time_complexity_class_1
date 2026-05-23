
CREATE TABLE Customers (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

INSERT INTO Customers (id, name) VALUES
(1, 'John'),
(2, 'Alice'),
(3, 'Bob'),
(4, 'Diana');



CREATE TABLE Orders (
    id INT PRIMARY KEY,
    customerId INT
);

INSERT INTO Orders (id, customerId) VALUES
(1, 1),
(2, 3);


SELECT name as "Customers" from Customers as c LEFT JOIN Orders as o ON c.id = o.customerid where o.customerid is NULL