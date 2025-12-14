-- ================================
-- Tables Structure
-- ================================


CREATE TABLE cinema (id int, movie varchar(255), description varchar(255), rating float(2, 1));
/*
id is the primary key (column with unique values) for this table.
Each row contains information about the name of a movie, its genre, and its rating.
rating is a 2 decimal places float in the range [0, 10]
*/




-- ================================
-- Sample Input
-- ================================


insert into cinema (id, movie, description, rating) values ('1', 'War', 'great 3D', '8.9')
insert into cinema (id, movie, description, rating) values ('2', 'Science', 'fiction', '8.5')
insert into cinema (id, movie, description, rating) values ('3', 'irish', 'boring', '6.2')
insert into cinema (id, movie, description, rating) values ('4', 'Ice song', 'Fantacy', '8.6')
insert into cinema (id, movie, description, rating) values ('5', 'House card', 'Interesting', '9.1')


-- ================================
--  Problem
-- ================================


/*
Write a solution to report the movies with an odd-numbered ID and a description that is not "boring".

Return the result table ordered by rating in descending order.
*/


-- ================================
-- Solution
-- ================================


SELECT *
FROM Cinema
WHERE id % 2 <> 0
  AND description <> 'boring'
ORDER BY rating DESC;


-- ================================
-- Explanation
-- ================================


/*
We have three movies with odd-numbered IDs: 1, 3, and 5. The movie with ID = 3 is boring so we do not include it in the answer.
*/