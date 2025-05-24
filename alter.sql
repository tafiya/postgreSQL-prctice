-- Active: 1747672917799@@localHost@5433@test
SELECT * from person1;

ALTER TABLE person
ADD COLUMN emails VARCHAR(50) DEFAULT 'abc@gmail.com' NOT NULL;

ALTER TABLE person
DROP COLUMN user_age;
INSERT INTO person1 values(1,'numn',30);

ALTER TABLE person
RENAME COLUMN age to user_age;

ALTER TABLE person
AlTER COLUMN user_age set NOT NULL;

ALTER TABLE person
DROP COLUMN emails ;

-- make a column unique
ALTER TABLE person1
 ADD constraint unique_person_user_age UNIQUE(age);
-- make a column primary key
 
ALTER TABLE person1
 ADD constraint pk_person_user_age PRIMARY KEY(id);