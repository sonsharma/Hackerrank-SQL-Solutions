-- https://www.hackerrank.com/challenges/the-report/problem?isFullScreen=true

SELECT
    if(grade < 8, "NULL", name) names,
    grade,
    marks
FROM students LEFT JOIN grades ON marks >= min_mark and marks <= max_mark
ORDER BY grade desc, names, marks
;