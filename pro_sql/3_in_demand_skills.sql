/*
QUESTION: What are the in_demand skills for data analysts?
- Join job postings to inner join tabe similar to query 2
- Identify the top 5 in_demand skills for a data analyst.
- Focus on all job postings.
- Why? Retrieves the top 5 skills with the highest demand in the job market,
    providing insights into the most valuable skills for job seekers
*/

SELECT 
    skills,
    count(skills_job_dim.job_id) as demand_count
from job_postings_fact
INNER JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst'
GROUP BY
    skills
ORDER BY
    demand_count DESC
LIMIT 5;

/*
Key Insights:-

SQL is the Absolute Baseline: With over 92.6k mentions, 
SQL leads all skills by a wide margin—appearing in nearly 38% more listings than Excel and 61% more than Python.

Spreadsheets Remain Vital: Despite the rise of programmatic data analysis, Excel (67,031) ranks second overall, 
proving that core ad-hoc analysis and reporting tools are still indispensable across organizations.

Programming Automation: Python (57,326) firmly establishes itself as the primary scripting and statistical language for analysts, 
significantly outpacing other languages in raw demand.

Visualization Split (Tableau vs. Power BI): Combined BI tools account for 86,022 postings (~28.4% of top demand). 
Tableau holds a slight lead over Power BI by roughly 18% (46.5k vs. 39.5k). 
*/