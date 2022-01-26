CREATE TABLE students (
	id integer,
	first_name text,
	middle_name text,
	last_name text,
	age integer,
	location text
);

INSERT INTO students (id, first_name, middle_name, last_name, age, location) VALUES (6, 'Finn', 'Blank', 'Lam', 25, 'Manila');

UPDATE students SET first_name = 'Ivan', middle_name = 'Ingram', last_name = 'Howard', age = 25, location = 'Bulacan' WHERE id = 1;

DELETE FROM students where id = 6;

SELECT * FROM students