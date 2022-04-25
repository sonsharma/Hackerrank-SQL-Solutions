-- https://www.hackerrank.com/challenges/african-cities/problem?isFullScreen=true

SELECT
    ci.name
FROM city ci
JOIN country co on ci.countrycode = co.code
WHERE co.continent = 'Africa'
;