-- ================================
-- Tables Structure
-- ================================


CREATE TABLE Employee (
    id INT PRIMARY KEY, 
    name VARCHAR(255), 
    salary INT, 
    managerId INT
);
/*
id is the primary key (column with unique values) for this table.
Each row of this table indicates the ID of an employee, their name, salary, and the ID of their manager.
*/


-- ================================
-- Sample Input
-- ================================


INSERT INTO Employee (id, name, salary, managerId) VALUES 
('1', 'Joe', '70000', '3'),
('2', 'Henry', '80000', '4'),
('3', 'Sam', '60000', NULL),
('4', 'Max', '90000', NULL);


-- ================================
--  Problem
-- ================================


/*
Write a solution to find the employees who earn more than their managers.
Return the result table in any order.
*/


-- ================================
-- Solution
-- ================================


select e.name as Employee 
from Employee e
JOIN Employee m
ON e.managerId = m.id
WHERE e.salary > m.salary
