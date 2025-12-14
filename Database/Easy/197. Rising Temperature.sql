-- ================================
-- Tables Structure
-- ================================


CREATE TABLE Weather (
    id INT PRIMARY KEY,
    recordDate date,
    temperature int
);
/*
id is the column with unique values for this table.
There are no different rows with the same recordDate.
This table contains information about the temperature on a certain day.
*/


-- ================================
-- Sample Input
-- ================================


INSERT INTO Weather (id, recordDate, temperature) VALUES
('1', '2015-01-01', '10'),
('2', '2015-01-02', '25'),
('3', '2015-01-03', '20'),
('4', '2015-01-04', '30');


-- ================================
--  Problem
-- ================================


/*
Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).
Return the result table in any order.
*/


-- ================================
-- Solution
-- ================================


select a.id 
from weather a
join weather b
on a.recordDate = b.recordDate + INTERVAL 1 DAY 
    and a.temperature > b.temperature


-- ================================
-- Explanation
-- ================================


/*
In 2015-01-02, the temperature was higher than the previous day (10 -> 25).
In 2015-01-04, the temperature was higher than the previous day (20 -> 30).
*/