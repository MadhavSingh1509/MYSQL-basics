# Write your MySQL query statement below
-- SELECT 
--     ROUND(
--         COUNT(a.player_id) / COUNT(f.player_id),
--         2
--     ) AS fraction
-- FROM (
--     SELECT
--         player_id,
--         MIN(event_date) AS first_date
--     FROM Activity
--     GROUP BY player_id
-- ) f
-- LEFT JOIN Activity a
--     ON f.player_id = a.player_id
--     AND a.event_date = DATE_ADD(f.first_date, INTERVAL 1 DAY);


  
select round (
    count(a.player_id)/count(f.player_id) ,2
) as fraction
from (
select player_id,
min(event_date) as first_date
from Activity
group by player_id

) as f
left join  Activity as a
on a.player_id=f.player_id 
and a.event_date=DATE_ADD(f.first_date,  interval 1 day);