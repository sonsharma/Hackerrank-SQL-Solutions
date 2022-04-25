-- https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true

SELECT 
    concat(name, "(", left(occupation, 1), ")") 
 FROM Occupations 
 ORDER BY name;
 
SELECT 
    concat("There are a total of ", count(*), " ", lower(occupation), "s.")
 FROM Occupations
 GROUP BY occupation
 ORDER BY count(*), occupation
 ;