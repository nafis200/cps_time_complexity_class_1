
CREATE TABLE Person (
    personId INT PRIMARY KEY,
    lastName VARCHAR(50),
    firstName VARCHAR(50)
);


INSERT INTO Person (personId, lastName, firstName)
VALUES
(1, 'Hasan', 'Rahim'),
(2, 'Ahmed', 'Karim'),
(3, 'Khan', 'Naim'),
(4, 'Ali', 'Sami');


CREATE TABLE Address (
    addressId INT PRIMARY KEY,
    personId INT,
    city VARCHAR(50),
    state VARCHAR(50)
);


INSERT INTO Address (addressId, personId, city, state)
VALUES
(1, 1, 'Dhaka', 'Dhaka'),
(2, 2, 'Khulna', 'Khulna'),
(3, 4, 'Chattogram', 'Chattogram');


SELECT firstName,lastName,city,state FROM Person as p LEFT JOIN address as a ON
p.personid = a.personid