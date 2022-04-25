-- https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true

(SELECT
    city,
    length(city)
FROM Station
WHERE length(city)=(SELECT min(length(city)) FROM station)
ORDER BY 1
LIMIT 1)
UNION 
(SELECT
    city,
    length(city)
FROM Station
WHERE length(city)=(SELECT max(length(city)) FROM station)
ORDER BY 1
LIMIT 1)
;