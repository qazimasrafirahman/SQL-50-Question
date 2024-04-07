-- LEAD (column, koyta row niche dekhbe, default value) over(ORDER BY Column)
-- LAG (column, koyta row upore dekhbe, default value) over (ORDER BY Column) 

-- Write your MySQL query statement below
WITH cte AS
(SELECT *, LEAD(num,1) OVER() AS next2, LEAD(num,2) OVER() as next3
FROM Logs)

SELECT DISTINCT num AS ConsecutiveNums 
FROM cte
WHERE num = next2 AND num = next3