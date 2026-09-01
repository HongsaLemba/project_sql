/*
QUESTION: what are the most optomal skills to leatn (aka it's in high demand and high_paying skills)?
- Identify skills in high demand and demand and associated with high average slaries for Data Analyst positions
- concentrates on temote position with specified salaries (remove null)
- Why? Targets skills that offer job security (high demand) and financial benefits (high salaries),
    offering strategic guidance for career development and skill acquisition in the data analytics field.
 */

WITH skill_demand AS (
SELECT 
    skills_dim.skill_id,
    skills_dim.skills,
    count(skills_job_dim.job_id) as demand_count
from job_postings_fact
INNER JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst'
    AND salary_year_avg is not NULL
    AND job_work_from_home = True
GROUP BY
    skills_dim.skill_id
), 
-- REMINDER: When there is multiple CTEs, there should be only 'one', with statement. 
-- And the CTEs should be separated by commas.
avg_salary AS (
SELECT 
    skills_job_dim.skill_id,
    ROUND(AVG(salary_year_avg),0) as avgerage_salary
from job_postings_fact
INNER JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst'
    AND salary_year_avg is not NULL
    AND job_work_from_home = True
GROUP BY
    skills_job_dim.skill_id
)

SELECT 
    skill_demand.skill_id,
    skill_demand.skills,
    skill_demand.demand_count,
    avg_salary.avgerage_salary
FROM skill_demand
INNER JOIN avg_salary on skill_demand.skill_id = avg_salary.skill_id
WHERE
    skill_demand.demand_count > 10
ORDER BY 
    avg_salary.avgerage_salary DESC,
    skill_demand.demand_count DESC
LIMIT 25



