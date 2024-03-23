-- WHERE keyword GROUP BY er age(left e) use kroa hoi 
-- HAVING keyword GROUP BY er pore(right e) use kora hoi

-- Write your MySQL query statement below
SELECT e1.name
FROM Employee e1
INNER JOIN Employee e2
ON e1.id = e2.managerId
GROUP BY e2.managerId
HAVING COUNT(e2.managerId ) >= 5