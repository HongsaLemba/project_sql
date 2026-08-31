DROP TABLE IF EXISTS jOB_POSTINGS_EACH_MONTH;
CREATE TABLE jOB_POSTINGS_EACH_MONTH AS
SELECT 
    job_title_short AS title,
    COUNT(CASE WHEN EXTRACT(MONTH FROM job_posted_date) = 1 THEN 1 END) AS jan_postings,
    COUNT(CASE WHEN EXTRACT(MONTH FROM job_posted_date) = 2 THEN 1 END) AS feb_postings,
    COUNT(CASE WHEN EXTRACT(MONTH FROM job_posted_date) = 3 THEN 1 END) AS mar_postings,
    COUNT(CASE WHEN EXTRACT(MONTH FROM job_posted_date) = 4 THEN 1 END) AS apr_postings,
    COUNT(CASE WHEN EXTRACT(MONTH FROM job_posted_date) = 5 THEN 1 END) AS may_postings,
    COUNT(CASE WHEN EXTRACT(MONTH FROM job_posted_date) = 6 THEN 1 END) AS jun_postings,
    COUNT(CASE WHEN EXTRACT(MONTH FROM job_posted_date) = 7 THEN 1 END) AS jul_postings,
    COUNT(CASE WHEN EXTRACT(MONTH FROM job_posted_date) = 8 THEN 1 END) AS aug_postings,
    COUNT(CASE WHEN EXTRACT(MONTH FROM job_posted_date) = 9 THEN 1 END) AS sep_postings,
    COUNT(CASE WHEN EXTRACT(MONTH FROM job_posted_date) = 10 THEN 1 END) AS oct_postings,
    COUNT(CASE WHEN EXTRACT(MONTH FROM job_posted_date) = 11 THEN 1 END) AS nov_postings,
    COUNT(CASE WHEN EXTRACT(MONTH FROM job_posted_date) = 12 THEN 1 END) AS dec_postings
FROM 
    job_postings_fact
GROUP BY 
    job_title_short
ORDER BY 
    title;