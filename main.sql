CREATE TABLE students (
    id integer PRIMARY KEY,
    first_name text NOT NULL,
    middle_name text DEFAULT NULL,
    last_name text NOT NULL,
    age integer NOT NULL,
    location text NOT NULL
);
INSERT INTO students  (id, first_name, last_name, age, location)
VALUES (1, 'Juan', 'Cruz', 18, 'Manila'),
(2, 'Anne', 'Wall', 20, 'Manila'),
(3, 'Theresa','Joseph', 21, 'Manila'), 
(4, 'Isaac','Gray', 19, 'Laguna'),
(5, 'Zack','Matthews', 22, 'Marikina'),
(6, 'Finn', 'Lam', 25, 'Manila');

UPDATE students
SET first_name = 'Ivan', middle_name = 'Ingram', last_name = 'Howard', age = 25, location = 'Bulacan'
where id = 1;

DELETE FROM students where id = 6;

SELECT COUNT(id) FROM students;

SELECT * FROM students
WHERE location = 'Manila';

SELECT AVG(age) FROM students;

SELECT * FROM students ORDER BY age DESC;

CREATE TYPE valid_grades AS ENUM ('A', 'B', 'C', 'D', 'E', 'F');

CREATE TABLE research_papers (
    id integer PRIMARY KEY NOT NULL,
    student_id integer NOT NULL,
    grade valid_grades NULL,
    FOREIGN KEY (student_id) REFERENCES students(id)
);

INSERT INTO research_papers (id, student_id, grade)
VALUES (1, 5, 'A'),
(2, 2, 'A'),
(3, 3, 'B'),
(4, 4, 'C'),
(5, 5, 'B'),
(6, 1, NULL),
(7, 2, 'C'),
(8, 4, 'B'),
(9, 3, NULL),
(10, 1, 'C');


-- Query all students with multiple research papers

SELECT students.first_name, students.last_name, COUNT(research_papers.grade) AS number_of_research_papers
FROM students
INNER JOIN research_papers
ON students.id = research_papers.student_id
GROUP BY students.first_name, students.last_name
HAVING COUNT(research_papers.grade)>1;

-- Query all students with ungraded research papers

SELECT students.first_name, students.last_name, research_papers.id AS research_paper_id, research_papers.grade
FROM students
INNER JOIN research_papers
ON students.id = research_papers.student_id
WHERE research_papers.grade IS NULL
GROUP BY students.first_name, students.last_name, research_papers.id;