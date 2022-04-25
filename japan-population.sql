-- https://www.hackerrank.com/challenges/japan-population/problem?isFullScreen=true

SELECT
    sum(population)
FROM city
WHERE countrycode = 'JPN'
;