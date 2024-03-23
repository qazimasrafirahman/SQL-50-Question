-- CROSS JOIN Means (common uncommon all column asbe)(M X N = 4x3 -> 12)
-- left table 1st row er joono right table er all row
-- left table 2nd row er joono right table er all row

-- LEFT JOIN Means () 
-- left table er all column
-- right table er je column left table er sathe milbe shudhu oi ghula

-- Write your MySQL query statement below
SELECT s.student_id, s.student_name, sub.subject_name,
COUNT( ex.student_id ) AS attended_exams
FROM Students s
CROSS JOIN Subjects sub
LEFT JOIN Examinations ex
ON s.student_id = ex.student_id
and sub.subject_name = ex.subject_name
GROUP BY s.student_id, s.student_name, sub.subject_name 
ORDER BY s.student_id, sub.subject_name


