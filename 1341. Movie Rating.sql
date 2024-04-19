-- UNION: only keeps unique records. 
-- UNION ALL: keeps all records, including duplicates.

-- Write your MySQL query statement below

(SELECT u.name AS results
FROM Users u
INNER JOIN MovieRating m
ON u.user_id = m.user_id
group by u.name
order by count(m.rating) desc, name
limit 1
)

union all

(select m.title as result
from Movies m
inner join MovieRating mr
ON m.movie_id = mr.movie_id
where date_format(created_at, "%Y-%m") = "2020-02"
group by m.title
order by avg(mr.rating)desc, m.title
limit 1 
)