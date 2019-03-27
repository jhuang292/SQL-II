# Write your MySQL query statement below
SELECT MAX(tb.num) AS num
FROM (
        SELECT *
        FROM my_numbers n
        GROUP BY n.num
        HAVING COUNT(n.num) = 1
        ) tb;
