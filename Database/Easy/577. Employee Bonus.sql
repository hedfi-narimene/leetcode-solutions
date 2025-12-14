-- ================================
-- Tables Structure
-- ================================


CREATE TABLE Employee (
    empId  INT PRIMARY KEY,
    name varchar(255),
    supervisor INT,
    salary INT
);
/*
empId is the column with unique values for this table.
Each row of this table indicates the name and 
the ID of an employee in addition to their salary and the id of their manager.
*/

CREATE TABLE Bonus (
    empId int PRIMARY KEY, 
    bonus int
);
/*
empId is the column of unique values for this table.
empId is a foreign key (reference column) to empId from the Employee table.
Each row of this table contains the id of an employee and their respective bonus.
*/


-- ================================
-- Sample Input
-- ================================


INSERT INTO Employee (empId, name, supervisor, salary) VALUES
('3', 'Brad', NULL, '4000'),
('1', 'John', '3', '1000'),
('2', 'Dan', '3', '2000'),
('4', 'Thomas', '3', '4000');

INSERT INTO Bonus (empId, bonus) VALUES
('2', '500'),
('4', '2000');


-- ================================
--  Problem
-- ================================


/*
Write a solution to report the name and bonus amount of each employee who satisfies either of the following:
The employee has a bonus less than 1000.
The employee did not get any bonus.
Return the result table in any order.
*/


-- ================================
-- Solution
-- ================================


select  a.name , b.bonus
from Employee  a
left join  Bonus b
ON a.empId = b.empId
WHERE b.bonus < 1000 OR b.bonus IS NULL;

