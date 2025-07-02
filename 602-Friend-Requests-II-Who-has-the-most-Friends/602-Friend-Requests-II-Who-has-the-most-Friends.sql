SELECT id, COUNT(*) as num
FROM (
    SELECT requester_id AS id
    FROM RequestAccepted

    UNION ALL

    SELECT accepter_id
    FROM RequestAccepted
) AS RequestCount
GROUP BY id
ORDER BY num DESC
LIMIT 1
