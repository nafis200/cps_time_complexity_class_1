CREATE TABLE Person (
    id INT,
    email VARCHAR(255)
);

INSERT INTO Person (id, email)
VALUES
(1, 'john@example.com'),
(2, 'bob@example.com'),
(3, 'john@example.com');


DELETE FROM Person p1
USING Person p2
WHERE p1.email = p2.email 
  AND p1.id > p2.id;

select * from Person
