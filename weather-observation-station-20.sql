-- https://www.hackerrank.com/challenges/weather-observation-station-20/problem?isFullScreen=true
WITH stations as 
(SELECT
    lat_n, 
    ROW_NUMBER() OVER (ORDER BY LAT_N) num
FROM station)

SELECT
 round(avg(LAT_N), 4)
FROM stations
WHERE num IN ((SELECT ceil(count(*)/2) FROM station), (SELECT floor(count(*)/2)+1 FROM station))
;


-- 83.8913