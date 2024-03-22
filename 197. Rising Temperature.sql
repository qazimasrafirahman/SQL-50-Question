-- DATEDIFF means (Date 1 - Date 2)
-- JOIN -----> INNER JOIN same
-- Write your MySQL query statement below

SELECT w2.id
FROM Weather w1
JOIN Weather w2
WHERE DATEDIFF( w1.recordDate , w2.recordDate ) = -1 
AND w2.temperature  > w1.temperature 