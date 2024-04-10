-- (^) start 
-- (*) noting
-- [a-zA-Z0-9).-]* sob kisu hote pare abar kono kisu nao hote pare
-- [] er moddhe specific letter/digt/symbol likha lage 
-- REGEXP_LIKE(column_name, 'condition')

--  Write your MySQL query statement below
SELECT * 
FROM Users 
WHERE REGEXP_LIKE(mail, '^[a-zA-Z][a-zA-Z0-9).-]*@leetcode[.]com')