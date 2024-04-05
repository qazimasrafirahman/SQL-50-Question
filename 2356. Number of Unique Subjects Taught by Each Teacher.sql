-- DISTINCT hole different value koibar ase ta count kore
-- MULTIPLE time same value paile o 1 bar e count kore

-- Write your MySQL query statement below
SELECT teacher_id, COUNT(DISTINCT subject_id) AS cnt
FROM Teacher
GROUP BY teacher_id