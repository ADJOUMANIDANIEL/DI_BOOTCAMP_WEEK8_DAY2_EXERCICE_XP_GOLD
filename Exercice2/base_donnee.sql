
UPDATE student
SET birth_date = '1998-11-02'
WHERE first_name = 'Lea' OR first_name = 'Marc';

UPDATE student
SET last_name = 'Guez'
WHERE first_name = 'David';
Delete:

DELETE FROM student
WHERE first_name = 'Lea' AND last_name = 'Benichou';


SELECT COUNT(*) AS num_students
FROM student;

SELECT COUNT(*) AS num_students
FROM student
WHERE birth_date > '2000-01-01';

ALTER TABLE student
ADD COLUMN math_grade INT;

UPDATE student
SET math_grade = math_grade + 80
WHERE id = 1;

UPDATE student
SET math_grade = math_grade + 90
WHERE id IN (2, 4);

Copy code
UPDATE student
SET math_grade = math_grade + 40
WHERE id = 6;

SELECT first_name, last_name, COUNT(*) AS total_grades
FROM student
WHERE math_grade > 83
GROUP BY first_name, last_name;

-- Add another student named 

INSERT INTO student (first_name, last_name, birth_date, math_grade)
SELECT first_name, last_name, birth_date, 70
FROM student
WHERE first_name = 'Omer' AND last_name = 'Simpson';

-- Bonus: Count how many grades each student has.

SELECT first_name, last_name, COUNT(math_grade) AS total_grades
FROM student
GROUP BY first_name, last_name;

-- Find the sum of all the students grades.

SELECT SUM(math_grade) AS total_grades
FROM student;