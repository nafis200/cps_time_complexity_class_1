CREATE TABLE Activity (
    player_id INT,
    device_id INT,
    event_date DATE,
    games_played INT
);


INSERT INTO Activity (player_id, device_id, event_date, games_played) VALUES
(1, 2, '2016-03-01', 5),
(1, 2, '2016-05-02', 6),
(2, 3, '2017-06-25', 1),
(3, 1, '2016-03-02', 0),
(3, 4, '2018-07-03', 5);

-- SELECT a.player_id, a.event_date,a2.player_id,a2.event_date
-- FROM Activity a
-- LEFT JOIN Activity a2
-- ON a.player_id = a2.player_id
-- AND a.event_date > a2.event_date
 

SELECT a.player_id, a.event_date as "first_login"
FROM Activity a
LEFT JOIN Activity a2
ON a.player_id = a2.player_id
AND a.event_date > a2.event_date
WHERE a2.event_date IS NULL


SELECT player_id,Min(event_date) as "first_login" FROM Activity GROUP BY player_id ORDER BY player_id ASC;
 

select player_id, event_date as "first_login" from Activity as a WHERE event_date = (
    SELECT MIN(event_date) FROM Activity WHERE a.player_id = Activity.player_id
)


 