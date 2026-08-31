SELECT 
    job_id,
    job_title,
    salary_year_avg,
    search_location,
    CASE
        WHEN salary_year_avg is NULL THEN 'Not_specified'
        WHEN salary_year_avg > 100000 THEN 'High'
        WHEN salary_year_avg BETWEEN 50000 AND 100000 THEN 'Standard'
        ELSE 'Low'
    END AS salary_category
FROM 
    job_postings_fact
WHERE 
    job_title_short = 'Data Analyst'
GROUP BY 
    job_id,
    job_title,
    salary_year_avg,
    search_location
ORDER BY 
    salary_year_avg DESC;