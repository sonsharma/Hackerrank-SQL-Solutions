-- https://www.hackerrank.com/challenges/sql-projects/problem?isFullScreen=true

-- Find patterns in end_date (~find a project)
-- Take out start and end date for that project
-- Calculate # of days for each project, sort by # of days
-- Sort by start_date

WITH startDates as (SELECT row_number() OVER (ORDER BY start_date) rn, start_date 
                FROM projects WHERE start_date NOT IN (SELECT end_date FROM projects)),
endDates as (SELECT ROW_NUMBER() OVER (ORDER BY End_Date) rn, end_date
                FROM projects WHERE end_date NOT IN (SELECT start_date FROM projects))

SELECT start_date, end_date
FROM startDates JOIN endDates USING (rn)
GROUP BY start_date, end_date
ORDER BY datediff(end_date, start_date), start_date
;

-- Another solution

WITH startDates as (SELECT start_date 
                FROM projects WHERE start_date NOT IN (SELECT end_date FROM projects)),
endDates as (SELECT end_date
                FROM projects WHERE end_date NOT IN (SELECT start_date FROM projects))

SELECT start_date, min(end_date)
FROM startDates, endDates
WHERE start_date < end_date
GROUP BY start_date
ORDER BY datediff(min(end_date), start_date), start_date
;
