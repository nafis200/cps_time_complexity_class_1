
drop table Users

CREATE TABLE Users (
    user_id INT,
    name VARCHAR(50),
    mail VARCHAR(100)
);

INSERT INTO Users (user_id, name, mail) VALUES
(1, 'Winston', 'winston@leetcode.com'),
(2, 'Jonathan', 'jonathanisgreat'),
(3, 'Annabelle', 'bella-@leetcode.com'),
(4, 'Sally', 'sally.come@leetcode.com'),
(5, 'Marwan', 'quarz#2020@leetcode.com'),
(6, 'David', 'david69@gmail.com'),
(7, 'Shapiro', '.shapo@leetcode.com');

SELECT * FROM Users WHERE mail ILIKE '%leetcode.com' AND mail NOT ILIKE '.%'  AND mail NOT ILIKE '%#%';

SELECT *
FROM Users
WHERE mail ~ '^[A-Za-z][A-Za-z0-9_.-]*@leetcode\.com$';
