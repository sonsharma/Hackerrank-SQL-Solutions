-- https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=true

SELECT
    sum(ci.population)
FROM city ci
JOIN country co on ci.countrycode = co.code
WHERE co.continent = 'Asia'
;