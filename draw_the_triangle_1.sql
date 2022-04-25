-- https://www.hackerrank.com/challenges/draw-the-triangle-1/problem?isFullScreen=true

SET @R = 21;
SELECT
    REPEAT('* ', @R := @R - 1)
FROM information_schema.tables
;