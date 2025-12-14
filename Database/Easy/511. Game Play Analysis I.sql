-- ================================
-- Tables Structure
-- ================================


CREATE TABLE Activity (
    player_id INT PRIMARY KEY,
    device_id int,
    event_date date PRIMARY key,
    games_played int
);
/*
(player_id, event_date) is the primary key (combination of columns with unique values) of this table.
This table shows the activity of players of some games.
Each row is a record of a player who logged in and played a number of games (possibly 0) before logging out on someday using some device.
*/


-- ================================
-- Sample Input
-- ================================


INSERT INTO Activity (player_id, device_id, event_date, games_played) VALUES
('1', '2', '2016-03-01', '5'),
('1', '2', '2016-05-02', '6'),
('2', '3', '2017-06-25', '1'),
('3', '1', '2016-03-02', '0'),
('3', '4', '2018-07-03', '5');


-- ================================
--  Problem
-- ================================


/*
Write a solution to find the first login date for each player.
Return the result table in any order.
*/


-- ================================
-- Solution
-- ================================


SELECT 
    player_id,
    MIN(event_date) AS first_login
FROM Activity
GROUP BY player_id;

