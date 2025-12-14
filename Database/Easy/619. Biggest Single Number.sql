-- ================================
-- Tables Structure
-- ================================


CREATE TABLE MyNumbers (num int)
;
/*
This table may contain duplicates (In other words, there is no primary key for this table in SQL).
Each row of this table contains an integer.
*/




-- ================================
-- Sample Input
-- ================================


insert into MyNumbers (num) values ('8')
insert into MyNumbers (num) values ('8')
insert into MyNumbers (num) values ('3')
insert into MyNumbers (num) values ('3')
insert into MyNumbers (num) values ('1')
insert into MyNumbers (num) values ('4')
insert into MyNumbers (num) values ('5')
insert into MyNumbers (num) values ('6')


-- ================================
--  Problem
-- ================================


/*
A single number is a number that appeared only once in the MyNumbers table.

Find the largest single number. If there is no single number, report null.
*/


-- ================================
-- Solution
-- ================================


SELECT MAX(num) AS num
FROM (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(*) = 1
) AS SingleNumbers;



