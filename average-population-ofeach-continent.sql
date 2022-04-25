-- https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?isFullScreen=true

SELECT
    co.continent continent,
    floor(avg(ci.population)) total_population
FROM country co
LEFT JOIN city ci ON co.code = ci.countrycode
GROUP BY co.continent
HAVING IFNULL(floor(avg(ci.population)), 1)<>1
;