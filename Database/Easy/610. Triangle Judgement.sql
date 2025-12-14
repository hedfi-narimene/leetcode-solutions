-- ================================
-- Tables Structure
-- ================================


CREATE TABLETriangle (x int, y int, z int
);
/*
In SQL, (x, y, z) is the primary key column for this table.
Each row of this table contains the lengths of three line segments.
*/



-- ================================
-- Sample Input
-- ================================


insert into Triangle (x, y, z) values ('13', '15', '30')
insert into Triangle (x, y, z) values ('10', '20', '15')


-- ================================
--  Problem
-- ================================


/*
Report for every three line segments whether they can form a triangle.

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


