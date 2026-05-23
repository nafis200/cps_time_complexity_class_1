-- Create Student Table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    grade VARCHAR(5),
    course VARCHAR(100),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
);

-- Insert Values
INSERT INTO students (
    student_id,
    first_name,
    last_name,
    age,
    grade,
    course,
    email,
    dob,
    blood_group,
    country
)
VALUES
(1, 'John', 'Doe', 20, 'A+', 'Computer Science', 'john.doe@example.com', '2004-05-10', 'O+', 'USA'),

(2, 'Alice', 'Smith', 22, 'B', 'Mathematics', 'alice.smith@example.com', '2002-08-15', 'A-', 'UK'),

(3, 'Bob', 'Johnson', 21, 'A', 'Physics', 'bob.johnson@example.com', '2003-02-20', 'B+', 'Canada'),

(4, 'Emma', 'Brown', 23, 'C', 'Biology', 'emma.brown@example.com', '2001-11-30', 'AB-', 'Australia'),

(5, 'Liam', 'Williams', 19, 'A-', 'Chemistry', 'liam.williams@example.com', '2005-04-22', 'O-', 'Germany'),

(6, 'Mia', 'Taylor', 20, 'A+', 'Computer Science', 'mia.taylor@example.com', '2004-06-15', 'B+', 'USA'),

(7, 'Noah', 'Lee', 22, 'B+', 'Physics', 'noah.lee@example.com', '2002-09-10', 'AB+', 'Canada'),

(8, 'Olivia', 'Harris', 21, 'A', 'Chemistry', 'olivia.harris@example.com', '2003-07-25', 'O+', 'Australia');


SELECT * from students where country IN('USA', 'Australia')

SELECT * FROM students WHERE country = 'USA' AND grade = 'A+'

SELECT * from students WHERE age != 20 AND country = 'Canada'

SELECT country,count(*) FROM students GROUP BY country

SELECT * FROM students where grade IN('B','B+') AND country IN('Canada','UK')

SELECT * from students where age > 20 AND grade IN('C','A-')

SELECT * from students WHERE email ILIKE '%example.com'

SELECT * from students WHERE country IN('USA','Canada') ORDER BY age DESC

SELECT concat(first_name, ' ', last_name) from students

SELECT * from students where age NOT IN(20,21,22)