-- GROUP_CONCAT -> 1 ta column e multiple row concat korte 
-- GROUP_CONCAT (column_name ORDERY BY column_name ASC | DESC ) 
-- GROUP_CONCAT most use hoi GROUP BY keyword er loge 

-- Write your MySQL query statement below
SELECT sell_date, COUNT(DISTINCT product)num_sold, 
GROUP_CONCAT(DISTINCT product ORDER BY product ASC ) AS products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date