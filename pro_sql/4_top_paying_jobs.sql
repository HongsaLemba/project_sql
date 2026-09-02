/*
QUESTION: What are the top skills based on salary?
- Look at the average salary assosiated with each skill for Data Analyst positions
- Focuses on reles with specified salaries, regardless of location
- Why? It reveals how different skills impact salary levels for Data Analysts and 
    helps identify the most finanacially rewarding skills to acquire or improve
*/

SELECT 
    skills,
    ROUND(AVG(salary_year_avg),0) as avg_salary
from job_postings_fact
INNER JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst' AND
    salary_year_avg is not NULL
    AND job_work_from_home = True
GROUP BY
    skills
ORDER BY
    avg_salary DESC
LIMIT 25;

/*
Key Takeaways:-

Niche Scarcity Drives the Highest Pay: Blockchain/smart contract development (Solidity, $179k) 
and specialized databases (Couchbase, $160.5k) command top premiums due to talent scarcity.

Legacy Outlier Distortion: SVN ($400k) is a distinct outlier, 
typically reflecting rare enterprise/finance legacy systems tied to high-level executive or principal roles.

Deep Learning Convergence: Major AI frameworks (MXNet, Keras, PyTorch, Hugging Face, TensorFlow) 
cluster tightly between $120k and $149k.

Cloud & CI/CD Infrastructure Premium: Skills bridging analytics with infrastructure (Terraform, VMware, GitLab) 
consistently surpass traditional BI tools in average compensation. 
*/