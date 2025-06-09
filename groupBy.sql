SELECT county from students
GROUP BY county;
select * from students;
SELECT county, count(*), avg(age) from students
GROUP BY county;

-- having --> filter kore  per group ar against a.
-- Where -->> filter kore per row ar against  a.
SELECT county, count(*),avg(age) from students
GROUP BY county
HAVING avg(age)>20;

-- count students born in each year
SELECT extract(year from dob) as birth_year,count(*) from students GROUP BY birth_year ;
SELECT extract(year from dob) as birth_year,count(*) from students GROUP BY birth_year ORDER BY birth_year ASC ;