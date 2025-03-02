CREATE DATABASE college;

USE college;

CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);

INSERT INTO student
(roll_number,name,marks,grade,city)
VALUES
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");

SELECT * FROM student;

ALTER TABLE student
CHANGE COLUMN rollno roll_number int;

ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;

ALTER TABLE student
MODIFY COLUMN agE varchar(2);

ALTER TABLE student
CHANGE age stu_age INT;

INSERT INTO student
(roll_number,name,marks,stu_age)
VALUES
(107,"bob",68,100);

ALTER TABLE student
DROP COLUMN stu_age;

ALTER TABLE stu
RENAME TO student;

SELECT * FROM student;

TRUNCATE TABLE student;



