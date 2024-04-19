-- ^ begning of the string
-- $ end of the stirng
-- [.] match of .(semicolone)

-- Write code
SELECT * 
FROM Users 
WHERE REGEXP_LIKE(mail, '^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode[.]com$')