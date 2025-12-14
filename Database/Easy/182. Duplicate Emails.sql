-- ================================
-- Tables Structure
-- ================================


CREATE TABLE Person (
    id int PRIMARY KEY, 
    email varchar(255)
);
/*
id is the primary key (column with unique values) for this table.
Each row of this table contains an email. The emails will not contain uppercase letters.
*/


-- ================================
-- Sample Input
-- ================================


INSERT INTO Person (id, email) VALUES
('1', 'a@b.com')
('2', 'c@d.com')
('3', 'a@b.com')


-- ================================
--  Problem
-- ================================


/*
Write a solution to report all the duplicate emails. 
Note that it's guaranteed that the email field is not NULL.
Return the result table in any order.
*/


-- ================================
-- Solution
-- ================================


select m.email  as Email 
from Person m
GROUP BY email
HAVING COUNT(*) > 1

