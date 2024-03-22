-- Left join korar somoy 
-- left table theke sob asbe
-- right table e na thakle sekhane NULL bosbse

# Write your MySQL query statement below
SELECT e.name, b.bonus
FROM Employee e
LEFT JOIN Bonus b
ON e.empId = b.empId 
WHERE b.bonus < 1000
OR b.bonus IS NULL