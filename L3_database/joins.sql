CREATE TABLE classrooms (
	id integer,
	student_id integer,
	section text
);

INSERT INTO classrooms (id, student_id, section)
VALUES (1, 1, 'A');
INSERT INTO classrooms (id, student_id, section)
VALUES (2, 2, 'A');
INSERT INTO classrooms (id, student_id, section)
VALUES (3, 3, 'B');
INSERT INTO classrooms (id, student_id, section)
VALUES (4, 4, 'C');
INSERT INTO classrooms (id, student_id, section)
VALUES (5, 5, 'B');
INSERT INTO classrooms (id, student_id, section)
VALUES (6, 6, 'A');
INSERT INTO classrooms (id, student_id, section)
VALUES (7, 7, 'C');
INSERT INTO classrooms (id, student_id, section)
VALUES (8, 8, 'B');
INSERT INTO classrooms (id, student_id, section)
VALUES (9, 9, 'B');
INSERT INTO classrooms (id, student_id, section)
VALUES (10, 10, 'C');

SELECT * FROM classrooms;

SELECT classrooms.student_id, students.first_name
FROM classrooms
INNER JOIN students
ON classrooms.student_id = students.id;

SELECT classrooms.student_id, students.first_name
FROM classrooms
LEFT JOIN students
ON classrooms.student_id = students.id;

SELECT *
FROM classrooms
RIGHT JOIN students 
ON classrooms.student_id = students.id;

SELECT *
FROM classrooms 
FULL JOIN students 
ON classrooms.student_id = students.id;