-- Write your MySQL query statement below
SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (SELECT MAX(salary)
FROM Employee 
)


-- OFFSET 1 -> Skip First Row
-- Limit 1 -> return first row

-- Alternatinve solution 
SELECT (SELECT DISTINCT salary
FROM Employee
ORDER BY salary DESC 
limit 1 
OFFSET 1) AS SecondHighestSalary;
