-- ================================
-- Tables Structure
-- ================================




CREATE TABLE Courses (student varchar(255), class varchar(255));
/*
(student, class) is the primary key (combination of columns with unique values) for this table.
Each row of this table indicates the name of a student and the class in which they are enrolled.
*/


-- ================================
-- Sample Input
-- ================================


INSERT INTO Courses (student, class) VALUES
('A', 'Math'),
('B', 'English'),
('C', 'Math'),
('D', 'Biology'),
('E', 'Math')
('F', 'Computer')
('G', 'Math')
('H', 'Math')
('I', 'Math')




-- ================================
--  Problem
-- ================================


/*
Write a solution to find all the classes that have at least five students.

Return the result table in any order.
*/


-- ================================
-- Solution
-- ================================


select class 
from Courses
group by class
having count(*)>=5


-- ================================
-- Explanation
-- ================================


/*
- Math has 6 students, so we include it.
- English has 1 student, so we do not include it.
- Biology has 1 student, so we do not include it.
- Computer has 1 student, so we do not include it.
*/