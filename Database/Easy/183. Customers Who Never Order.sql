-- ================================
-- Tables Structure
-- ================================


CREATE TABLE Customers (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);
/*
id is the primary key (column with unique values) for this table.
Each row of this table indicates the ID and name of a customer.
*/

CREATE TABLE Orders (
    id INT PRIMARY KEY,
    customerId INT   
);
/*
id is the primary key (column with unique values) for this table.
customerId is a foreign key (reference columns) of the ID from the Customers table.
Each row of this table indicates the ID of an order and the ID of the customer who ordered it.
*/


-- ================================
-- Sample Input
-- ================================


INSERT INTO Customers (id, name) VALUES
('1', 'Joe'),
('2', 'Henry'),
('3', 'Sam'),
('4', 'Max');

INSERT INTO Orders (id, customerId) VALUES
('1', '3'),
('2', '1');


-- ================================
--  Problem
-- ================================


/*
Write a solution to find all customers who never order anything.
Return the result table in any order
*/


-- ================================
-- Solution
-- ================================


select name as Customers
from Customers c
left join Orders o
ON c.id = o.customerId
WHERE o.customerId IS NULL




