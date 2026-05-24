CREATE TABLE Customer (
    id INT,
    name VARCHAR(50),
    referee_id INT
);


INSERT INTO Customer (id, name, referee_id) VALUES
(1, 'Will', NULL),
(2, 'Jane', NULL),
(3, 'Alex', 2),
(4, 'Bill', NULL),
(5, 'Zack', 1),
(6, 'Mark', 2);

select name from customer WHERE referee_id is NULL or referee_id != 2