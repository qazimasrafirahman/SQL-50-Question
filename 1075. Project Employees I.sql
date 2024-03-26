-- Write your MySQL query statement below
SELECT p.project_id, ROUND(AVG(e.experience_years), 2 ) AS average_years 
FROM Project p
LEFT JOIN Employee e
ON p.employee_id = e.employee_id
GROUP BY p.project_id




-- IMPORTANR NOTES
-- AVG FUN takes the total row of sum value (sum) and divides it by the total row (count) 
-- AVG FUN if the value is null then it automatically convert into 0

-- | project_id  | employee_id | employee_id | name   | experience_years |
-- | 1           | 1           | 1           | Khaled | 3     |  null   -> 0 
-- | 1           | 2           | 2           | Ali    | 2     |    2
-- | 1           | 3           | 3           | John   | 1     |    1
-- | 2           | 1           | 1           | Khaled | 3     |    1
-- | 2           | 4           | 4           | Doe    | 2     |    1