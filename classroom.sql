CREATE DATABASE college;

USE college;

CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);

CREATE TABLE dept(
id INT PRIMARY KEY,
name VARCHAR(50)
);# parent table  

INSERT INTO dept
VALUES
(101,"English"),
(102,"It");

UPDATE dept
SET id = 111
WHERE name = "English";

SELECT * FROM dept;

CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES dept(id)
ON DELETE CASCADE
ON UPDATE CASCADE
); # child table

DROP TABLE teacher;

INSERT INTO teacher
VALUES
(101,"Adam",101),
(102,"Eve",102);

UPDATE teacher
SET dept_id = 7
WHERE dept_id = 111;

SELECT * FROM teacher;

INSERT INTO student
(rollno,name,marks,grade,city)
VALUES
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");

DELETE FROM student
WHERE marks < 33;

SELECT * FROM student;
DELETE FROM student
WHERE marks  between 70 AND 80;

UPDATE student 
SET marks = marks + 1;

SELECT * FROM student;


SELECT city ,count(rollno)
FROM student 
GROUP BY city
HAVING max(marks) > 90;
;

SELECT grade, count(grade)
FROM student
GROUP BY grade
ORDER BY COUNT(grade) DESC;

SELECT city
FROM student
WHERE grade = "A"
GROUP BY city
HAVING MAX(marks) >= 93
order by city desc;


SELECT DISTINCT city FROM student; # ONLY SHOW UNIQUE VALUE // not need repeation

use college;

SELECT name,marks FROM student;

/*
SELECT * 
FROM STUDENT
WHERE MARKS BETWEEN 78 AND 96;    # 93 AND 96 ARE ALSO INCLUSIVE.
*/

 SELECT * 
FROM STUDENT
WHERE city NOT IN("Delhi","Mumbai","Goa"); # NOT neglect codition

SELECT * 
FROM STUDENT
where marks > 80
LIMIT 3; # starting from up give marks that are greater than 80;

SELECT AVG(marks)
FROM student;


USE college;

SELECT city, avg(marks)
FROM student
GROUP BY city 
ORDER BY AVG(marks) DESC;

SELECT city, count(city)
FROM student
GROUP BY city;


/*
SELECT mode , count(customer)
FROM payment
GROUP BY mode;
*/

-- Q2

CREATE TABLE payment(
customer_id INT PRIMARY KEY,
customer VARCHAR(50),
mode VARCHAR(50),
city VARCHAR(40)
);

INSERT INTO payment 
VALUES
(101,'Olivia Barrett','Netbanking','Portiland'),
(102,'Ethan Sinclair','Credit Card','Miami'),
(103,'Maya Hernandez','Credit Card','Seattle'),
(104,'Liam Donovan','Netbanking','Denver'),
(105,'Sophie Nguyen','Credit Card','New Orleans'),
(106,'Caleb Foster','Debit Card','Minneapolis'),
(107,'Ava Patel','Debit Card','Phoenix'),
(108,'Lucas Carter','Netbanking','Boston'),
(109,'Isabella Martinez','Netbanking','Nashville'),
(110,'Jackson Brooks','Credit   Card','Boston')
;

SELECT mode , COUNT(customer)
FROM payment
GROUP BY mode;

SET SQL_SAFE_UPDATES = 0;# 0 means off and 1 means on.

DROP TABLE payment;

UPDATE student 
SET grade = "O"
WHERE grade = "A";

UPDATE student
SET grade = "A"
WHERE marks > 90 and marks < 96;

UPDATE student 
SET marks = 95
WHERE rollno = 105;

SELECT * FROM student;



