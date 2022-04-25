-- https://www.hackerrank.com/challenges/placements/problem?isFullScreen=true

SELECT
    name
FROM Students s
    LEFT JOIN Friends f USING (ID)
    LEFT JOIN Packages p1 ON s.ID = p1.ID
    LEFT JOIN Packages p2 ON f.friend_id = p2.ID
WHERE p1.salary < p2.salary
ORDER BY p2.salary
;p