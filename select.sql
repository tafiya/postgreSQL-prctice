-- Active: 1747672917799@@localHost@5433@test
SELECT * from person1;

select age as userAge from person1;

CREATE TABLE students(
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    county VARCHAR(50)
);

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, county)
VALUES 
('Alice', 'Johnson', 20, 'A+', 'Computer Science', 'alice.johnson@example.com', '2004-01-15', 'O+', 'Dhaka'),

('Bob', 'Smith', 21, 'B', 'Mathematics', 'bob.smith@example.com', '2003-05-22', 'A-', 'Tangail'),

('Charlie', 'Brown', 19, 'A', 'Physics', 'charlie.brown@example.com', '2005-08-09', 'B+', 'Chittagong'),

('Diana', 'Khan', 22, 'B+', 'Biology', NULL, '2002-11-30', 'AB+', 'Sylhet'),

('Ethan', 'Roy', 20, 'A-', 'Economics', 'ethan.roy@example.com', '2004-03-11', 'O-', 'Barisal'),

('Faria', 'Rahman', 18, 'C', 'Chemistry', 'faria.rahman@example.com', '2006-07-25', 'A+', 'Mymensingh'),

('George', 'Hossain', 23, 'B', 'Engineering', NULL, '2001-02-18', 'B-', 'Khulna'),

('Hannah', 'Islam', 19, 'A+', 'English', NULL, '2005-09-12', 'AB-', 'Rajshahi'),

('Ibrahim', 'Chowdhury', 21, 'B-', 'History', 'ibrahim.chowdhury@example.com', '2003-12-01', 'O+', 'Comilla'),

('Jannat', 'Akter', 20, 'A', 'Philosophy', 'jannat.akter@example.com', '2004-06-05', 'B+', 'Narayanganj');


SELECT * from students;

SELECT email as "student email" from students;

select * FROM students ORDER BY first_name DESC;

-- find total unique country
SELECT DISTINCT county from students;

-- data filtering

-- select students from the USA
-- select students with a grade 'A' in Physics
-- select students with a specific blood group (A+)
-- select students from the USA or from Australia
-- select students from the USA or from Australia and the age is 20
-- select students with a grade of 'A" or "B" in math or physic
-- select students not from the USA

SELECT * from students where county='Dhaka';
SELECT* from students where course='Physics' AND grade='A+';
SELECT * from students where blood_group= 'A+';
SELECT * from students where county= 'Comilla' OR county= 'Khulna' AND age=20;

SELECT * from students
WHERE county <> 'Khulna';

-- function
select upper(first_name) as "first name" ,* from students;

SELECT concat(first_name,' ',last_name) from students;

-- ?AGGREGATE
SELECT count(age) from students;

-- combine Scaler and aggregate function

SELECT min( length(first_name)) from students;