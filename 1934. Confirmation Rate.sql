-- Left side table theke sob (row 4) asbe and jei value right table e nai seta null return korbe 
-- right side table theke (row 7 ) ta asbe because id multiple ase 

-- Write your MySQL query statement below
SELECT s.user_id, IFNULL( ROUND(SUM(c.action="confirmed") / COUNT(c.user_id) , 2)  , 0.00) as confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c
ON s.user_id  = c.user_id 
GROUP BY s.user_id
