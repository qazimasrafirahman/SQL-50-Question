-- Turn er serial e weight ke cumulative sum korte hobe
-- OVER(ORDER BY kon column) use korte window function(sum, avg, rank) lage 


-- Write your MySQL query statement below
WITH cte AS 
(
SELECT person_name,weight,turn,
SUM(weight) OVER(ORDER BY turn) as total 
from Queue
)

SELECT person_name
FROM cte 
WHERE total <= 1000
ORDER BY total desc
LIMIT 1