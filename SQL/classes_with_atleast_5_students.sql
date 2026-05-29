



CREATE TABLE Courses (
    student VARCHAR(50),
    class VARCHAR(50)
);

INSERT INTO Courses (student, class) VALUES
('A', 'Math'),
('B', 'English'),
('C', 'Math'),
('D', 'Biology'),
('E', 'Math'),
('F', 'Computer'),
('G', 'Math'),
('H', 'Math'),
('I', 'Math');


SELECT class
FROM courses
GROUP BY class HAVING COUNT(class) >= 5;

