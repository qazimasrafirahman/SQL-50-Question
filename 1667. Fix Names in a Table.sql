-- SUBSTRING(Col_name, start, end)
-- name index start -> 1 and end length(name) -1 

--  Write your MySQL query statement below
SELECT user_id,
CONCAT(UPPER(SUBSTRING(name, 1,1)), LOWER(SUBSTRING(name, 2, length(name) -1))) AS name
from Users
ORDER BY user_id
