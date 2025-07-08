SELECT user_id, name, mail
FROM Users
WHERE 
  mail REGEXP '^[a-zA-Z][a-zA-Z0-9._-]*@leetcode\\.com$'
  AND BINARY RIGHT(mail, 13) = '@leetcode.com';
