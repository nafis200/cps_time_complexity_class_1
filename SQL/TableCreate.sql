CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(100),
    marks INT
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);


INSERT INTO students VALUES
(1, 'Nafis', 'Dhaka', 85),
(2, 'Rakesh', 'Chittagong', 72),
(3, 'Alice', 'Khulna', 90),
(4, 'Bob', 'Sylhet', 65),
(5, 'Eve', 'Dhaka', 95),
(6, 'John', 'Rajshahi', 78),
(7, 'Mina', 'Barisal', 88),
(8, 'Rahim', 'Khulna', 60),
(9, 'Sadia', 'Dhaka', 92),
(10, 'Karim', 'Sylhet', 70);


INSERT INTO courses VALUES
(1, 'Database', 1),
(2, 'Networking', 2),
(3, 'Web Development', 1),
(4, 'AI Basics', 3),
(5, 'Machine Learning', 5),
(6, 'Data Structures', 6),
(7, 'Algorithms', 6),
(8, 'Operating Systems', 7),
(9, 'Computer Networks', 8),
(10, 'Software Engineering', 9),
(11, 'Cyber Security', 10),
(12, 'Cloud Computing', 3),
(13, 'Python Programming', 5);


SELECT name from students where marks < (SELECT marks FROM students where name = 'Alice')

SELECT * from students as s INNER JOIN courses as c on s.student_id = c.student_id WHERE s.city = 'Dhaka'

SELECT MAX(marks) AS second_highest
FROM students
WHERE marks < (
    SELECT MAX(marks)
    FROM students
);

SELECT *
FROM students
WHERE marks > (
    SELECT MAX(marks)
    FROM students
    WHERE city = 'Dhaka'
);