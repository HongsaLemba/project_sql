SELECT DISTINCT ON  (cd.name)
    cd.name AS company_name,
    jpf.job_posted_date,
    jpf.job_health_insurance
FROM job_postings_fact AS jpf
INNER JOIN company_dim AS cd
    ON jpf.company_id = cd.company_id
WHERE
    jpf.job_health_insurance IS TRUE
    AND jpf.job_posted_date >= '2023-04-01'
    AND jpf.job_posted_date <= '2023-06-30'
ORDER BY cd.name, jpf.job_posted_date DESC;