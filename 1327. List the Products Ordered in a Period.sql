-- Write your MySQL query statement below
SELECT p.product_name, sum(o.unit) AS unit
FROM Products p
LEFT JOIN Orders o
on p.product_id = o.product_id
WHERE order_date between '2020-02-01' and '2020-02-29' 
GROUP BY o.product_id
HAVING SUM(o.unit) >= '100'