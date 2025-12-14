-- ================================
-- Tables Structure
-- ================================


CREATE TABLE Customer (
    id INT PRIMARY KEY,
     name varchar(25), referee_id int
);
/*
In SQL, id is the primary key column for this table.
Each row of this table indicates the id of a customer, their name, and the id of the customer who referred them.
*/




-- ================================
-- Sample Input
-- ================================


INSERT INTO Customer (id, name, referee_id) VALUES
('1', 'Will', NULL),
('2', 'Jane', NULL),
('3', 'Alex', '2'),
('4', 'Bill', NULL),
('5', 'Zack', '1'),
('6', 'Mark', '2');





-- ================================
--  Problem
-- ================================


/*
Find the names of the customer that are either:

referred by any customer with id != 2.
not referred by any customer.
Return the result table in any order.
*/


-- ================================
-- Solution
-- ================================


select name 
from Customer 
where referee_id <>2 or referee_id is null


