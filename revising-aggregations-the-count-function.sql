-- https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem?isFullScreen=true

SELECT
    count(*)
FROM city
where population > 100000
;