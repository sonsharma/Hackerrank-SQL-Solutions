-- https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem?isFullScreen=true

SELECT
    avg(population)
FROM city
WHERE district = 'California'
;