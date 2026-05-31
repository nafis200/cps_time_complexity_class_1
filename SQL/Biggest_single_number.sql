
CREATE TABLE Numbers (
    num INT
);

INSERT INTO Numbers (num) VALUES
(8),
(8),
(3),
(3),
(1),
(4),
(5),
(6);

SELECT * FROM Numbers group by num having count(num) = 1

SELECT MAX(num) as "num" FROM (SELECT num FROM Numbers group by num having count(num) = 1)