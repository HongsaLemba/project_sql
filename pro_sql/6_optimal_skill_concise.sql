SELECT
    skills_dim.skill_id,
    skills_dim.skills,
    COUNT(skills_job_dim.job_id) AS demand_count,
    ROUND(AVG(salary_year_avg), 0) AS average_salary
FROM job_postings_fact
INNER JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home = True
GROUP BY
    skills_dim.skill_id
HAVING
    COUNT(skills_job_dim.job_id) > 10
ORDER BY
    average_salary DESC,
    demand_count DESC
LIMIT 10;

/*
Summary Statistics:-

    Salary Range: $97,587 (javascript) to $115,320 (go)

    Median Salary: $102,605

    Demand Range: 11 postings (confluence, c++) to 236 postings (python)

    Median Demand: 21 postings

Key Takeaways:-

    The High-Volume Anchors: Python (236), Tableau (230), and R (148) dominate market volume, 
    maintaining solid six-figure compensation ($99k–$101k) despite heavy supply.

    The Modern Cloud Premium: Skills like Snowflake ($112,948), Azure ($111,225), and AWS ($108,317) 
    command a noticeable ~$10k+ salary premium over traditional BI tools.

    Looker Outpaces Tableau in Pay: While Tableau has much higher volume (230 vs. 49), 
    Looker averages higher compensation ($103,795 vs. $99,288), reflecting its adoption in modern data-stack startups and scale-ups.

    Engineering Overlap Commands Top Dollar: The highest-paying skills in this list—Go ($115,320), 
    Hadoop ($113,193), and Snowflake ($112,948)—sit at the boundary between data analytics and data engineering.

    Top-Right / Middle-Right: Core analytical stack (Python, Tableau, R) driving volume while staying near the $100k mark.




Top-Left: High-value cloud and big data tools (Snowflake, Azure, AWS, Hadoop, Go) commanding the top salary tier between $108k and $115k. 
*/