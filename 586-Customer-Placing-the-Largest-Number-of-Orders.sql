-- WITH t AS (
--     SELECT customer_number, COUNT(order_number) AS freq
--     FROM Orders
--     GROUP BY customer_number
-- )
-- SELECT customer_number
-- FROM t
-- WHERE freq = (SELECT MAX(freq) FROM t);

select customer_number from 
Orders
group by customer_number
order by count(order_number) desc 
limit 1