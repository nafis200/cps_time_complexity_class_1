CREATE TABLE Visits (
    visit_id INT PRIMARY KEY,
    customer_id INT
);

INSERT INTO Visits (visit_id, customer_id) VALUES
(1, 23),
(2, 9),
(4, 30),
(5, 54),
(6, 96),
(7, 54),
(8, 54);

CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    visit_id INT,
    amount INT,
    FOREIGN KEY (visit_id) REFERENCES Visits(visit_id)
);

INSERT INTO Transactions (transaction_id, visit_id, amount) VALUES
(2, 5, 310),
(3, 5, 300),
(9, 5, 200),
(12, 1, 910),
(13, 2, 970);

SELECT v.customer_id,count(v.visit_id) as count_no_trans FROM Visits as v LEFT JOIN Transactions as t ON v.visit_id = t.visit_id WHERE t.visit_id IS NULL GROUP BY v.customer_id ORDER BY count(v.visit_id) DESC