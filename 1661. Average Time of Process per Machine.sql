--  Write your MySQL query statement below
-- JOIN | INNER JOIN means same table e row compare 

SELECT a.machine_id, ROUND( AVG(b.timestamp  - a.timestamp ) , 3) AS processing_time 
FROM Activity a
JOIN Activity b
ON a.machine_id = b.machine_id
AND a.process_id = b.process_id
AND a.timestamp < b.timestamp
GROUP BY a.machine_id
