-- https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true

SELECT
    salary*months,
    count(*)
FROM Employee
WHERE salary*months = (SELECT
    max(salary*months)
FROM Employee)
GROUP BY 1
;