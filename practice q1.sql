CREATE DATABASE XYZ;

USE XYZ;

CREATE TABLE employees(
Id INT PRIMARY KEY,
Name VARCHAR(50),
Salary INT NOT NULL
);

INSERT INTO employees(Id , Name , Salary) VALUES 
(1,"adam",25000),
(2,"bob",30000),
(3,"casey",40000);

SELECT * FROM employees; # (*) means all.

