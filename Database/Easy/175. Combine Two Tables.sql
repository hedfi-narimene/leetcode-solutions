-- ================================
-- Tables Structure
-- ================================


CREATE TABLE Person (
    personId INT PRIMARY KEY,
    lastName VARCHAR(50),
    firstName VARCHAR(50)
);
/*
personId is the primary key (column with unique values) for this table.
This table contains information about the ID of some persons and their first and last names.
*/

CREATE TABLE Address (
    addressId INT PRIMARY KEY,
    personId INT,
    city VARCHAR(100),
    state VARCHAR(100)
);
/*
addressId is the primary key (column with unique values) for this table.
Each row of this table contains information about the city and state of one person with ID = PersonId.
*/


-- ================================
-- Sample Input
-- ================================


INSERT INTO Person (personId, lastName, firstName) VALUES
(1, 'Wang', 'Allen'),
(2, 'Alice', 'Bob');

INSERT INTO Address (addressId, personId, city, state) VALUES
(1, 2, 'New York City', 'New York'),
(2, 3, 'Leetcode', 'California');


-- ================================
--  Problem
-- ================================


/*
Write a solution to report the first name, last name, city, and state of each person in the Person table. 
If the address of a personId is not present in the Address table, report null instead.
Return the result table in any order.
*/


-- ================================
-- Solution
-- ================================


select 
    Person.firstName,
    Person.lastName,
    Address.city,
    Address.state 
from Person
left join Address
using(personId)


-- ================================
-- Explanation
-- ================================


/*
There is no address in the address table for the personId = 1 so we return null in their city and state.
addressId = 1 contains information about the address of personId = 2.
*/