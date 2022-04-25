-- https://www.hackerrank.com/challenges/interviews/problem?isFullScreen=true


-- SELECT
    c.contest_id,
    c.hacker_id,
    c.name,
    sum(ss.total_submissions) total_submissions, 
    -- sum(ss.total_accepted_submissions) total_accepted_submission, 
    -- sum(vs.total_views) total_views,
    -- sum(vs.total_unique_views) total_unique_views
FROM contests c
join colleges co using contest_id
LEFT JOIN challenges ch using college_id
-- LEFT JOIN Submission_Stats ss using challenge_id
-- LEFT JOIN View_Stats vs using challenge_id
GROUP BY c.contest_id
-- HAVING total_submissions!=0 and total_accepted_submission!=0 and total_views!=0 and total_unique_views!=0
-- ORDER BY contest_id
;