-- In SQL, the ORDER BY clause is used to sort the result set of a query based on one or more columns. You can specify ascending (ASC) or descending (DESC) order for each column.


-- Write your MySQL query statement below
select distinct author_id as id
from Views 
where author_id = viewer_id 
order by author_id asc