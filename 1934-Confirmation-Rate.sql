# Write your MySQL query statement below 
SELECT user_id,  
       ROUND(AVG(temp), 2) AS confirmation_rate 
FROM (
    SELECT s.user_id,  
           CASE 
               WHEN c.action = 'timeout' THEN 0 
               WHEN c.action = 'confirmed' THEN 1
               ELSE 0
           END AS temp 
    FROM Signups s 
    LEFT JOIN Confirmations c 
        ON s.user_id = c.user_id
) sub 
GROUP BY user_id;