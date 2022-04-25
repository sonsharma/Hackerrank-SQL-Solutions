-- https://www.hackerrank.com/challenges/symmetric-pairs/problem?isFullScreen=true

WITH cte as (SELECT x as x, y as y FROM functions
    UNION ALL
    SELECT y as x, x as y FROM functions),
    
    cte2 as (SELECT
             x, y, count(*) as cnt
            FROM cte
            GROUP BY x, y
             HAVING cnt >=2 and x < y or (cnt > 2 and x = y)
            ORDER BY x)

select x, y from cte2;