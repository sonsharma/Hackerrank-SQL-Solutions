-- https://www.hackerrank.com/challenges/the-company/problem?isFullScreen=true

SELECT
    c.company_code,
    founder,
    count(distinct(lm.lead_manager_code)),
    count(distinct(sm.senior_manager_code)),
    count(distinct(m.manager_code)),
    count(distinct(e.employee_code))
FROM Company c
    LEFT JOIN lead_manager lm USING(company_code)
    LEFT JOIN senior_manager sm ON lm.company_code = sm.company_code
    LEFT JOIN manager m ON m.company_code = sm.company_code 
    LEFT JOIN employee e ON e.company_code = m.company_code
GROUP BY c.company_code, founder
ORDER BY c.company_code
;
