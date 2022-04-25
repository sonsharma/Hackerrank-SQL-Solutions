-- https://www.hackerrank.com/challenges/the-blunder/problem?isFullScreen=true

SELECT
    ceil(avg(salary) - avg(replace(salary, 0, "")))
FROM employees
;


SELECT
    ceil(avg(salary) - avg(CAST(replace(CAST(salary as char), 0, "") as decimal)))
FROM employees
;