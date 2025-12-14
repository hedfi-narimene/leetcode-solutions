-- ================================
-- Tables Structure
-- ================================


CREATE TABLE  ActorDirector (actor_id int, director_id int, timestamp int);
/*
timestamp is the primary key (column with unique values) for this table.
*/


-- ================================
-- Sample Input
-- ================================


insert into ActorDirector (actor_id, director_id, timestamp) values ('1', '1', '0')
insert into ActorDirector (actor_id, director_id, timestamp) values ('1', '1', '1')
insert into ActorDirector (actor_id, director_id, timestamp) values ('1', '1', '2')
insert into ActorDirector (actor_id, director_id, timestamp) values ('1', '2', '3')
insert into ActorDirector (actor_id, director_id, timestamp) values ('1', '2', '4')
insert into ActorDirector (actor_id, director_id, timestamp) values ('2', '1', '5')
insert into ActorDirector (actor_id, director_id, timestamp) values ('2', '1', '6')


-- ================================
--  Problem
-- ================================


/*
Write a solution to find all the pairs (actor_id, director_id) where the actor has cooperated with the director at least three times.

Return the result table in any order.
*/


-- ================================
-- Solution
-- ================================


SELECT actor_id, director_id
FROM ActorDirector
GROUP BY actor_id, director_id
HAVING COUNT(*) >= 3;


-- ================================
-- Explanation
-- ================================


/*
The only pair is (1, 1) where they cooperated exactly 3 times.
*/