-- Write your MySQL query statement below
select 
"Low Salary" AS category,
count(*) AS accounts_count
from Accounts 
where income < '20000'
union 
select
"Average Salary" AS category, count(*) AS accounts_count
from Accounts 
where income >= '20000' and income <= '50000'
UNION
select 
"High Salary" AS category,
count(*) AS accounts_count
from Accounts 
where income > '50000'