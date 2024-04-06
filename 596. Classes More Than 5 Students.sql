-- Aggrigate fun use korle HAVING caluse use kora lage ✅
-- Aggrigate fun use korle WHERE caluse use hoi na ❌ 

--  Write your MySQL query statement below
SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(student) >= 5