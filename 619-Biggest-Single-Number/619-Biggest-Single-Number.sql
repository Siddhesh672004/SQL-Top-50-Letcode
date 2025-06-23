# Write your MySQL query statement 
SELECT max(num) as num
FROM MyNumbers
WHERE num IN (
    SELECT num 
    FROM MyNumbers
    GROUP BY num
    HAVING count(num) = 1
)