create database college;
use college;
create table student
(
	roll_no INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
	city VARCHAR(20)
	);

INSERT INTO student
	(roll_no,name,marks,grade,city)
    VALUES
    (101,"anil",78,"C","Pune"),
    (102,"bhumika",93,"A","Mumbai"),
    (103,"chetan",85,"B","Mumbai"),
    (104,"dhruv",96,"A","Delhi"),
    (105,"riya",12,"F","Delhi"),
    (106,"farah",82,"B","Delhi");
    
SELECT*FROM student;

SELECT name,marks FROM student;

SELECT DISTINCT city FROM student;

SELECT * FROM student WHERE marks >=90;

SELECT * FROM student WHERE city = "mumbai";

SELECT * FROM student WHERE marks +10 > 100;

SELECT name,grade FROM student WHERE marks >=90;

SELECT * FROM student where marks>80 and city="Delhi";

SELECT * FROM student where marks>80 or city="mumbai";

SELECT * FROM student where city!="pune";

SELECT * FROM student WHERE marks BETWEEN 80 AND 90;

SELECT * FROM student WHERE city IN("Delhi","Mumbai");

SELECT * FROM student WHERE city NOT IN("Delhi","Mumbai");

SELECT * FROM student limit 5;

SELECT * FROM student limit 5 OFFSET 0;

SELECT * FROM student limit 5 OFFSET 1;

SELECT * FROM student limit 5 OFFSET 2;

SELECT * FROM student limit 3 OFFSET 3;

SELECT * FROM student limit 3 OFFSET 5;


SELECT * FROM  student ORDER BY marks desc;
SELECT * FROM student limit 3 OFFSET 0;

SELECT * FROM  student ORDER BY marks;

SELECT name,marks FROM  student ORDER BY marks desc;
SELECT * FROM student limit 3 OFFSET 2;

SELECT * FROM  student ORDER BY marks desc;  
SELECT * FROM student limit 1 OFFSET 0;  

/* AGREGATE FUNT, MAX, MIN, AVE,SUM */
SELECT MAX(marks) FROM student;
SELECT MIN(marks) FROM student;
SELECT SUM(marks) FROM student;
SELECT AVG(marks) FROM student;
SELECT COUNT(marks) FROM student;

/* LIKE OPERATOR IT IS USED IN A WHERE CLAUSE SO SERACH FOR A SPECIFIED PATTERN IN A STUDENT*/
/* see full like operator in not pdf*/
SELECT * FROM student WHERE name LIKE "a%";
SELECT * FROM student WHERE name LIKE "%a%";
/*whose name end with a */
SELECT * FROM student WHERE name LIKE "%a";

/* count the number of student in each city */
/* group by operator*/

SELECT city, COUNT(roll_no) FROM STUDENT GROUP BY city;

SELECT city, COUNT(name) FROM STUDENT GROUP BY city;


 /* update command */




/* table of related queries.  25 oct 2023. */
/* synta add column */
SELECT * FROM student;


ALTER TABLE student
ADD COLUMN AGE INT DEFAULT 19; 
SELECT * FROM student;

ALTER TABLE student
MODIFY  AGE VARCHAR(3);

INSERT INTO student(roll_no,name,marks, grade ,city, age)
VALUE
(99,"RAVI",80,"B","DELHI",101);


select * from student;

ALTER TABLE STUDENT
CHANGE COLUMN AGE stu_age int;

SELECT * FROM student;



ALTER TABLE student
DROP COLUMN stu_age;
SELECT * FROM STUDENT;

ALTER TABLE STUDENT
RENAME TO stu;
SELECT * FROM STU;

TRUNCATE TABLE stu;
SELECT * FROM stu;



SET SQL_SAFE_UPDATES = 0;
DELETE FROM stu
WHERE marks < 30;

SELECT * FROM STU;

DROP DATABASE STU;


CREATE DATABASE JOINT;
USE JOINT;
CREATE TABLE student1(
	ID INT Primary KEY,
    name VARCHAR(50)
    );
    
INSERT INTO STUDENT1(id,name)
value(101,"adam"),(102,"bob"),(103,"casey");



CREATE TABLE Course(
	id INT PRIMARy KEY,
    course VARCHAR(50)
    );

INSERT INTO course(id,course)
VALUE(102,"english"),(105,"maths"),(103,"science"),(107,"computer science");

SELECT*
FROM student1 INNER JOIN
course ON student1.id = course.id;

#allies


SELECT*
FROM student1
INNER JOIN course
ON s.id = c.id;


SELECT*
from student1
LEFT JOIN course
ON student1.id = course.id;

SELECT name,course
from student1 LEFT JOIN course
ON student1.id = course.id;



#  RIGHT JOINT
SELECT*
from student1
RIGHT JOIN course
ON student1.id = course.id;

SELECT name,course
from student1
RIGHT JOIN course
ON student1.id = course.id;

SELECT name,course
from student1
RIGHT JOIN course
ON course.id = student1.id;


SELECT name,course
from student1
RIGHT JOIN course
ON course.id = student1.id;

SELECT*
from student1
FULL OUt JOINT course
ON course.id = student1.id;