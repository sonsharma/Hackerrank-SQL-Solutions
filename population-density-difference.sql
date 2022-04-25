-- https://www.hackerrank.com/challenges/population-density-difference/problem?isFullScreen=true

SELECT
    max(population) - min(population)
FROM city
;