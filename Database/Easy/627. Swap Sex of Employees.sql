-- ================================
-- Tables Structure
-- ================================


CREATE TABLE Salary (id int, name varchar(100), sex char(1), salary int);
/*
id is the primary key (column with unique values) for this table.
The sex column is ENUM (category) value of type ('m', 'f').
The table contains information about an employee.
*/


-- ================================
-- Sample Input
-- ================================


insert into Salary (id, name, sex, salary) values ('1', 'A', 'm', '2500')
insert into Salary (id, name, sex, salary) values ('2', 'B', 'f', '1500')
insert into Salary (id, name, sex, salary) values ('3', 'C', 'm', '5500')
insert into Salary (id, name, sex, salary) values ('4', 'D', 'f', '500')


-- ================================
--  Problem
-- ================================


/*
Write a solution to swap all 'f' and 'm' values (i.e., change all 'f' values to 'm' and vice versa) with a single update statement and no intermediate temporary tables.

Note that you must write a single update statement, do not write any select statement for this problem.
*/


-- ================================
-- Solution
-- ================================


UPDATE Salary
SET sex = CASE 
            WHEN sex = 'f' THEN 'm'
            ELSE 'f'
          END;



-- ================================
-- Explanation
-- ================================


/*
(1, A) and (3, C) were changed from 'm' to 'f'.
(2, B) and (4, D) were changed from 'f' to 'm'.
*/