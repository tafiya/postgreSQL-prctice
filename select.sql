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

-- In ar use(Multiple or thakle IN use hoy)
SELECT * from students WHERE county='Khulna'or county='Dhaka' or county='Tangail';
-- This can solve using IN
SELECT * from students WHERE county IN('Khulna','Dhaka','Tangail');
-- Not IN-->>oi country gulo bad a baki gula
SELECT * from students WHERE county NOT IN('Khulna','Dhaka','Tangail');

-- Between
SELECT * from students WHERE age BETWEEN 21 and 22;
SELECT * from students 
WHERE dob BETWEEN '2002-11-30' and '2003-05-22' 
ORDER BY dob;
-- like

-- first start with a.
SELECT * from students 
WHERE first_name LIKE 'A%';

-- last a thakbe.surute onk letter thakte pare
SELECT * from students 
WHERE first_name LIKE '%a';

-- first a 3 ta jekono letter .4 no ta a hobe tarpor onno word thkabe
SELECT * from students 
WHERE first_name LIKE '___a%';
-- first a 3 ta jekono letter .4 no ta a hobe tarpor onno ekta word thkabe
SELECT * from students 
WHERE first_name LIKE '___a_';

-- difference between LIKE and ILIKE--> LIKE== case sensitive ILIKE == case Insensitive
SELECT * from students 
WHERE first_name LIKE 'a%';
SELECT * from students 
WHERE first_name ILIKE 'a%';


-- Limit and Offset->>used for pagination
-- Limit == kotogulo data dekhabe.
--  offset == 1st theke koto gulo data bad dibe

SELECT * from students LIMIT 5;
SELECT * from students LIMIT 5 OFFSET 2;
-- for pagination--> offset* page number
-- 1st page:
SELECT * from students LIMIT 5 OFFSET 5*0; 
-- 2nd page:
SELECT * from students LIMIT 5 OFFSET 5*1;
-- 3rd page:
SELECT * from students LIMIT 5 OFFSET 5*2; 

-- Delete operation
-- condition diye amra select ar moto delete o korte pari.
DELETE from students
WHERE grade='C' and county ='Khulna';
SELECT * from students;