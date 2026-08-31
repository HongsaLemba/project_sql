/* 
Identify the top 5 skills that are most frequnetly mentioned in job postings.
Use a subquery to find the skill ids with the highest counts in the skills_job_dim table and then join the result
with the skills_dim table to get the skill names. 
*/

WITH skill_name AS (
     SELECT 
     skill_id,
     COUNT(*) AS tOP_skills
     FROM
     skills_job_dim
     GROUP BY
     skill_id
)

SELECT 
	skills,
	skill_name.top_skills
from 
	skills_dim
LEFT JOIN 
     skill_name on skill_name.skill_id = skills_dim.skill_id
limit 5;