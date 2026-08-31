/* 
Question: What skills are required for the top_paying data_analyst jobs?
- Use the top 10 highest_paying Data ANalyst jobs from first query
- And the specific skills required for these roles
- Why? It provides a detailed look at which high_paying jobs demand certain skills,
  helping job seekers understand which skill to deveop that align wiht top salaried
*/

with top_paying_jobs as (
    SELECT
        job_id,
        job_title,
        salary_year_avg,
        name as company_name
    FROM
        job_postings_fact
    LEFT JOIN company_dim on job_postings_fact.company_id = company_dim.company_id
    WHERE
        job_title_short = 'Data Analyst' AND 
        job_location = 'Anywhere' AND
        salary_year_avg is not NULL
    ORDER BY
        salary_year_avg DESC
)

SELECT 
    top_paying_jobs.*,
    skills
from top_paying_jobs
INNER JOIN skills_job_dim on top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY
    salary_year_avg DESC

/*
After analysing i got the results below:-
Key Insights
    SQL is the most essential skill — required by 100% of the postings.
    Python is highly demanded — required by 87.5% of postings.
    Tableau leads the BI tools — appearing in 75% of postings.
    R remains relevant — requested by 50% of postings.
    Excel and Pandas appear in 37.5% of postings each.
    Snowflake is the most prominent modern data-warehouse technology in the sample.
    AWS and Azure indicate growing demand for cloud-data knowledge.
    Power BI appears less frequently than Tableau in this particular dataset.
    Senior roles tend to combine analytics + BI + cloud + database + engineering tools, indicating that higher-level Data Analyst positions increasingly require a broader technical stack.
    Overall Skill Pattern

SQL → Python → Tableau → R/Pandas → Cloud & Data Warehousing

Main takeaway: 
    The 2023 high-paying Data Analyst roles in this sample were not limited to reporting and Excel. 
    They increasingly required a combination of SQL, programming, visualization, and modern data-platform skills.

jason result:-
[
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "sql"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "python"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "r"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "azure"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "databricks"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "aws"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "pandas"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "pyspark"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "jupyter"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "excel"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "tableau"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "power bi"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "powerpoint"
  },
  {
    "job_id": 99305,
    "job_title": "Data Analyst, Marketing",
    "salary_year_avg": "232423.0",
    "company_name": "Pinterest Job Advertisements",
    "skills": "sql"
  },
  {
    "job_id": 99305,
    "job_title": "Data Analyst, Marketing",
    "salary_year_avg": "232423.0",
    "company_name": "Pinterest Job Advertisements",
    "skills": "python"
  },
  {
    "job_id": 99305,
    "job_title": "Data Analyst, Marketing",
    "salary_year_avg": "232423.0",
    "company_name": "Pinterest Job Advertisements",
    "skills": "r"
  },
  {
    "job_id": 99305,
    "job_title": "Data Analyst, Marketing",
    "salary_year_avg": "232423.0",
    "company_name": "Pinterest Job Advertisements",
    "skills": "hadoop"
  },
  {
    "job_id": 99305,
    "job_title": "Data Analyst, Marketing",
    "salary_year_avg": "232423.0",
    "company_name": "Pinterest Job Advertisements",
    "skills": "tableau"
  },
  {
    "job_id": 1021647,
    "job_title": "Data Analyst (Hybrid/Remote)",
    "salary_year_avg": "217000.0",
    "company_name": "Uclahealthcareers",
    "skills": "sql"
  },
  {
    "job_id": 1021647,
    "job_title": "Data Analyst (Hybrid/Remote)",
    "salary_year_avg": "217000.0",
    "company_name": "Uclahealthcareers",
    "skills": "crystal"
  },
  {
    "job_id": 1021647,
    "job_title": "Data Analyst (Hybrid/Remote)",
    "salary_year_avg": "217000.0",
    "company_name": "Uclahealthcareers",
    "skills": "oracle"
  },
  {
    "job_id": 1021647,
    "job_title": "Data Analyst (Hybrid/Remote)",
    "salary_year_avg": "217000.0",
    "company_name": "Uclahealthcareers",
    "skills": "tableau"
  },
  {
    "job_id": 1021647,
    "job_title": "Data Analyst (Hybrid/Remote)",
    "salary_year_avg": "217000.0",
    "company_name": "Uclahealthcareers",
    "skills": "flow"
  },
  {
    "job_id": 168310,
    "job_title": "Principal Data Analyst (Remote)",
    "salary_year_avg": "205000.0",
    "company_name": "SmartAsset",
    "skills": "sql"
  },
  {
    "job_id": 168310,
    "job_title": "Principal Data Analyst (Remote)",
    "salary_year_avg": "205000.0",
    "company_name": "SmartAsset",
    "skills": "python"
  },
  {
    "job_id": 168310,
    "job_title": "Principal Data Analyst (Remote)",
    "salary_year_avg": "205000.0",
    "company_name": "SmartAsset",
    "skills": "go"
  },
  {
    "job_id": 168310,
    "job_title": "Principal Data Analyst (Remote)",
    "salary_year_avg": "205000.0",
    "company_name": "SmartAsset",
    "skills": "snowflake"
  },
  {
    "job_id": 168310,
    "job_title": "Principal Data Analyst (Remote)",
    "salary_year_avg": "205000.0",
    "company_name": "SmartAsset",
    "skills": "pandas"
  },
  {
    "job_id": 168310,
    "job_title": "Principal Data Analyst (Remote)",
    "salary_year_avg": "205000.0",
    "company_name": "SmartAsset",
    "skills": "numpy"
  },
  {
    "job_id": 168310,
    "job_title": "Principal Data Analyst (Remote)",
    "salary_year_avg": "205000.0",
    "company_name": "SmartAsset",
    "skills": "excel"
  },
  {
    "job_id": 168310,
    "job_title": "Principal Data Analyst (Remote)",
    "salary_year_avg": "205000.0",
    "company_name": "SmartAsset",
    "skills": "tableau"
  },
  {
    "job_id": 168310,
    "job_title": "Principal Data Analyst (Remote)",
    "salary_year_avg": "205000.0",
    "company_name": "SmartAsset",
    "skills": "gitlab"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "sql"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "python"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "azure"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "aws"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "oracle"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "snowflake"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "tableau"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "power bi"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "sap"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "jenkins"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "bitbucket"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "atlassian"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "jira"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "confluence"
  },
  {
    "job_id": 310660,
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "salary_year_avg": "189000.0",
    "company_name": "Motional",
    "skills": "sql"
  },
  {
    "job_id": 310660,
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "salary_year_avg": "189000.0",
    "company_name": "Motional",
    "skills": "python"
  },
  {
    "job_id": 310660,
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "salary_year_avg": "189000.0",
    "company_name": "Motional",
    "skills": "r"
  },
  {
    "job_id": 310660,
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "salary_year_avg": "189000.0",
    "company_name": "Motional",
    "skills": "git"
  },
  {
    "job_id": 310660,
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "salary_year_avg": "189000.0",
    "company_name": "Motional",
    "skills": "bitbucket"
  },
  {
    "job_id": 310660,
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "salary_year_avg": "189000.0",
    "company_name": "Motional",
    "skills": "atlassian"
  },
  {
    "job_id": 310660,
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "salary_year_avg": "189000.0",
    "company_name": "Motional",
    "skills": "jira"
  },
  {
    "job_id": 310660,
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "salary_year_avg": "189000.0",
    "company_name": "Motional",
    "skills": "confluence"
  },
  {
    "job_id": 1749593,
    "job_title": "Principal Data Analyst",
    "salary_year_avg": "186000.0",
    "company_name": "SmartAsset",
    "skills": "sql"
  },
  {
    "job_id": 1749593,
    "job_title": "Principal Data Analyst",
    "salary_year_avg": "186000.0",
    "company_name": "SmartAsset",
    "skills": "python"
  },
  {
    "job_id": 1749593,
    "job_title": "Principal Data Analyst",
    "salary_year_avg": "186000.0",
    "company_name": "SmartAsset",
    "skills": "go"
  },
  {
    "job_id": 1749593,
    "job_title": "Principal Data Analyst",
    "salary_year_avg": "186000.0",
    "company_name": "SmartAsset",
    "skills": "snowflake"
  },
  {
    "job_id": 1749593,
    "job_title": "Principal Data Analyst",
    "salary_year_avg": "186000.0",
    "company_name": "SmartAsset",
    "skills": "pandas"
  },
  {
    "job_id": 1749593,
    "job_title": "Principal Data Analyst",
    "salary_year_avg": "186000.0",
    "company_name": "SmartAsset",
    "skills": "numpy"
  },
  {
    "job_id": 1749593,
    "job_title": "Principal Data Analyst",
    "salary_year_avg": "186000.0",
    "company_name": "SmartAsset",
    "skills": "excel"
  },
  {
    "job_id": 1749593,
    "job_title": "Principal Data Analyst",
    "salary_year_avg": "186000.0",
    "company_name": "SmartAsset",
    "skills": "tableau"
  },
  {
    "job_id": 1749593,
    "job_title": "Principal Data Analyst",
    "salary_year_avg": "186000.0",
    "company_name": "SmartAsset",
    "skills": "gitlab"
  },
  {
    "job_id": 387860,
    "job_title": "ERM Data Analyst",
    "salary_year_avg": "184000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 387860,
    "job_title": "ERM Data Analyst",
    "salary_year_avg": "184000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 387860,
    "job_title": "ERM Data Analyst",
    "salary_year_avg": "184000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 987523,
    "job_title": "Azure Data Python Consultant - contract to HIRE - Citizen or Perm...",
    "salary_year_avg": "170000.0",
    "company_name": "Kelly Science, Engineering, Technology & Telecom",
    "skills": "sql"
  },
  {
    "job_id": 987523,
    "job_title": "Azure Data Python Consultant - contract to HIRE - Citizen or Perm...",
    "salary_year_avg": "170000.0",
    "company_name": "Kelly Science, Engineering, Technology & Telecom",
    "skills": "python"
  },
  {
    "job_id": 987523,
    "job_title": "Azure Data Python Consultant - contract to HIRE - Citizen or Perm...",
    "salary_year_avg": "170000.0",
    "company_name": "Kelly Science, Engineering, Technology & Telecom",
    "skills": "azure"
  },
  {
    "job_id": 987523,
    "job_title": "Azure Data Python Consultant - contract to HIRE - Citizen or Perm...",
    "salary_year_avg": "170000.0",
    "company_name": "Kelly Science, Engineering, Technology & Telecom",
    "skills": "databricks"
  },
  {
    "job_id": 987523,
    "job_title": "Azure Data Python Consultant - contract to HIRE - Citizen or Perm...",
    "salary_year_avg": "170000.0",
    "company_name": "Kelly Science, Engineering, Technology & Telecom",
    "skills": "power bi"
  },
  {
    "job_id": 1352513,
    "job_title": "REMOTE Director of Data Analytics",
    "salary_year_avg": "170000.0",
    "company_name": "A-Line Staffing Solutions",
    "skills": "sql"
  },
  {
    "job_id": 1352513,
    "job_title": "REMOTE Director of Data Analytics",
    "salary_year_avg": "170000.0",
    "company_name": "A-Line Staffing Solutions",
    "skills": "python"
  },
  {
    "job_id": 1352513,
    "job_title": "REMOTE Director of Data Analytics",
    "salary_year_avg": "170000.0",
    "company_name": "A-Line Staffing Solutions",
    "skills": "azure"
  },
  {
    "job_id": 1781684,
    "job_title": "DTCC Data Analyst",
    "salary_year_avg": "170000.0",
    "company_name": "Robert Half",
    "skills": "java"
  },
  {
    "job_id": 1781684,
    "job_title": "DTCC Data Analyst",
    "salary_year_avg": "170000.0",
    "company_name": "Robert Half",
    "skills": "go"
  },
  {
    "job_id": 1781684,
    "job_title": "DTCC Data Analyst",
    "salary_year_avg": "170000.0",
    "company_name": "Robert Half",
    "skills": "excel"
  },
  {
    "job_id": 1525451,
    "job_title": "Manager, Data Analyst",
    "salary_year_avg": "167000.0",
    "company_name": "Uber",
    "skills": "sql"
  },
  {
    "job_id": 1525451,
    "job_title": "Manager, Data Analyst",
    "salary_year_avg": "167000.0",
    "company_name": "Uber",
    "skills": "python"
  },
  {
    "job_id": 1525451,
    "job_title": "Manager, Data Analyst",
    "salary_year_avg": "167000.0",
    "company_name": "Uber",
    "skills": "r"
  },
  {
    "job_id": 1525451,
    "job_title": "Manager, Data Analyst",
    "salary_year_avg": "167000.0",
    "company_name": "Uber",
    "skills": "swift"
  },
  {
    "job_id": 1525451,
    "job_title": "Manager, Data Analyst",
    "salary_year_avg": "167000.0",
    "company_name": "Uber",
    "skills": "excel"
  },
  {
    "job_id": 1525451,
    "job_title": "Manager, Data Analyst",
    "salary_year_avg": "167000.0",
    "company_name": "Uber",
    "skills": "tableau"
  },
  {
    "job_id": 1525451,
    "job_title": "Manager, Data Analyst",
    "salary_year_avg": "167000.0",
    "company_name": "Uber",
    "skills": "looker"
  },
  {
    "job_id": 1246069,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Plexus Resource Solutions",
    "skills": "python"
  },
  {
    "job_id": 1246069,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Plexus Resource Solutions",
    "skills": "mysql"
  },
  {
    "job_id": 1246069,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Plexus Resource Solutions",
    "skills": "aws"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "matlab"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "pandas"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 618890,
    "job_title": "Principal Data Intelligence Analyst - Cardiac - Remote",
    "salary_year_avg": "163500.0",
    "company_name": "CEDARS-SINAI",
    "skills": "sas"
  },
  {
    "job_id": 618890,
    "job_title": "Principal Data Intelligence Analyst - Cardiac - Remote",
    "salary_year_avg": "163500.0",
    "company_name": "CEDARS-SINAI",
    "skills": "go"
  },
  {
    "job_id": 618890,
    "job_title": "Principal Data Intelligence Analyst - Cardiac - Remote",
    "salary_year_avg": "163500.0",
    "company_name": "CEDARS-SINAI",
    "skills": "crystal"
  },
  {
    "job_id": 618890,
    "job_title": "Principal Data Intelligence Analyst - Cardiac - Remote",
    "salary_year_avg": "163500.0",
    "company_name": "CEDARS-SINAI",
    "skills": "tableau"
  },
  {
    "job_id": 618890,
    "job_title": "Principal Data Intelligence Analyst - Cardiac - Remote",
    "salary_year_avg": "163500.0",
    "company_name": "CEDARS-SINAI",
    "skills": "sas"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "sql"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "python"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "scala"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "r"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "mysql"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "postgresql"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "couchbase"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "azure"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "databricks"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "aws"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "redshift"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "oracle"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "snowflake"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "watson"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "pyspark"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "airflow"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "linux"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "tableau"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "ssis"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "cognos"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "visio"
  },
  {
    "job_id": 182813,
    "job_title": "Principal Data Analyst",
    "salary_year_avg": "160000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 182813,
    "job_title": "Principal Data Analyst",
    "salary_year_avg": "160000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 182813,
    "job_title": "Principal Data Analyst",
    "salary_year_avg": "160000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 182813,
    "job_title": "Principal Data Analyst",
    "salary_year_avg": "160000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 182813,
    "job_title": "Principal Data Analyst",
    "salary_year_avg": "160000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql server"
  },
  {
    "job_id": 182813,
    "job_title": "Principal Data Analyst",
    "salary_year_avg": "160000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "azure"
  },
  {
    "job_id": 182813,
    "job_title": "Principal Data Analyst",
    "salary_year_avg": "160000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "power bi"
  },
  {
    "job_id": 182813,
    "job_title": "Principal Data Analyst",
    "salary_year_avg": "160000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 182813,
    "job_title": "Principal Data Analyst",
    "salary_year_avg": "160000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "ssrs"
  },
  {
    "job_id": 475626,
    "job_title": "Principal Data Analyst",
    "salary_year_avg": "160000.0",
    "company_name": "Realtime Recruitment",
    "skills": "snowflake"
  },
  {
    "job_id": 475626,
    "job_title": "Principal Data Analyst",
    "salary_year_avg": "160000.0",
    "company_name": "Realtime Recruitment",
    "skills": "power bi"
  },
  {
    "job_id": 475626,
    "job_title": "Principal Data Analyst",
    "salary_year_avg": "160000.0",
    "company_name": "Realtime Recruitment",
    "skills": "looker"
  },
  {
    "job_id": 783771,
    "job_title": "SQL DEVELOPER / DATA ANALYST (Insurance industry Experience) ...",
    "salary_year_avg": "160000.0",
    "company_name": "Robert Half",
    "skills": "sql"
  },
  {
    "job_id": 783771,
    "job_title": "SQL DEVELOPER / DATA ANALYST (Insurance industry Experience) ...",
    "salary_year_avg": "160000.0",
    "company_name": "Robert Half",
    "skills": "java"
  },
  {
    "job_id": 266799,
    "job_title": "Applied Scientist - Maps",
    "salary_year_avg": "157500.0",
    "company_name": "Uber",
    "skills": "sql"
  },
  {
    "job_id": 266799,
    "job_title": "Applied Scientist - Maps",
    "salary_year_avg": "157500.0",
    "company_name": "Uber",
    "skills": "python"
  },
  {
    "job_id": 266799,
    "job_title": "Applied Scientist - Maps",
    "salary_year_avg": "157500.0",
    "company_name": "Uber",
    "skills": "r"
  },
  {
    "job_id": 266799,
    "job_title": "Applied Scientist - Maps",
    "salary_year_avg": "157500.0",
    "company_name": "Uber",
    "skills": "spark"
  },
  {
    "job_id": 485388,
    "job_title": "System Data Analyst",
    "salary_year_avg": "157500.0",
    "company_name": "Edgewater Federal Solutions, Inc.",
    "skills": "sql"
  },
  {
    "job_id": 485388,
    "job_title": "System Data Analyst",
    "salary_year_avg": "157500.0",
    "company_name": "Edgewater Federal Solutions, Inc.",
    "skills": "go"
  },
  {
    "job_id": 485388,
    "job_title": "System Data Analyst",
    "salary_year_avg": "157500.0",
    "company_name": "Edgewater Federal Solutions, Inc.",
    "skills": "oracle"
  },
  {
    "job_id": 25761,
    "job_title": "Data Analyst - Remote",
    "salary_year_avg": "155485.5",
    "company_name": "CaptivateIQ",
    "skills": "sql"
  },
  {
    "job_id": 25761,
    "job_title": "Data Analyst - Remote",
    "salary_year_avg": "155485.5",
    "company_name": "CaptivateIQ",
    "skills": "python"
  },
  {
    "job_id": 25761,
    "job_title": "Data Analyst - Remote",
    "salary_year_avg": "155485.5",
    "company_name": "CaptivateIQ",
    "skills": "r"
  },
  {
    "job_id": 25761,
    "job_title": "Data Analyst - Remote",
    "salary_year_avg": "155485.5",
    "company_name": "CaptivateIQ",
    "skills": "tableau"
  },
  {
    "job_id": 25761,
    "job_title": "Data Analyst - Remote",
    "salary_year_avg": "155485.5",
    "company_name": "CaptivateIQ",
    "skills": "looker"
  },
  {
    "job_id": 25761,
    "job_title": "Data Analyst - Remote",
    "salary_year_avg": "155485.5",
    "company_name": "CaptivateIQ",
    "skills": "datarobot"
  },
  {
    "job_id": 105157,
    "job_title": "Lead Data Analyst",
    "salary_year_avg": "155000.0",
    "company_name": "Motion Recruitment",
    "skills": "sql"
  },
  {
    "job_id": 105157,
    "job_title": "Lead Data Analyst",
    "salary_year_avg": "155000.0",
    "company_name": "Motion Recruitment",
    "skills": "python"
  },
  {
    "job_id": 105157,
    "job_title": "Lead Data Analyst",
    "salary_year_avg": "155000.0",
    "company_name": "Motion Recruitment",
    "skills": "scala"
  },
  {
    "job_id": 105157,
    "job_title": "Lead Data Analyst",
    "salary_year_avg": "155000.0",
    "company_name": "Motion Recruitment",
    "skills": "java"
  },
  {
    "job_id": 105157,
    "job_title": "Lead Data Analyst",
    "salary_year_avg": "155000.0",
    "company_name": "Motion Recruitment",
    "skills": "c++"
  },
  {
    "job_id": 105157,
    "job_title": "Lead Data Analyst",
    "salary_year_avg": "155000.0",
    "company_name": "Motion Recruitment",
    "skills": "redshift"
  },
  {
    "job_id": 105157,
    "job_title": "Lead Data Analyst",
    "salary_year_avg": "155000.0",
    "company_name": "Motion Recruitment",
    "skills": "snowflake"
  },
  {
    "job_id": 105157,
    "job_title": "Lead Data Analyst",
    "salary_year_avg": "155000.0",
    "company_name": "Motion Recruitment",
    "skills": "spark"
  },
  {
    "job_id": 105157,
    "job_title": "Lead Data Analyst",
    "salary_year_avg": "155000.0",
    "company_name": "Motion Recruitment",
    "skills": "airflow"
  },
  {
    "job_id": 105157,
    "job_title": "Lead Data Analyst",
    "salary_year_avg": "155000.0",
    "company_name": "Motion Recruitment",
    "skills": "hadoop"
  },
  {
    "job_id": 105157,
    "job_title": "Lead Data Analyst",
    "salary_year_avg": "155000.0",
    "company_name": "Motion Recruitment",
    "skills": "tableau"
  },
  {
    "job_id": 795614,
    "job_title": "Staff Business Data Analyst (Remote U.S. OK)",
    "salary_year_avg": "152625.0",
    "company_name": "Zscaler",
    "skills": "sql"
  },
  {
    "job_id": 795614,
    "job_title": "Staff Business Data Analyst (Remote U.S. OK)",
    "salary_year_avg": "152625.0",
    "company_name": "Zscaler",
    "skills": "hadoop"
  },
  {
    "job_id": 795614,
    "job_title": "Staff Business Data Analyst (Remote U.S. OK)",
    "salary_year_avg": "152625.0",
    "company_name": "Zscaler",
    "skills": "excel"
  },
  {
    "job_id": 795614,
    "job_title": "Staff Business Data Analyst (Remote U.S. OK)",
    "salary_year_avg": "152625.0",
    "company_name": "Zscaler",
    "skills": "tableau"
  },
  {
    "job_id": 795614,
    "job_title": "Staff Business Data Analyst (Remote U.S. OK)",
    "salary_year_avg": "152625.0",
    "company_name": "Zscaler",
    "skills": "looker"
  },
  {
    "job_id": 565646,
    "job_title": "Staff Business Data Analyst (Remote U.S. OK)",
    "salary_year_avg": "152625.0",
    "company_name": "Zscaler",
    "skills": "sql"
  },
  {
    "job_id": 565646,
    "job_title": "Staff Business Data Analyst (Remote U.S. OK)",
    "salary_year_avg": "152625.0",
    "company_name": "Zscaler",
    "skills": "hadoop"
  },
  {
    "job_id": 565646,
    "job_title": "Staff Business Data Analyst (Remote U.S. OK)",
    "salary_year_avg": "152625.0",
    "company_name": "Zscaler",
    "skills": "excel"
  },
  {
    "job_id": 565646,
    "job_title": "Staff Business Data Analyst (Remote U.S. OK)",
    "salary_year_avg": "152625.0",
    "company_name": "Zscaler",
    "skills": "tableau"
  },
  {
    "job_id": 565646,
    "job_title": "Staff Business Data Analyst (Remote U.S. OK)",
    "salary_year_avg": "152625.0",
    "company_name": "Zscaler",
    "skills": "looker"
  },
  {
    "job_id": 540057,
    "job_title": "Lead Data Analyst, Growth (Remote)",
    "salary_year_avg": "152500.0",
    "company_name": "Rocket Money",
    "skills": "sql"
  },
  {
    "job_id": 540057,
    "job_title": "Lead Data Analyst, Growth (Remote)",
    "salary_year_avg": "152500.0",
    "company_name": "Rocket Money",
    "skills": "looker"
  },
  {
    "job_id": 72957,
    "job_title": "Management & Program Analyst (Data Analytics)",
    "salary_year_avg": "152221.5",
    "company_name": "US Patent and Trademark Office",
    "skills": "sql"
  },
  {
    "job_id": 72957,
    "job_title": "Management & Program Analyst (Data Analytics)",
    "salary_year_avg": "152221.5",
    "company_name": "US Patent and Trademark Office",
    "skills": "r"
  },
  {
    "job_id": 72957,
    "job_title": "Management & Program Analyst (Data Analytics)",
    "salary_year_avg": "152221.5",
    "company_name": "US Patent and Trademark Office",
    "skills": "go"
  },
  {
    "job_id": 72957,
    "job_title": "Management & Program Analyst (Data Analytics)",
    "salary_year_avg": "152221.5",
    "company_name": "US Patent and Trademark Office",
    "skills": "databricks"
  },
  {
    "job_id": 72957,
    "job_title": "Management & Program Analyst (Data Analytics)",
    "salary_year_avg": "152221.5",
    "company_name": "US Patent and Trademark Office",
    "skills": "tableau"
  },
  {
    "job_id": 72957,
    "job_title": "Management & Program Analyst (Data Analytics)",
    "salary_year_avg": "152221.5",
    "company_name": "US Patent and Trademark Office",
    "skills": "alteryx"
  },
  {
    "job_id": 456042,
    "job_title": "Data Analyst",
    "salary_year_avg": "151500.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "sql"
  },
  {
    "job_id": 456042,
    "job_title": "Data Analyst",
    "salary_year_avg": "151500.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "python"
  },
  {
    "job_id": 456042,
    "job_title": "Data Analyst",
    "salary_year_avg": "151500.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "r"
  },
  {
    "job_id": 73304,
    "job_title": "Mid-Level Data Analyst",
    "salary_year_avg": "150000.0",
    "company_name": "Patterned Learning AI",
    "skills": "sql"
  },
  {
    "job_id": 73304,
    "job_title": "Mid-Level Data Analyst",
    "salary_year_avg": "150000.0",
    "company_name": "Patterned Learning AI",
    "skills": "excel"
  },
  {
    "job_id": 73304,
    "job_title": "Mid-Level Data Analyst",
    "salary_year_avg": "150000.0",
    "company_name": "Patterned Learning AI",
    "skills": "tableau"
  },
  {
    "job_id": 73304,
    "job_title": "Mid-Level Data Analyst",
    "salary_year_avg": "150000.0",
    "company_name": "Patterned Learning AI",
    "skills": "sheets"
  },
  {
    "job_id": 591850,
    "job_title": "Mid-Level Data BI Analyst",
    "salary_year_avg": "150000.0",
    "company_name": "Patterned Learning AI",
    "skills": "sql"
  },
  {
    "job_id": 591850,
    "job_title": "Mid-Level Data BI Analyst",
    "salary_year_avg": "150000.0",
    "company_name": "Patterned Learning AI",
    "skills": "nosql"
  },
  {
    "job_id": 591850,
    "job_title": "Mid-Level Data BI Analyst",
    "salary_year_avg": "150000.0",
    "company_name": "Patterned Learning AI",
    "skills": "vba"
  },
  {
    "job_id": 591850,
    "job_title": "Mid-Level Data BI Analyst",
    "salary_year_avg": "150000.0",
    "company_name": "Patterned Learning AI",
    "skills": "oracle"
  },
  {
    "job_id": 591850,
    "job_title": "Mid-Level Data BI Analyst",
    "salary_year_avg": "150000.0",
    "company_name": "Patterned Learning AI",
    "skills": "hadoop"
  },
  {
    "job_id": 591850,
    "job_title": "Mid-Level Data BI Analyst",
    "salary_year_avg": "150000.0",
    "company_name": "Patterned Learning AI",
    "skills": "excel"
  },
  {
    "job_id": 591850,
    "job_title": "Mid-Level Data BI Analyst",
    "salary_year_avg": "150000.0",
    "company_name": "Patterned Learning AI",
    "skills": "tableau"
  },
  {
    "job_id": 1402149,
    "job_title": "Lead Data Analyst - Retirement Product Management",
    "salary_year_avg": "148238.5",
    "company_name": "Edward Jones",
    "skills": "sql"
  },
  {
    "job_id": 1402149,
    "job_title": "Lead Data Analyst - Retirement Product Management",
    "salary_year_avg": "148238.5",
    "company_name": "Edward Jones",
    "skills": "python"
  },
  {
    "job_id": 1402149,
    "job_title": "Lead Data Analyst - Retirement Product Management",
    "salary_year_avg": "148238.5",
    "company_name": "Edward Jones",
    "skills": "nosql"
  },
  {
    "job_id": 1402149,
    "job_title": "Lead Data Analyst - Retirement Product Management",
    "salary_year_avg": "148238.5",
    "company_name": "Edward Jones",
    "skills": "r"
  },
  {
    "job_id": 1402149,
    "job_title": "Lead Data Analyst - Retirement Product Management",
    "salary_year_avg": "148238.5",
    "company_name": "Edward Jones",
    "skills": "sas"
  },
  {
    "job_id": 1402149,
    "job_title": "Lead Data Analyst - Retirement Product Management",
    "salary_year_avg": "148238.5",
    "company_name": "Edward Jones",
    "skills": "vba"
  },
  {
    "job_id": 1402149,
    "job_title": "Lead Data Analyst - Retirement Product Management",
    "salary_year_avg": "148238.5",
    "company_name": "Edward Jones",
    "skills": "db2"
  },
  {
    "job_id": 1402149,
    "job_title": "Lead Data Analyst - Retirement Product Management",
    "salary_year_avg": "148238.5",
    "company_name": "Edward Jones",
    "skills": "oracle"
  },
  {
    "job_id": 1402149,
    "job_title": "Lead Data Analyst - Retirement Product Management",
    "salary_year_avg": "148238.5",
    "company_name": "Edward Jones",
    "skills": "hadoop"
  },
  {
    "job_id": 1402149,
    "job_title": "Lead Data Analyst - Retirement Product Management",
    "salary_year_avg": "148238.5",
    "company_name": "Edward Jones",
    "skills": "excel"
  },
  {
    "job_id": 1402149,
    "job_title": "Lead Data Analyst - Retirement Product Management",
    "salary_year_avg": "148238.5",
    "company_name": "Edward Jones",
    "skills": "tableau"
  },
  {
    "job_id": 1402149,
    "job_title": "Lead Data Analyst - Retirement Product Management",
    "salary_year_avg": "148238.5",
    "company_name": "Edward Jones",
    "skills": "sas"
  },
  {
    "job_id": 1402149,
    "job_title": "Lead Data Analyst - Retirement Product Management",
    "salary_year_avg": "148238.5",
    "company_name": "Edward Jones",
    "skills": "microstrategy"
  },
  {
    "job_id": 1402149,
    "job_title": "Lead Data Analyst - Retirement Product Management",
    "salary_year_avg": "148238.5",
    "company_name": "Edward Jones",
    "skills": "spss"
  },
  {
    "job_id": 1694004,
    "job_title": "Manager - Data Analyst",
    "salary_year_avg": "147285.0",
    "company_name": "EXL Service",
    "skills": "sql"
  },
  {
    "job_id": 1694004,
    "job_title": "Manager - Data Analyst",
    "salary_year_avg": "147285.0",
    "company_name": "EXL Service",
    "skills": "python"
  },
  {
    "job_id": 1694004,
    "job_title": "Manager - Data Analyst",
    "salary_year_avg": "147285.0",
    "company_name": "EXL Service",
    "skills": "sas"
  },
  {
    "job_id": 1694004,
    "job_title": "Manager - Data Analyst",
    "salary_year_avg": "147285.0",
    "company_name": "EXL Service",
    "skills": "t-sql"
  },
  {
    "job_id": 1694004,
    "job_title": "Manager - Data Analyst",
    "salary_year_avg": "147285.0",
    "company_name": "EXL Service",
    "skills": "snowflake"
  },
  {
    "job_id": 1694004,
    "job_title": "Manager - Data Analyst",
    "salary_year_avg": "147285.0",
    "company_name": "EXL Service",
    "skills": "hadoop"
  },
  {
    "job_id": 1694004,
    "job_title": "Manager - Data Analyst",
    "salary_year_avg": "147285.0",
    "company_name": "EXL Service",
    "skills": "excel"
  },
  {
    "job_id": 1694004,
    "job_title": "Manager - Data Analyst",
    "salary_year_avg": "147285.0",
    "company_name": "EXL Service",
    "skills": "sas"
  },
  {
    "job_id": 1694004,
    "job_title": "Manager - Data Analyst",
    "salary_year_avg": "147285.0",
    "company_name": "EXL Service",
    "skills": "ssis"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "sql"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "python"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "r"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "golang"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "elasticsearch"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "aws"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "bigquery"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "gcp"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "pandas"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "scikit-learn"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "looker"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "kubernetes"
  },
  {
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "python"
  },
  {
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "java"
  },
  {
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "r"
  },
  {
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "javascript"
  },
  {
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "c++"
  },
  {
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "tableau"
  },
  {
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "power bi"
  },
  {
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "qlik"
  },
  {
    "job_id": 712558,
    "job_title": "Data Scientist Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "ALTA IT Services",
    "skills": "sql"
  },
  {
    "job_id": 712558,
    "job_title": "Data Scientist Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "ALTA IT Services",
    "skills": "python"
  },
  {
    "job_id": 712558,
    "job_title": "Data Scientist Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "ALTA IT Services",
    "skills": "r"
  },
  {
    "job_id": 712558,
    "job_title": "Data Scientist Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "ALTA IT Services",
    "skills": "sas"
  },
  {
    "job_id": 712558,
    "job_title": "Data Scientist Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "ALTA IT Services",
    "skills": "excel"
  },
  {
    "job_id": 712558,
    "job_title": "Data Scientist Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "ALTA IT Services",
    "skills": "tableau"
  },
  {
    "job_id": 712558,
    "job_title": "Data Scientist Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "ALTA IT Services",
    "skills": "power bi"
  },
  {
    "job_id": 712558,
    "job_title": "Data Scientist Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "ALTA IT Services",
    "skills": "sas"
  },
  {
    "job_id": 1329162,
    "job_title": "Data Analyst - up to 160K+",
    "salary_year_avg": "145000.0",
    "company_name": "Hire With Jarvis",
    "skills": "sql"
  },
  {
    "job_id": 1329162,
    "job_title": "Data Analyst - up to 160K+",
    "salary_year_avg": "145000.0",
    "company_name": "Hire With Jarvis",
    "skills": "excel"
  },
  {
    "job_id": 1329162,
    "job_title": "Data Analyst - up to 160K+",
    "salary_year_avg": "145000.0",
    "company_name": "Hire With Jarvis",
    "skills": "tableau"
  },
  {
    "job_id": 1329162,
    "job_title": "Data Analyst - up to 160K+",
    "salary_year_avg": "145000.0",
    "company_name": "Hire With Jarvis",
    "skills": "power bi"
  },
  {
    "job_id": 149006,
    "job_title": "People Data Analyst",
    "salary_year_avg": "140500.0",
    "company_name": "Insight Global",
    "skills": "sql"
  },
  {
    "job_id": 149006,
    "job_title": "People Data Analyst",
    "salary_year_avg": "140500.0",
    "company_name": "Insight Global",
    "skills": "python"
  },
  {
    "job_id": 149006,
    "job_title": "People Data Analyst",
    "salary_year_avg": "140500.0",
    "company_name": "Insight Global",
    "skills": "oracle"
  },
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "company_name": "Uber",
    "skills": "sql"
  },
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "company_name": "Uber",
    "skills": "python"
  },
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "company_name": "Uber",
    "skills": "r"
  },
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "company_name": "Uber",
    "skills": "swift"
  },
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "company_name": "Uber",
    "skills": "excel"
  },
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "company_name": "Uber",
    "skills": "tableau"
  },
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "company_name": "Uber",
    "skills": "looker"
  },
  {
    "job_id": 208403,
    "job_title": "Data Manager",
    "salary_year_avg": "140000.0",
    "company_name": "Insight Global",
    "skills": "nosql"
  },
  {
    "job_id": 1049000,
    "job_title": "Sr. Data Analyst",
    "salary_year_avg": "140000.0",
    "company_name": "Sisense",
    "skills": "sql"
  },
  {
    "job_id": 1049000,
    "job_title": "Sr. Data Analyst",
    "salary_year_avg": "140000.0",
    "company_name": "Sisense",
    "skills": "python"
  },
  {
    "job_id": 1049000,
    "job_title": "Sr. Data Analyst",
    "salary_year_avg": "140000.0",
    "company_name": "Sisense",
    "skills": "r"
  },
  {
    "job_id": 1049000,
    "job_title": "Sr. Data Analyst",
    "salary_year_avg": "140000.0",
    "company_name": "Sisense",
    "skills": "snowflake"
  },
  {
    "job_id": 762220,
    "job_title": "Qlik/Power BI Data Analyst | $130K-$150K + ESOP |100% USA-Remote",
    "salary_year_avg": "140000.0",
    "company_name": "IT Pros",
    "skills": "bigquery"
  },
  {
    "job_id": 762220,
    "job_title": "Qlik/Power BI Data Analyst | $130K-$150K + ESOP |100% USA-Remote",
    "salary_year_avg": "140000.0",
    "company_name": "IT Pros",
    "skills": "power bi"
  },
  {
    "job_id": 762220,
    "job_title": "Qlik/Power BI Data Analyst | $130K-$150K + ESOP |100% USA-Remote",
    "salary_year_avg": "140000.0",
    "company_name": "IT Pros",
    "skills": "qlik"
  },
  {
    "job_id": 1300702,
    "job_title": "Data Analyst (Product Data Analyst)",
    "salary_year_avg": "139000.0",
    "company_name": "Revolut",
    "skills": "sql"
  },
  {
    "job_id": 1300702,
    "job_title": "Data Analyst (Product Data Analyst)",
    "salary_year_avg": "139000.0",
    "company_name": "Revolut",
    "skills": "python"
  },
  {
    "job_id": 1300702,
    "job_title": "Data Analyst (Product Data Analyst)",
    "salary_year_avg": "139000.0",
    "company_name": "Revolut",
    "skills": "scala"
  },
  {
    "job_id": 1300702,
    "job_title": "Data Analyst (Product Data Analyst)",
    "salary_year_avg": "139000.0",
    "company_name": "Revolut",
    "skills": "java"
  },
  {
    "job_id": 1300702,
    "job_title": "Data Analyst (Product Data Analyst)",
    "salary_year_avg": "139000.0",
    "company_name": "Revolut",
    "skills": "c++"
  },
  {
    "job_id": 388392,
    "job_title": "Digital Marketing Data Analyst (Hybrid)",
    "salary_year_avg": "138640.0",
    "company_name": "United Services Automobile Association",
    "skills": "sql"
  },
  {
    "job_id": 388392,
    "job_title": "Digital Marketing Data Analyst (Hybrid)",
    "salary_year_avg": "138640.0",
    "company_name": "United Services Automobile Association",
    "skills": "nosql"
  },
  {
    "job_id": 388392,
    "job_title": "Digital Marketing Data Analyst (Hybrid)",
    "salary_year_avg": "138640.0",
    "company_name": "United Services Automobile Association",
    "skills": "javascript"
  },
  {
    "job_id": 388392,
    "job_title": "Digital Marketing Data Analyst (Hybrid)",
    "salary_year_avg": "138640.0",
    "company_name": "United Services Automobile Association",
    "skills": "snowflake"
  },
  {
    "job_id": 388392,
    "job_title": "Digital Marketing Data Analyst (Hybrid)",
    "salary_year_avg": "138640.0",
    "company_name": "United Services Automobile Association",
    "skills": "hadoop"
  },
  {
    "job_id": 388392,
    "job_title": "Digital Marketing Data Analyst (Hybrid)",
    "salary_year_avg": "138640.0",
    "company_name": "United Services Automobile Association",
    "skills": "phoenix"
  },
  {
    "job_id": 388392,
    "job_title": "Digital Marketing Data Analyst (Hybrid)",
    "salary_year_avg": "138640.0",
    "company_name": "United Services Automobile Association",
    "skills": "tableau"
  },
  {
    "job_id": 1482852,
    "job_title": "Data Analyst",
    "salary_year_avg": "138500.0",
    "company_name": "Overmind",
    "skills": "sql"
  },
  {
    "job_id": 1482852,
    "job_title": "Data Analyst",
    "salary_year_avg": "138500.0",
    "company_name": "Overmind",
    "skills": "python"
  },
  {
    "job_id": 350382,
    "job_title": "Lead I - Power BI Data Analyst",
    "salary_year_avg": "138000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 350382,
    "job_title": "Lead I - Power BI Data Analyst",
    "salary_year_avg": "138000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "nosql"
  },
  {
    "job_id": 350382,
    "job_title": "Lead I - Power BI Data Analyst",
    "salary_year_avg": "138000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql server"
  },
  {
    "job_id": 350382,
    "job_title": "Lead I - Power BI Data Analyst",
    "salary_year_avg": "138000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "azure"
  },
  {
    "job_id": 350382,
    "job_title": "Lead I - Power BI Data Analyst",
    "salary_year_avg": "138000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "power bi"
  },
  {
    "job_id": 350382,
    "job_title": "Lead I - Power BI Data Analyst",
    "salary_year_avg": "138000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "dax"
  },
  {
    "job_id": 835092,
    "job_title": "Secret Data Analyst Remote / Telecommute Jobs",
    "salary_year_avg": "137500.0",
    "company_name": "Insight Global, Inc.",
    "skills": "sharepoint"
  },
  {
    "job_id": 740073,
    "job_title": "Data Analytics Manager",
    "salary_year_avg": "137000.0",
    "company_name": "WhiteCrow",
    "skills": "excel"
  },
  {
    "job_id": 740073,
    "job_title": "Data Analytics Manager",
    "salary_year_avg": "137000.0",
    "company_name": "WhiteCrow",
    "skills": "powerpoint"
  },
  {
    "job_id": 479965,
    "job_title": "Data Analyst",
    "salary_year_avg": "135000.0",
    "company_name": "InvestM Technology LLC",
    "skills": "sql"
  },
  {
    "job_id": 479965,
    "job_title": "Data Analyst",
    "salary_year_avg": "135000.0",
    "company_name": "InvestM Technology LLC",
    "skills": "excel"
  },
  {
    "job_id": 479965,
    "job_title": "Data Analyst",
    "salary_year_avg": "135000.0",
    "company_name": "InvestM Technology LLC",
    "skills": "power bi"
  },
  {
    "job_id": 1326467,
    "job_title": "Data Analyst",
    "salary_year_avg": "135000.0",
    "company_name": "EPIC Brokers",
    "skills": "excel"
  },
  {
    "job_id": 777802,
    "job_title": "Lead Data Analyst / SQL Developer",
    "salary_year_avg": "135000.0",
    "company_name": "Robert Half",
    "skills": "sql"
  },
  {
    "job_id": 777802,
    "job_title": "Lead Data Analyst / SQL Developer",
    "salary_year_avg": "135000.0",
    "company_name": "Robert Half",
    "skills": "python"
  },
  {
    "job_id": 777802,
    "job_title": "Lead Data Analyst / SQL Developer",
    "salary_year_avg": "135000.0",
    "company_name": "Robert Half",
    "skills": "go"
  },
  {
    "job_id": 777802,
    "job_title": "Lead Data Analyst / SQL Developer",
    "salary_year_avg": "135000.0",
    "company_name": "Robert Half",
    "skills": "c"
  },
  {
    "job_id": 777802,
    "job_title": "Lead Data Analyst / SQL Developer",
    "salary_year_avg": "135000.0",
    "company_name": "Robert Half",
    "skills": "sql server"
  },
  {
    "job_id": 513988,
    "job_title": "Data Analyst - Advanced Analytics",
    "salary_year_avg": "135000.0",
    "company_name": "Get It Recruit - Hospitality",
    "skills": "sql"
  },
  {
    "job_id": 513988,
    "job_title": "Data Analyst - Advanced Analytics",
    "salary_year_avg": "135000.0",
    "company_name": "Get It Recruit - Hospitality",
    "skills": "python"
  },
  {
    "job_id": 513988,
    "job_title": "Data Analyst - Advanced Analytics",
    "salary_year_avg": "135000.0",
    "company_name": "Get It Recruit - Hospitality",
    "skills": "r"
  },
  {
    "job_id": 513988,
    "job_title": "Data Analyst - Advanced Analytics",
    "salary_year_avg": "135000.0",
    "company_name": "Get It Recruit - Hospitality",
    "skills": "sas"
  },
  {
    "job_id": 513988,
    "job_title": "Data Analyst - Advanced Analytics",
    "salary_year_avg": "135000.0",
    "company_name": "Get It Recruit - Hospitality",
    "skills": "sas"
  },
  {
    "job_id": 262837,
    "job_title": "Quantitative Scientist (Remote)",
    "salary_year_avg": "132500.0",
    "company_name": "Osmind",
    "skills": "sql"
  },
  {
    "job_id": 262837,
    "job_title": "Quantitative Scientist (Remote)",
    "salary_year_avg": "132500.0",
    "company_name": "Osmind",
    "skills": "python"
  },
  {
    "job_id": 262837,
    "job_title": "Quantitative Scientist (Remote)",
    "salary_year_avg": "132500.0",
    "company_name": "Osmind",
    "skills": "r"
  },
  {
    "job_id": 990420,
    "job_title": "Data Insights Analyst III",
    "salary_year_avg": "132500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 990420,
    "job_title": "Data Insights Analyst III",
    "salary_year_avg": "132500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 990420,
    "job_title": "Data Insights Analyst III",
    "salary_year_avg": "132500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 990420,
    "job_title": "Data Insights Analyst III",
    "salary_year_avg": "132500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 311931,
    "job_title": "Data Analyst III",
    "salary_year_avg": "132500.0",
    "company_name": "SoftDev Incorporated",
    "skills": "sql"
  },
  {
    "job_id": 311931,
    "job_title": "Data Analyst III",
    "salary_year_avg": "132500.0",
    "company_name": "SoftDev Incorporated",
    "skills": "python"
  },
  {
    "job_id": 311931,
    "job_title": "Data Analyst III",
    "salary_year_avg": "132500.0",
    "company_name": "SoftDev Incorporated",
    "skills": "r"
  },
  {
    "job_id": 311931,
    "job_title": "Data Analyst III",
    "salary_year_avg": "132500.0",
    "company_name": "SoftDev Incorporated",
    "skills": "sheets"
  },
  {
    "job_id": 21451,
    "job_title": "Data Analyst must have telecom domain experince",
    "salary_year_avg": "130000.0",
    "company_name": "ApTask",
    "skills": "sql"
  },
  {
    "job_id": 21451,
    "job_title": "Data Analyst must have telecom domain experince",
    "salary_year_avg": "130000.0",
    "company_name": "ApTask",
    "skills": "python"
  },
  {
    "job_id": 21451,
    "job_title": "Data Analyst must have telecom domain experince",
    "salary_year_avg": "130000.0",
    "company_name": "ApTask",
    "skills": "sheets"
  },
  {
    "job_id": 21451,
    "job_title": "Data Analyst must have telecom domain experince",
    "salary_year_avg": "130000.0",
    "company_name": "ApTask",
    "skills": "flow"
  },
  {
    "job_id": 1209798,
    "job_title": "Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Doximity",
    "skills": "sql"
  },
  {
    "job_id": 1209798,
    "job_title": "Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Doximity",
    "skills": "python"
  },
  {
    "job_id": 1209798,
    "job_title": "Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Doximity",
    "skills": "spark"
  },
  {
    "job_id": 1209798,
    "job_title": "Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Doximity",
    "skills": "pandas"
  },
  {
    "job_id": 1209798,
    "job_title": "Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Doximity",
    "skills": "numpy"
  },
  {
    "job_id": 1209798,
    "job_title": "Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Doximity",
    "skills": "unix"
  },
  {
    "job_id": 1209798,
    "job_title": "Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Doximity",
    "skills": "git"
  },
  {
    "job_id": 1209798,
    "job_title": "Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Doximity",
    "skills": "github"
  },
  {
    "job_id": 447569,
    "job_title": "Lead Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Kforce Technology Staffing",
    "skills": "sql"
  },
  {
    "job_id": 447569,
    "job_title": "Lead Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Kforce Technology Staffing",
    "skills": "python"
  },
  {
    "job_id": 447569,
    "job_title": "Lead Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Kforce Technology Staffing",
    "skills": "r"
  },
  {
    "job_id": 447569,
    "job_title": "Lead Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Kforce Technology Staffing",
    "skills": "databricks"
  },
  {
    "job_id": 447569,
    "job_title": "Lead Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Kforce Technology Staffing",
    "skills": "aws"
  },
  {
    "job_id": 447569,
    "job_title": "Lead Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Kforce Technology Staffing",
    "skills": "redshift"
  },
  {
    "job_id": 447569,
    "job_title": "Lead Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Kforce Technology Staffing",
    "skills": "snowflake"
  },
  {
    "job_id": 447569,
    "job_title": "Lead Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Kforce Technology Staffing",
    "skills": "tableau"
  },
  {
    "job_id": 1531276,
    "job_title": "System Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Alpha Silicon",
    "skills": "sql"
  },
  {
    "job_id": 1531276,
    "job_title": "System Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Alpha Silicon",
    "skills": "python"
  },
  {
    "job_id": 1531276,
    "job_title": "System Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Alpha Silicon",
    "skills": "sheets"
  },
  {
    "job_id": 1531276,
    "job_title": "System Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Alpha Silicon",
    "skills": "flow"
  },
  {
    "job_id": 92703,
    "job_title": "Sr. Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Launch Consulting Group",
    "skills": "sql"
  },
  {
    "job_id": 92703,
    "job_title": "Sr. Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Launch Consulting Group",
    "skills": "azure"
  },
  {
    "job_id": 92703,
    "job_title": "Sr. Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Launch Consulting Group",
    "skills": "aws"
  },
  {
    "job_id": 92703,
    "job_title": "Sr. Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Launch Consulting Group",
    "skills": "snowflake"
  },
  {
    "job_id": 92703,
    "job_title": "Sr. Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Launch Consulting Group",
    "skills": "excel"
  },
  {
    "job_id": 92703,
    "job_title": "Sr. Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Launch Consulting Group",
    "skills": "tableau"
  },
  {
    "job_id": 92703,
    "job_title": "Sr. Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Launch Consulting Group",
    "skills": "power bi"
  },
  {
    "job_id": 92703,
    "job_title": "Sr. Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Launch Consulting Group",
    "skills": "dax"
  },
  {
    "job_id": 92703,
    "job_title": "Sr. Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Launch Consulting Group",
    "skills": "visio"
  },
  {
    "job_id": 92703,
    "job_title": "Sr. Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Launch Consulting Group",
    "skills": "flow"
  },
  {
    "job_id": 92703,
    "job_title": "Sr. Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Launch Consulting Group",
    "skills": "jira"
  },
  {
    "job_id": 1686779,
    "job_title": "Data Insights Manager",
    "salary_year_avg": "130000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1686779,
    "job_title": "Data Insights Manager",
    "salary_year_avg": "130000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1686779,
    "job_title": "Data Insights Manager",
    "salary_year_avg": "130000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 1686779,
    "job_title": "Data Insights Manager",
    "salary_year_avg": "130000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql server"
  },
  {
    "job_id": 1686779,
    "job_title": "Data Insights Manager",
    "salary_year_avg": "130000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 1686779,
    "job_title": "Data Insights Manager",
    "salary_year_avg": "130000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 1686779,
    "job_title": "Data Insights Manager",
    "salary_year_avg": "130000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "power bi"
  },
  {
    "job_id": 1566076,
    "job_title": "Manager, Data Analytics (Bioscience) - Remote",
    "salary_year_avg": "129000.0",
    "company_name": "Lonza",
    "skills": "python"
  },
  {
    "job_id": 1566076,
    "job_title": "Manager, Data Analytics (Bioscience) - Remote",
    "salary_year_avg": "129000.0",
    "company_name": "Lonza",
    "skills": "power bi"
  },
  {
    "job_id": 1791785,
    "job_title": "Marketing Data Analyst (Remote)",
    "salary_year_avg": "127000.0",
    "company_name": "Cash App",
    "skills": "sql"
  },
  {
    "job_id": 1791785,
    "job_title": "Marketing Data Analyst (Remote)",
    "salary_year_avg": "127000.0",
    "company_name": "Cash App",
    "skills": "go"
  },
  {
    "job_id": 1791785,
    "job_title": "Marketing Data Analyst (Remote)",
    "salary_year_avg": "127000.0",
    "company_name": "Cash App",
    "skills": "c"
  },
  {
    "job_id": 1791785,
    "job_title": "Marketing Data Analyst (Remote)",
    "salary_year_avg": "127000.0",
    "company_name": "Cash App",
    "skills": "twilio"
  },
  {
    "job_id": 1148444,
    "job_title": "Data Analyst",
    "salary_year_avg": "127000.0",
    "company_name": "Acorns",
    "skills": "outlook"
  },
  {
    "job_id": 592669,
    "job_title": "Behavioral Health Data Analyst- REMOTE",
    "salary_year_avg": "126452.0",
    "company_name": "ICF",
    "skills": "sql"
  },
  {
    "job_id": 592669,
    "job_title": "Behavioral Health Data Analyst- REMOTE",
    "salary_year_avg": "126452.0",
    "company_name": "ICF",
    "skills": "python"
  },
  {
    "job_id": 592669,
    "job_title": "Behavioral Health Data Analyst- REMOTE",
    "salary_year_avg": "126452.0",
    "company_name": "ICF",
    "skills": "r"
  },
  {
    "job_id": 592669,
    "job_title": "Behavioral Health Data Analyst- REMOTE",
    "salary_year_avg": "126452.0",
    "company_name": "ICF",
    "skills": "sas"
  },
  {
    "job_id": 592669,
    "job_title": "Behavioral Health Data Analyst- REMOTE",
    "salary_year_avg": "126452.0",
    "company_name": "ICF",
    "skills": "tableau"
  },
  {
    "job_id": 592669,
    "job_title": "Behavioral Health Data Analyst- REMOTE",
    "salary_year_avg": "126452.0",
    "company_name": "ICF",
    "skills": "sas"
  },
  {
    "job_id": 592669,
    "job_title": "Behavioral Health Data Analyst- REMOTE",
    "salary_year_avg": "126452.0",
    "company_name": "ICF",
    "skills": "spss"
  },
  {
    "job_id": 502626,
    "job_title": "Sr Data Analyst, Consultant - Client Facing - Remote",
    "salary_year_avg": "126000.0",
    "company_name": "UnitedHealth Group",
    "skills": "sql"
  },
  {
    "job_id": 502626,
    "job_title": "Sr Data Analyst, Consultant - Client Facing - Remote",
    "salary_year_avg": "126000.0",
    "company_name": "UnitedHealth Group",
    "skills": "python"
  },
  {
    "job_id": 502626,
    "job_title": "Sr Data Analyst, Consultant - Client Facing - Remote",
    "salary_year_avg": "126000.0",
    "company_name": "UnitedHealth Group",
    "skills": "r"
  },
  {
    "job_id": 502626,
    "job_title": "Sr Data Analyst, Consultant - Client Facing - Remote",
    "salary_year_avg": "126000.0",
    "company_name": "UnitedHealth Group",
    "skills": "sas"
  },
  {
    "job_id": 502626,
    "job_title": "Sr Data Analyst, Consultant - Client Facing - Remote",
    "salary_year_avg": "126000.0",
    "company_name": "UnitedHealth Group",
    "skills": "aws"
  },
  {
    "job_id": 502626,
    "job_title": "Sr Data Analyst, Consultant - Client Facing - Remote",
    "salary_year_avg": "126000.0",
    "company_name": "UnitedHealth Group",
    "skills": "sas"
  },
  {
    "job_id": 116211,
    "job_title": "Sr Data Analyst - Remote",
    "salary_year_avg": "126000.0",
    "company_name": "UnitedHealthcare",
    "skills": "sql"
  },
  {
    "job_id": 116211,
    "job_title": "Sr Data Analyst - Remote",
    "salary_year_avg": "126000.0",
    "company_name": "UnitedHealthcare",
    "skills": "sql server"
  },
  {
    "job_id": 116211,
    "job_title": "Sr Data Analyst - Remote",
    "salary_year_avg": "126000.0",
    "company_name": "UnitedHealthcare",
    "skills": "ssis"
  },
  {
    "job_id": 116211,
    "job_title": "Sr Data Analyst - Remote",
    "salary_year_avg": "126000.0",
    "company_name": "UnitedHealthcare",
    "skills": "ssrs"
  },
  {
    "job_id": 1735665,
    "job_title": "Mid-Level Decision Science Analyst",
    "salary_year_avg": "125930.0",
    "company_name": "USAA",
    "skills": "sql"
  },
  {
    "job_id": 1735665,
    "job_title": "Mid-Level Decision Science Analyst",
    "salary_year_avg": "125930.0",
    "company_name": "USAA",
    "skills": "sas"
  },
  {
    "job_id": 1735665,
    "job_title": "Mid-Level Decision Science Analyst",
    "salary_year_avg": "125930.0",
    "company_name": "USAA",
    "skills": "phoenix"
  },
  {
    "job_id": 1735665,
    "job_title": "Mid-Level Decision Science Analyst",
    "salary_year_avg": "125930.0",
    "company_name": "USAA",
    "skills": "sas"
  },
  {
    "job_id": 748965,
    "job_title": "Strategy and Data Analyst, Sustainability",
    "salary_year_avg": "125500.0",
    "company_name": "Uber",
    "skills": "sql"
  },
  {
    "job_id": 748965,
    "job_title": "Strategy and Data Analyst, Sustainability",
    "salary_year_avg": "125500.0",
    "company_name": "Uber",
    "skills": "python"
  },
  {
    "job_id": 748965,
    "job_title": "Strategy and Data Analyst, Sustainability",
    "salary_year_avg": "125500.0",
    "company_name": "Uber",
    "skills": "r"
  },
  {
    "job_id": 748965,
    "job_title": "Strategy and Data Analyst, Sustainability",
    "salary_year_avg": "125500.0",
    "company_name": "Uber",
    "skills": "go"
  },
  {
    "job_id": 1229773,
    "job_title": "Manager, Data Analytics & Reporting - Remote",
    "salary_year_avg": "125000.0",
    "company_name": "Infinity Consulting Solutions, Inc.",
    "skills": "sql"
  },
  {
    "job_id": 1229773,
    "job_title": "Manager, Data Analytics & Reporting - Remote",
    "salary_year_avg": "125000.0",
    "company_name": "Infinity Consulting Solutions, Inc.",
    "skills": "go"
  },
  {
    "job_id": 1229773,
    "job_title": "Manager, Data Analytics & Reporting - Remote",
    "salary_year_avg": "125000.0",
    "company_name": "Infinity Consulting Solutions, Inc.",
    "skills": "excel"
  },
  {
    "job_id": 1229773,
    "job_title": "Manager, Data Analytics & Reporting - Remote",
    "salary_year_avg": "125000.0",
    "company_name": "Infinity Consulting Solutions, Inc.",
    "skills": "notion"
  },
  {
    "job_id": 595967,
    "job_title": "Data Science Analyst 2 (Pop Health)",
    "salary_year_avg": "125000.0",
    "company_name": "Starbridge Partners",
    "skills": "sql"
  },
  {
    "job_id": 595967,
    "job_title": "Data Science Analyst 2 (Pop Health)",
    "salary_year_avg": "125000.0",
    "company_name": "Starbridge Partners",
    "skills": "python"
  },
  {
    "job_id": 595967,
    "job_title": "Data Science Analyst 2 (Pop Health)",
    "salary_year_avg": "125000.0",
    "company_name": "Starbridge Partners",
    "skills": "r"
  },
  {
    "job_id": 595967,
    "job_title": "Data Science Analyst 2 (Pop Health)",
    "salary_year_avg": "125000.0",
    "company_name": "Starbridge Partners",
    "skills": "sas"
  },
  {
    "job_id": 595967,
    "job_title": "Data Science Analyst 2 (Pop Health)",
    "salary_year_avg": "125000.0",
    "company_name": "Starbridge Partners",
    "skills": "sas"
  },
  {
    "job_id": 1551308,
    "job_title": "Investment Data and Analytics Manager",
    "salary_year_avg": "125000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1551308,
    "job_title": "Investment Data and Analytics Manager",
    "salary_year_avg": "125000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1551308,
    "job_title": "Investment Data and Analytics Manager",
    "salary_year_avg": "125000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 1551308,
    "job_title": "Investment Data and Analytics Manager",
    "salary_year_avg": "125000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "vba"
  },
  {
    "job_id": 1551308,
    "job_title": "Investment Data and Analytics Manager",
    "salary_year_avg": "125000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 1551308,
    "job_title": "Investment Data and Analytics Manager",
    "salary_year_avg": "125000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 1551308,
    "job_title": "Investment Data and Analytics Manager",
    "salary_year_avg": "125000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "alteryx"
  },
  {
    "job_id": 1551308,
    "job_title": "Investment Data and Analytics Manager",
    "salary_year_avg": "125000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "flow"
  },
  {
    "job_id": 300502,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "sql"
  },
  {
    "job_id": 300502,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "python"
  },
  {
    "job_id": 300502,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "shell"
  },
  {
    "job_id": 300502,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "bigquery"
  },
  {
    "job_id": 300502,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "redshift"
  },
  {
    "job_id": 300502,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "spark"
  },
  {
    "job_id": 300502,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "airflow"
  },
  {
    "job_id": 300502,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "jupyter"
  },
  {
    "job_id": 900945,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "The Walt Disney Company",
    "skills": "sql"
  },
  {
    "job_id": 900945,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "The Walt Disney Company",
    "skills": "python"
  },
  {
    "job_id": 900945,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "The Walt Disney Company",
    "skills": "r"
  },
  {
    "job_id": 900945,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "The Walt Disney Company",
    "skills": "sas"
  },
  {
    "job_id": 900945,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "The Walt Disney Company",
    "skills": "databricks"
  },
  {
    "job_id": 900945,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "The Walt Disney Company",
    "skills": "snowflake"
  },
  {
    "job_id": 900945,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "The Walt Disney Company",
    "skills": "sas"
  },
  {
    "job_id": 900945,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "The Walt Disney Company",
    "skills": "spss"
  },
  {
    "job_id": 400967,
    "job_title": "Healthcare Data Analyst (Manager)- $120,000-130,000/yr | Remote in PST",
    "salary_year_avg": "125000.0",
    "company_name": "PWR Staffing & Recruiting",
    "skills": "sql"
  },
  {
    "job_id": 285447,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "Robert Half",
    "skills": "flow"
  },
  {
    "job_id": 1216840,
    "job_title": "Data Analyst, Operations (Remote)",
    "salary_year_avg": "125000.0",
    "company_name": "hims & hers",
    "skills": "sql"
  },
  {
    "job_id": 1216840,
    "job_title": "Data Analyst, Operations (Remote)",
    "salary_year_avg": "125000.0",
    "company_name": "hims & hers",
    "skills": "python"
  },
  {
    "job_id": 1216840,
    "job_title": "Data Analyst, Operations (Remote)",
    "salary_year_avg": "125000.0",
    "company_name": "hims & hers",
    "skills": "r"
  },
  {
    "job_id": 1216840,
    "job_title": "Data Analyst, Operations (Remote)",
    "salary_year_avg": "125000.0",
    "company_name": "hims & hers",
    "skills": "bash"
  },
  {
    "job_id": 1216840,
    "job_title": "Data Analyst, Operations (Remote)",
    "salary_year_avg": "125000.0",
    "company_name": "hims & hers",
    "skills": "postgresql"
  },
  {
    "job_id": 1216840,
    "job_title": "Data Analyst, Operations (Remote)",
    "salary_year_avg": "125000.0",
    "company_name": "hims & hers",
    "skills": "bigquery"
  },
  {
    "job_id": 1216840,
    "job_title": "Data Analyst, Operations (Remote)",
    "salary_year_avg": "125000.0",
    "company_name": "hims & hers",
    "skills": "airflow"
  },
  {
    "job_id": 1216840,
    "job_title": "Data Analyst, Operations (Remote)",
    "salary_year_avg": "125000.0",
    "company_name": "hims & hers",
    "skills": "looker"
  },
  {
    "job_id": 1682817,
    "job_title": "Data Analyst: regional physical security",
    "salary_year_avg": "124500.0",
    "company_name": "Blackstone Consulting, Inc.",
    "skills": "excel"
  },
  {
    "job_id": 1682817,
    "job_title": "Data Analyst: regional physical security",
    "salary_year_avg": "124500.0",
    "company_name": "Blackstone Consulting, Inc.",
    "skills": "power bi"
  },
  {
    "job_id": 1682817,
    "job_title": "Data Analyst: regional physical security",
    "salary_year_avg": "124500.0",
    "company_name": "Blackstone Consulting, Inc.",
    "skills": "word"
  },
  {
    "job_id": 1682817,
    "job_title": "Data Analyst: regional physical security",
    "salary_year_avg": "124500.0",
    "company_name": "Blackstone Consulting, Inc.",
    "skills": "sharepoint"
  },
  {
    "job_id": 1682817,
    "job_title": "Data Analyst: regional physical security",
    "salary_year_avg": "124500.0",
    "company_name": "Blackstone Consulting, Inc.",
    "skills": "powerpoint"
  },
  {
    "job_id": 1682817,
    "job_title": "Data Analyst: regional physical security",
    "salary_year_avg": "124500.0",
    "company_name": "Blackstone Consulting, Inc.",
    "skills": "microsoft teams"
  },
  {
    "job_id": 821092,
    "job_title": "Data Analyst, Support Operations",
    "salary_year_avg": "124000.0",
    "company_name": "Cloudflare",
    "skills": "sql"
  },
  {
    "job_id": 821092,
    "job_title": "Data Analyst, Support Operations",
    "salary_year_avg": "124000.0",
    "company_name": "Cloudflare",
    "skills": "python"
  },
  {
    "job_id": 821092,
    "job_title": "Data Analyst, Support Operations",
    "salary_year_avg": "124000.0",
    "company_name": "Cloudflare",
    "skills": "r"
  },
  {
    "job_id": 821092,
    "job_title": "Data Analyst, Support Operations",
    "salary_year_avg": "124000.0",
    "company_name": "Cloudflare",
    "skills": "tableau"
  },
  {
    "job_id": 821092,
    "job_title": "Data Analyst, Support Operations",
    "salary_year_avg": "124000.0",
    "company_name": "Cloudflare",
    "skills": "looker"
  },
  {
    "job_id": 631753,
    "job_title": "Data Analytics Manager",
    "salary_year_avg": "123000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 631753,
    "job_title": "Data Analytics Manager",
    "salary_year_avg": "123000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 631753,
    "job_title": "Data Analytics Manager",
    "salary_year_avg": "123000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "power bi"
  },
  {
    "job_id": 631753,
    "job_title": "Data Analytics Manager",
    "salary_year_avg": "123000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 596565,
    "job_title": "Lead Analyst - Data Analytics - Remote",
    "salary_year_avg": "122769.0",
    "company_name": "ICF",
    "skills": "sql"
  },
  {
    "job_id": 596565,
    "job_title": "Lead Analyst - Data Analytics - Remote",
    "salary_year_avg": "122769.0",
    "company_name": "ICF",
    "skills": "python"
  },
  {
    "job_id": 596565,
    "job_title": "Lead Analyst - Data Analytics - Remote",
    "salary_year_avg": "122769.0",
    "company_name": "ICF",
    "skills": "tableau"
  },
  {
    "job_id": 596565,
    "job_title": "Lead Analyst - Data Analytics - Remote",
    "salary_year_avg": "122769.0",
    "company_name": "ICF",
    "skills": "power bi"
  },
  {
    "job_id": 1015777,
    "job_title": "Decision Science Analyst - Consumer Lending",
    "salary_year_avg": "122500.0",
    "company_name": "Analytic Recruiting Inc.",
    "skills": "sql"
  },
  {
    "job_id": 1015777,
    "job_title": "Decision Science Analyst - Consumer Lending",
    "salary_year_avg": "122500.0",
    "company_name": "Analytic Recruiting Inc.",
    "skills": "python"
  },
  {
    "job_id": 1015777,
    "job_title": "Decision Science Analyst - Consumer Lending",
    "salary_year_avg": "122500.0",
    "company_name": "Analytic Recruiting Inc.",
    "skills": "sas"
  },
  {
    "job_id": 1015777,
    "job_title": "Decision Science Analyst - Consumer Lending",
    "salary_year_avg": "122500.0",
    "company_name": "Analytic Recruiting Inc.",
    "skills": "snowflake"
  },
  {
    "job_id": 1015777,
    "job_title": "Decision Science Analyst - Consumer Lending",
    "salary_year_avg": "122500.0",
    "company_name": "Analytic Recruiting Inc.",
    "skills": "tableau"
  },
  {
    "job_id": 1015777,
    "job_title": "Decision Science Analyst - Consumer Lending",
    "salary_year_avg": "122500.0",
    "company_name": "Analytic Recruiting Inc.",
    "skills": "sas"
  },
  {
    "job_id": 238020,
    "job_title": "Business Data Analyst with SQL (Strong)",
    "salary_year_avg": "122500.0",
    "company_name": "Innova Solutions",
    "skills": "sql"
  },
  {
    "job_id": 238020,
    "job_title": "Business Data Analyst with SQL (Strong)",
    "salary_year_avg": "122500.0",
    "company_name": "Innova Solutions",
    "skills": "aws"
  },
  {
    "job_id": 238020,
    "job_title": "Business Data Analyst with SQL (Strong)",
    "salary_year_avg": "122500.0",
    "company_name": "Innova Solutions",
    "skills": "jira"
  },
  {
    "job_id": 238020,
    "job_title": "Business Data Analyst with SQL (Strong)",
    "salary_year_avg": "122500.0",
    "company_name": "Innova Solutions",
    "skills": "confluence"
  },
  {
    "job_id": 298860,
    "job_title": "Sales Ops Data Analyst (Austin, TX or Remote)",
    "salary_year_avg": "122000.0",
    "company_name": "Cloudflare",
    "skills": "sql"
  },
  {
    "job_id": 298860,
    "job_title": "Sales Ops Data Analyst (Austin, TX or Remote)",
    "salary_year_avg": "122000.0",
    "company_name": "Cloudflare",
    "skills": "bigquery"
  },
  {
    "job_id": 298860,
    "job_title": "Sales Ops Data Analyst (Austin, TX or Remote)",
    "salary_year_avg": "122000.0",
    "company_name": "Cloudflare",
    "skills": "tableau"
  },
  {
    "job_id": 298860,
    "job_title": "Sales Ops Data Analyst (Austin, TX or Remote)",
    "salary_year_avg": "122000.0",
    "company_name": "Cloudflare",
    "skills": "sheets"
  },
  {
    "job_id": 426033,
    "job_title": "Sales Ops Data Analyst (Remote)",
    "salary_year_avg": "122000.0",
    "company_name": "CloudFlare",
    "skills": "sql"
  },
  {
    "job_id": 426033,
    "job_title": "Sales Ops Data Analyst (Remote)",
    "salary_year_avg": "122000.0",
    "company_name": "CloudFlare",
    "skills": "bigquery"
  },
  {
    "job_id": 426033,
    "job_title": "Sales Ops Data Analyst (Remote)",
    "salary_year_avg": "122000.0",
    "company_name": "CloudFlare",
    "skills": "tableau"
  },
  {
    "job_id": 426033,
    "job_title": "Sales Ops Data Analyst (Remote)",
    "salary_year_avg": "122000.0",
    "company_name": "CloudFlare",
    "skills": "sheets"
  },
  {
    "job_id": 999820,
    "job_title": "Business Intelligence Data Analyst",
    "salary_year_avg": "120000.0",
    "company_name": "LAI",
    "skills": "sql"
  },
  {
    "job_id": 999820,
    "job_title": "Business Intelligence Data Analyst",
    "salary_year_avg": "120000.0",
    "company_name": "LAI",
    "skills": "go"
  },
  {
    "job_id": 999820,
    "job_title": "Business Intelligence Data Analyst",
    "salary_year_avg": "120000.0",
    "company_name": "LAI",
    "skills": "excel"
  },
  {
    "job_id": 999820,
    "job_title": "Business Intelligence Data Analyst",
    "salary_year_avg": "120000.0",
    "company_name": "LAI",
    "skills": "tableau"
  },
  {
    "job_id": 999820,
    "job_title": "Business Intelligence Data Analyst",
    "salary_year_avg": "120000.0",
    "company_name": "LAI",
    "skills": "word"
  },
  {
    "job_id": 999820,
    "job_title": "Business Intelligence Data Analyst",
    "salary_year_avg": "120000.0",
    "company_name": "LAI",
    "skills": "kubernetes"
  },
  {
    "job_id": 999820,
    "job_title": "Business Intelligence Data Analyst",
    "salary_year_avg": "120000.0",
    "company_name": "LAI",
    "skills": "jira"
  },
  {
    "job_id": 999820,
    "job_title": "Business Intelligence Data Analyst",
    "salary_year_avg": "120000.0",
    "company_name": "LAI",
    "skills": "confluence"
  },
  {
    "job_id": 1191992,
    "job_title": "Business Data Analyst",
    "salary_year_avg": "120000.0",
    "company_name": "Robert Half",
    "skills": "sql"
  },
  {
    "job_id": 1191992,
    "job_title": "Business Data Analyst",
    "salary_year_avg": "120000.0",
    "company_name": "Robert Half",
    "skills": "tableau"
  },
  {
    "job_id": 1191992,
    "job_title": "Business Data Analyst",
    "salary_year_avg": "120000.0",
    "company_name": "Robert Half",
    "skills": "power bi"
  },
  {
    "job_id": 587198,
    "job_title": "Data Architect",
    "salary_year_avg": "120000.0",
    "company_name": "Motion Recruitment",
    "skills": "sql"
  },
  {
    "job_id": 587198,
    "job_title": "Data Architect",
    "salary_year_avg": "120000.0",
    "company_name": "Motion Recruitment",
    "skills": "azure"
  },
  {
    "job_id": 587198,
    "job_title": "Data Architect",
    "salary_year_avg": "120000.0",
    "company_name": "Motion Recruitment",
    "skills": "aws"
  },
  {
    "job_id": 587198,
    "job_title": "Data Architect",
    "salary_year_avg": "120000.0",
    "company_name": "Motion Recruitment",
    "skills": "bigquery"
  },
  {
    "job_id": 587198,
    "job_title": "Data Architect",
    "salary_year_avg": "120000.0",
    "company_name": "Motion Recruitment",
    "skills": "redshift"
  },
  {
    "job_id": 587198,
    "job_title": "Data Architect",
    "salary_year_avg": "120000.0",
    "company_name": "Motion Recruitment",
    "skills": "snowflake"
  },
  {
    "job_id": 587198,
    "job_title": "Data Architect",
    "salary_year_avg": "120000.0",
    "company_name": "Motion Recruitment",
    "skills": "gcp"
  },
  {
    "job_id": 587198,
    "job_title": "Data Architect",
    "salary_year_avg": "120000.0",
    "company_name": "Motion Recruitment",
    "skills": "tableau"
  },
  {
    "job_id": 236172,
    "job_title": "Data Analytics Analyst",
    "salary_year_avg": "120000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 236172,
    "job_title": "Data Analytics Analyst",
    "salary_year_avg": "120000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 236172,
    "job_title": "Data Analytics Analyst",
    "salary_year_avg": "120000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "power bi"
  },
  {
    "job_id": 236172,
    "job_title": "Data Analytics Analyst",
    "salary_year_avg": "120000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sharepoint"
  },
  {
    "job_id": 236172,
    "job_title": "Data Analytics Analyst",
    "salary_year_avg": "120000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "powerpoint"
  },
  {
    "job_id": 236172,
    "job_title": "Data Analytics Analyst",
    "salary_year_avg": "120000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "outlook"
  },
  {
    "job_id": 236172,
    "job_title": "Data Analytics Analyst",
    "salary_year_avg": "120000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "visio"
  },
  {
    "job_id": 1611348,
    "job_title": "Lifeforce: Data Analyst (Remote)",
    "salary_year_avg": "120000.0",
    "company_name": "M13",
    "skills": "sql"
  },
  {
    "job_id": 1611348,
    "job_title": "Lifeforce: Data Analyst (Remote)",
    "salary_year_avg": "120000.0",
    "company_name": "M13",
    "skills": "r"
  },
  {
    "job_id": 1611348,
    "job_title": "Lifeforce: Data Analyst (Remote)",
    "salary_year_avg": "120000.0",
    "company_name": "M13",
    "skills": "sas"
  },
  {
    "job_id": 1611348,
    "job_title": "Lifeforce: Data Analyst (Remote)",
    "salary_year_avg": "120000.0",
    "company_name": "M13",
    "skills": "sas"
  },
  {
    "job_id": 1611348,
    "job_title": "Lifeforce: Data Analyst (Remote)",
    "salary_year_avg": "120000.0",
    "company_name": "M13",
    "skills": "spss"
  },
  {
    "job_id": 1132443,
    "job_title": "Risk Data Analyst",
    "salary_year_avg": "119908.0",
    "company_name": "US Development Finance Corporation (formerly Overseas Private Investment Corporation)",
    "skills": "python"
  },
  {
    "job_id": 1132443,
    "job_title": "Risk Data Analyst",
    "salary_year_avg": "119908.0",
    "company_name": "US Development Finance Corporation (formerly Overseas Private Investment Corporation)",
    "skills": "vba"
  },
  {
    "job_id": 1132443,
    "job_title": "Risk Data Analyst",
    "salary_year_avg": "119908.0",
    "company_name": "US Development Finance Corporation (formerly Overseas Private Investment Corporation)",
    "skills": "tableau"
  },
  {
    "job_id": 1132443,
    "job_title": "Risk Data Analyst",
    "salary_year_avg": "119908.0",
    "company_name": "US Development Finance Corporation (formerly Overseas Private Investment Corporation)",
    "skills": "power bi"
  },
  {
    "job_id": 876656,
    "job_title": "Data Analyst",
    "salary_year_avg": "119200.0",
    "company_name": "CVS Health",
    "skills": "sql"
  },
  {
    "job_id": 876656,
    "job_title": "Data Analyst",
    "salary_year_avg": "119200.0",
    "company_name": "CVS Health",
    "skills": "python"
  },
  {
    "job_id": 876656,
    "job_title": "Data Analyst",
    "salary_year_avg": "119200.0",
    "company_name": "CVS Health",
    "skills": "hadoop"
  },
  {
    "job_id": 876656,
    "job_title": "Data Analyst",
    "salary_year_avg": "119200.0",
    "company_name": "CVS Health",
    "skills": "tableau"
  },
  {
    "job_id": 446029,
    "job_title": "Data Analyst - Predictive Modeling",
    "salary_year_avg": "119200.0",
    "company_name": "CVS Health",
    "skills": "sql"
  },
  {
    "job_id": 446029,
    "job_title": "Data Analyst - Predictive Modeling",
    "salary_year_avg": "119200.0",
    "company_name": "CVS Health",
    "skills": "python"
  },
  {
    "job_id": 446029,
    "job_title": "Data Analyst - Predictive Modeling",
    "salary_year_avg": "119200.0",
    "company_name": "CVS Health",
    "skills": "hadoop"
  },
  {
    "job_id": 446029,
    "job_title": "Data Analyst - Predictive Modeling",
    "salary_year_avg": "119200.0",
    "company_name": "CVS Health",
    "skills": "tableau"
  },
  {
    "job_id": 945180,
    "job_title": "Data Analyst",
    "salary_year_avg": "117713.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "excel"
  },
  {
    "job_id": 945180,
    "job_title": "Data Analyst",
    "salary_year_avg": "117713.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "tableau"
  },
  {
    "job_id": 945180,
    "job_title": "Data Analyst",
    "salary_year_avg": "117713.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "word"
  },
  {
    "job_id": 945180,
    "job_title": "Data Analyst",
    "salary_year_avg": "117713.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "powerpoint"
  },
  {
    "job_id": 945180,
    "job_title": "Data Analyst",
    "salary_year_avg": "117713.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "ms access"
  },
  {
    "job_id": 1124418,
    "job_title": "Lead Data Analyst",
    "salary_year_avg": "117500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1124418,
    "job_title": "Lead Data Analyst",
    "salary_year_avg": "117500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1124418,
    "job_title": "Lead Data Analyst",
    "salary_year_avg": "117500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql server"
  },
  {
    "job_id": 685438,
    "job_title": "Data Analyst",
    "salary_year_avg": "117500.0",
    "company_name": "Jobot",
    "skills": "sql"
  },
  {
    "job_id": 685438,
    "job_title": "Data Analyst",
    "salary_year_avg": "117500.0",
    "company_name": "Jobot",
    "skills": "python"
  },
  {
    "job_id": 685438,
    "job_title": "Data Analyst",
    "salary_year_avg": "117500.0",
    "company_name": "Jobot",
    "skills": "tableau"
  },
  {
    "job_id": 436153,
    "job_title": "Lead Data Analyst / SQL Developer",
    "salary_year_avg": "117500.0",
    "company_name": "Robert Half",
    "skills": "sql"
  },
  {
    "job_id": 436153,
    "job_title": "Lead Data Analyst / SQL Developer",
    "salary_year_avg": "117500.0",
    "company_name": "Robert Half",
    "skills": "python"
  },
  {
    "job_id": 436153,
    "job_title": "Lead Data Analyst / SQL Developer",
    "salary_year_avg": "117500.0",
    "company_name": "Robert Half",
    "skills": "go"
  },
  {
    "job_id": 436153,
    "job_title": "Lead Data Analyst / SQL Developer",
    "salary_year_avg": "117500.0",
    "company_name": "Robert Half",
    "skills": "c"
  },
  {
    "job_id": 436153,
    "job_title": "Lead Data Analyst / SQL Developer",
    "salary_year_avg": "117500.0",
    "company_name": "Robert Half",
    "skills": "sql server"
  },
  {
    "job_id": 131427,
    "job_title": "Data Analyst",
    "salary_year_avg": "117000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 131427,
    "job_title": "Data Analyst",
    "salary_year_avg": "117000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 131427,
    "job_title": "Data Analyst",
    "salary_year_avg": "117000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 131427,
    "job_title": "Data Analyst",
    "salary_year_avg": "117000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 1788827,
    "job_title": "Data Analyst",
    "salary_year_avg": "115791.5",
    "company_name": "Kern Health Systems",
    "skills": "sql"
  },
  {
    "job_id": 1788827,
    "job_title": "Data Analyst",
    "salary_year_avg": "115791.5",
    "company_name": "Kern Health Systems",
    "skills": "sas"
  },
  {
    "job_id": 1788827,
    "job_title": "Data Analyst",
    "salary_year_avg": "115791.5",
    "company_name": "Kern Health Systems",
    "skills": "excel"
  },
  {
    "job_id": 1788827,
    "job_title": "Data Analyst",
    "salary_year_avg": "115791.5",
    "company_name": "Kern Health Systems",
    "skills": "sas"
  },
  {
    "job_id": 16358,
    "job_title": "BI Data Analyst IV",
    "salary_year_avg": "115791.5",
    "company_name": "Kern Health Systems",
    "skills": "sql"
  },
  {
    "job_id": 16358,
    "job_title": "BI Data Analyst IV",
    "salary_year_avg": "115791.5",
    "company_name": "Kern Health Systems",
    "skills": "sas"
  },
  {
    "job_id": 16358,
    "job_title": "BI Data Analyst IV",
    "salary_year_avg": "115791.5",
    "company_name": "Kern Health Systems",
    "skills": "excel"
  },
  {
    "job_id": 16358,
    "job_title": "BI Data Analyst IV",
    "salary_year_avg": "115791.5",
    "company_name": "Kern Health Systems",
    "skills": "sas"
  },
  {
    "job_id": 1574716,
    "job_title": "BI Data Analyst IV",
    "salary_year_avg": "115791.5",
    "company_name": "Kern Health Systems",
    "skills": "sql"
  },
  {
    "job_id": 1574716,
    "job_title": "BI Data Analyst IV",
    "salary_year_avg": "115791.5",
    "company_name": "Kern Health Systems",
    "skills": "sas"
  },
  {
    "job_id": 1574716,
    "job_title": "BI Data Analyst IV",
    "salary_year_avg": "115791.5",
    "company_name": "Kern Health Systems",
    "skills": "excel"
  },
  {
    "job_id": 1574716,
    "job_title": "BI Data Analyst IV",
    "salary_year_avg": "115791.5",
    "company_name": "Kern Health Systems",
    "skills": "sas"
  },
  {
    "job_id": 1772547,
    "job_title": "QNXT/TriZetto Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Medasource",
    "skills": "sql"
  },
  {
    "job_id": 1772547,
    "job_title": "QNXT/TriZetto Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Medasource",
    "skills": "sql server"
  },
  {
    "job_id": 1772547,
    "job_title": "QNXT/TriZetto Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Medasource",
    "skills": "azure"
  },
  {
    "job_id": 1772547,
    "job_title": "QNXT/TriZetto Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Medasource",
    "skills": "excel"
  },
  {
    "job_id": 1139755,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Lighthouse Professional Services",
    "skills": "sql"
  },
  {
    "job_id": 1139755,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Lighthouse Professional Services",
    "skills": "python"
  },
  {
    "job_id": 1139755,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Lighthouse Professional Services",
    "skills": "r"
  },
  {
    "job_id": 1139755,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Lighthouse Professional Services",
    "skills": "vba"
  },
  {
    "job_id": 1139755,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Lighthouse Professional Services",
    "skills": "snowflake"
  },
  {
    "job_id": 1139755,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Lighthouse Professional Services",
    "skills": "tableau"
  },
  {
    "job_id": 1139755,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Lighthouse Professional Services",
    "skills": "power bi"
  },
  {
    "job_id": 1139755,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Lighthouse Professional Services",
    "skills": "dax"
  },
  {
    "job_id": 1139755,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Lighthouse Professional Services",
    "skills": "powerpoint"
  },
  {
    "job_id": 1139755,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Lighthouse Professional Services",
    "skills": "alteryx"
  },
  {
    "job_id": 357990,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Robert Half",
    "skills": "sql"
  },
  {
    "job_id": 357990,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Robert Half",
    "skills": "sql server"
  },
  {
    "job_id": 357990,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Robert Half",
    "skills": "azure"
  },
  {
    "job_id": 357990,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Robert Half",
    "skills": "databricks"
  },
  {
    "job_id": 357990,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Robert Half",
    "skills": "oracle"
  },
  {
    "job_id": 357990,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Robert Half",
    "skills": "tableau"
  },
  {
    "job_id": 357990,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Robert Half",
    "skills": "power bi"
  },
  {
    "job_id": 198747,
    "job_title": "Business Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Robert Half",
    "skills": "sql"
  },
  {
    "job_id": 198747,
    "job_title": "Business Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Robert Half",
    "skills": "tableau"
  },
  {
    "job_id": 198747,
    "job_title": "Business Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Robert Half",
    "skills": "power bi"
  },
  {
    "job_id": 1403108,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1403108,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 156483,
    "job_title": "Data/Information Architect",
    "salary_year_avg": "115000.0",
    "company_name": "Robert Half",
    "skills": "sql"
  },
  {
    "job_id": 156483,
    "job_title": "Data/Information Architect",
    "salary_year_avg": "115000.0",
    "company_name": "Robert Half",
    "skills": "python"
  },
  {
    "job_id": 156483,
    "job_title": "Data/Information Architect",
    "salary_year_avg": "115000.0",
    "company_name": "Robert Half",
    "skills": "postgresql"
  },
  {
    "job_id": 156483,
    "job_title": "Data/Information Architect",
    "salary_year_avg": "115000.0",
    "company_name": "Robert Half",
    "skills": "snowflake"
  },
  {
    "job_id": 156483,
    "job_title": "Data/Information Architect",
    "salary_year_avg": "115000.0",
    "company_name": "Robert Half",
    "skills": "tableau"
  },
  {
    "job_id": 24351,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "ManyPets",
    "skills": "sql"
  },
  {
    "job_id": 24351,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "ManyPets",
    "skills": "excel"
  },
  {
    "job_id": 24351,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "ManyPets",
    "skills": "tableau"
  },
  {
    "job_id": 945577,
    "job_title": "Behavioral Health Data Analyst",
    "salary_year_avg": "114956.5",
    "company_name": "ICF",
    "skills": "sql"
  },
  {
    "job_id": 945577,
    "job_title": "Behavioral Health Data Analyst",
    "salary_year_avg": "114956.5",
    "company_name": "ICF",
    "skills": "python"
  },
  {
    "job_id": 945577,
    "job_title": "Behavioral Health Data Analyst",
    "salary_year_avg": "114956.5",
    "company_name": "ICF",
    "skills": "r"
  },
  {
    "job_id": 945577,
    "job_title": "Behavioral Health Data Analyst",
    "salary_year_avg": "114956.5",
    "company_name": "ICF",
    "skills": "sas"
  },
  {
    "job_id": 945577,
    "job_title": "Behavioral Health Data Analyst",
    "salary_year_avg": "114956.5",
    "company_name": "ICF",
    "skills": "tableau"
  },
  {
    "job_id": 945577,
    "job_title": "Behavioral Health Data Analyst",
    "salary_year_avg": "114956.5",
    "company_name": "ICF",
    "skills": "sas"
  },
  {
    "job_id": 945577,
    "job_title": "Behavioral Health Data Analyst",
    "salary_year_avg": "114956.5",
    "company_name": "ICF",
    "skills": "spss"
  },
  {
    "job_id": 467403,
    "job_title": "Healthcare Analytics Expert",
    "salary_year_avg": "114948.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "python"
  },
  {
    "job_id": 467403,
    "job_title": "Healthcare Analytics Expert",
    "salary_year_avg": "114948.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "r"
  },
  {
    "job_id": 467403,
    "job_title": "Healthcare Analytics Expert",
    "salary_year_avg": "114948.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "sas"
  },
  {
    "job_id": 467403,
    "job_title": "Healthcare Analytics Expert",
    "salary_year_avg": "114948.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "tableau"
  },
  {
    "job_id": 467403,
    "job_title": "Healthcare Analytics Expert",
    "salary_year_avg": "114948.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "power bi"
  },
  {
    "job_id": 467403,
    "job_title": "Healthcare Analytics Expert",
    "salary_year_avg": "114948.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "sas"
  },
  {
    "job_id": 857003,
    "job_title": "Behavioral Health Data Analyst",
    "salary_year_avg": "114805.0",
    "company_name": "ICF",
    "skills": "sql"
  },
  {
    "job_id": 857003,
    "job_title": "Behavioral Health Data Analyst",
    "salary_year_avg": "114805.0",
    "company_name": "ICF",
    "skills": "python"
  },
  {
    "job_id": 857003,
    "job_title": "Behavioral Health Data Analyst",
    "salary_year_avg": "114805.0",
    "company_name": "ICF",
    "skills": "r"
  },
  {
    "job_id": 857003,
    "job_title": "Behavioral Health Data Analyst",
    "salary_year_avg": "114805.0",
    "company_name": "ICF",
    "skills": "sas"
  },
  {
    "job_id": 857003,
    "job_title": "Behavioral Health Data Analyst",
    "salary_year_avg": "114805.0",
    "company_name": "ICF",
    "skills": "tableau"
  },
  {
    "job_id": 857003,
    "job_title": "Behavioral Health Data Analyst",
    "salary_year_avg": "114805.0",
    "company_name": "ICF",
    "skills": "sas"
  },
  {
    "job_id": 857003,
    "job_title": "Behavioral Health Data Analyst",
    "salary_year_avg": "114805.0",
    "company_name": "ICF",
    "skills": "spss"
  },
  {
    "job_id": 1566879,
    "job_title": "Data Analyst, Global Business Development",
    "salary_year_avg": "114000.0",
    "company_name": "Uber",
    "skills": "sql"
  },
  {
    "job_id": 1566879,
    "job_title": "Data Analyst, Global Business Development",
    "salary_year_avg": "114000.0",
    "company_name": "Uber",
    "skills": "python"
  },
  {
    "job_id": 1566879,
    "job_title": "Data Analyst, Global Business Development",
    "salary_year_avg": "114000.0",
    "company_name": "Uber",
    "skills": "r"
  },
  {
    "job_id": 1566879,
    "job_title": "Data Analyst, Global Business Development",
    "salary_year_avg": "114000.0",
    "company_name": "Uber",
    "skills": "tableau"
  },
  {
    "job_id": 1566879,
    "job_title": "Data Analyst, Global Business Development",
    "salary_year_avg": "114000.0",
    "company_name": "Uber",
    "skills": "looker"
  },
  {
    "job_id": 1354909,
    "job_title": "Technical Business/Data Analyst (REMOTE)",
    "salary_year_avg": "113500.0",
    "company_name": "GEICO",
    "skills": "sql"
  },
  {
    "job_id": 1354909,
    "job_title": "Technical Business/Data Analyst (REMOTE)",
    "salary_year_avg": "113500.0",
    "company_name": "GEICO",
    "skills": "python"
  },
  {
    "job_id": 1354909,
    "job_title": "Technical Business/Data Analyst (REMOTE)",
    "salary_year_avg": "113500.0",
    "company_name": "GEICO",
    "skills": "db2"
  },
  {
    "job_id": 1354909,
    "job_title": "Technical Business/Data Analyst (REMOTE)",
    "salary_year_avg": "113500.0",
    "company_name": "GEICO",
    "skills": "azure"
  },
  {
    "job_id": 1354909,
    "job_title": "Technical Business/Data Analyst (REMOTE)",
    "salary_year_avg": "113500.0",
    "company_name": "GEICO",
    "skills": "oracle"
  },
  {
    "job_id": 1354909,
    "job_title": "Technical Business/Data Analyst (REMOTE)",
    "salary_year_avg": "113500.0",
    "company_name": "GEICO",
    "skills": "snowflake"
  },
  {
    "job_id": 1354909,
    "job_title": "Technical Business/Data Analyst (REMOTE)",
    "salary_year_avg": "113500.0",
    "company_name": "GEICO",
    "skills": "hadoop"
  },
  {
    "job_id": 1354909,
    "job_title": "Technical Business/Data Analyst (REMOTE)",
    "salary_year_avg": "113500.0",
    "company_name": "GEICO",
    "skills": "power bi"
  },
  {
    "job_id": 248219,
    "job_title": "Data Analyst, Customer Success (Chicago, IL or Remote)",
    "salary_year_avg": "112850.0",
    "company_name": "Square",
    "skills": "sql"
  },
  {
    "job_id": 248219,
    "job_title": "Data Analyst, Customer Success (Chicago, IL or Remote)",
    "salary_year_avg": "112850.0",
    "company_name": "Square",
    "skills": "python"
  },
  {
    "job_id": 248219,
    "job_title": "Data Analyst, Customer Success (Chicago, IL or Remote)",
    "salary_year_avg": "112850.0",
    "company_name": "Square",
    "skills": "go"
  },
  {
    "job_id": 248219,
    "job_title": "Data Analyst, Customer Success (Chicago, IL or Remote)",
    "salary_year_avg": "112850.0",
    "company_name": "Square",
    "skills": "c"
  },
  {
    "job_id": 248219,
    "job_title": "Data Analyst, Customer Success (Chicago, IL or Remote)",
    "salary_year_avg": "112850.0",
    "company_name": "Square",
    "skills": "tableau"
  },
  {
    "job_id": 248219,
    "job_title": "Data Analyst, Customer Success (Chicago, IL or Remote)",
    "salary_year_avg": "112850.0",
    "company_name": "Square",
    "skills": "looker"
  },
  {
    "job_id": 248219,
    "job_title": "Data Analyst, Customer Success (Chicago, IL or Remote)",
    "salary_year_avg": "112850.0",
    "company_name": "Square",
    "skills": "flow"
  },
  {
    "job_id": 236397,
    "job_title": "Data Analyst",
    "salary_year_avg": "112661.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "sql"
  },
  {
    "job_id": 236397,
    "job_title": "Data Analyst",
    "salary_year_avg": "112661.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "python"
  },
  {
    "job_id": 236397,
    "job_title": "Data Analyst",
    "salary_year_avg": "112661.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "tableau"
  },
  {
    "job_id": 84928,
    "job_title": "Experian Data Analyst Remote / Telecommute Jobs",
    "salary_year_avg": "112500.0",
    "company_name": "Seneca Resources, LLC",
    "skills": "aws"
  },
  {
    "job_id": 84928,
    "job_title": "Experian Data Analyst Remote / Telecommute Jobs",
    "salary_year_avg": "112500.0",
    "company_name": "Seneca Resources, LLC",
    "skills": "linux"
  },
  {
    "job_id": 1006256,
    "job_title": "Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "InvestM Technology LLC",
    "skills": "sql"
  },
  {
    "job_id": 1006256,
    "job_title": "Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "InvestM Technology LLC",
    "skills": "python"
  },
  {
    "job_id": 1006256,
    "job_title": "Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "InvestM Technology LLC",
    "skills": "r"
  },
  {
    "job_id": 1006256,
    "job_title": "Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "InvestM Technology LLC",
    "skills": "tableau"
  },
  {
    "job_id": 1006256,
    "job_title": "Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "InvestM Technology LLC",
    "skills": "power bi"
  },
  {
    "job_id": 71065,
    "job_title": "Data Analyst Remote / Telecommute Jobs",
    "salary_year_avg": "112500.0",
    "company_name": "Paratus Solutions LLC",
    "skills": "sql"
  },
  {
    "job_id": 71065,
    "job_title": "Data Analyst Remote / Telecommute Jobs",
    "salary_year_avg": "112500.0",
    "company_name": "Paratus Solutions LLC",
    "skills": "python"
  },
  {
    "job_id": 71065,
    "job_title": "Data Analyst Remote / Telecommute Jobs",
    "salary_year_avg": "112500.0",
    "company_name": "Paratus Solutions LLC",
    "skills": "r"
  },
  {
    "job_id": 71065,
    "job_title": "Data Analyst Remote / Telecommute Jobs",
    "salary_year_avg": "112500.0",
    "company_name": "Paratus Solutions LLC",
    "skills": "sas"
  },
  {
    "job_id": 71065,
    "job_title": "Data Analyst Remote / Telecommute Jobs",
    "salary_year_avg": "112500.0",
    "company_name": "Paratus Solutions LLC",
    "skills": "javascript"
  },
  {
    "job_id": 71065,
    "job_title": "Data Analyst Remote / Telecommute Jobs",
    "salary_year_avg": "112500.0",
    "company_name": "Paratus Solutions LLC",
    "skills": "sqlite"
  },
  {
    "job_id": 71065,
    "job_title": "Data Analyst Remote / Telecommute Jobs",
    "salary_year_avg": "112500.0",
    "company_name": "Paratus Solutions LLC",
    "skills": "excel"
  },
  {
    "job_id": 71065,
    "job_title": "Data Analyst Remote / Telecommute Jobs",
    "salary_year_avg": "112500.0",
    "company_name": "Paratus Solutions LLC",
    "skills": "tableau"
  },
  {
    "job_id": 71065,
    "job_title": "Data Analyst Remote / Telecommute Jobs",
    "salary_year_avg": "112500.0",
    "company_name": "Paratus Solutions LLC",
    "skills": "sas"
  },
  {
    "job_id": 71065,
    "job_title": "Data Analyst Remote / Telecommute Jobs",
    "salary_year_avg": "112500.0",
    "company_name": "Paratus Solutions LLC",
    "skills": "spss"
  },
  {
    "job_id": 185960,
    "job_title": "Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 185960,
    "job_title": "Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 185960,
    "job_title": "Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 185960,
    "job_title": "Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 185960,
    "job_title": "Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 576410,
    "job_title": "Remote Lead Business Data Analyst (Chicago, IL or Remote)",
    "salary_year_avg": "112500.0",
    "company_name": "UL Solutions",
    "skills": "excel"
  },
  {
    "job_id": 576410,
    "job_title": "Remote Lead Business Data Analyst (Chicago, IL or Remote)",
    "salary_year_avg": "112500.0",
    "company_name": "UL Solutions",
    "skills": "dax"
  },
  {
    "job_id": 1728,
    "job_title": "Data Engineer/Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "Segue Technologies Inc",
    "skills": "sql"
  },
  {
    "job_id": 1728,
    "job_title": "Data Engineer/Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "Segue Technologies Inc",
    "skills": "nosql"
  },
  {
    "job_id": 1728,
    "job_title": "Data Engineer/Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "Segue Technologies Inc",
    "skills": "sql server"
  },
  {
    "job_id": 1728,
    "job_title": "Data Engineer/Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "Segue Technologies Inc",
    "skills": "aws"
  },
  {
    "job_id": 1728,
    "job_title": "Data Engineer/Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "Segue Technologies Inc",
    "skills": "excel"
  },
  {
    "job_id": 1728,
    "job_title": "Data Engineer/Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "Segue Technologies Inc",
    "skills": "tableau"
  },
  {
    "job_id": 147455,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "112050.0",
    "company_name": "Cisco Meraki",
    "skills": "sql"
  },
  {
    "job_id": 147455,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "112050.0",
    "company_name": "Cisco Meraki",
    "skills": "oracle"
  },
  {
    "job_id": 147455,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "112050.0",
    "company_name": "Cisco Meraki",
    "skills": "excel"
  },
  {
    "job_id": 147455,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "112050.0",
    "company_name": "Cisco Meraki",
    "skills": "tableau"
  },
  {
    "job_id": 147455,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "112050.0",
    "company_name": "Cisco Meraki",
    "skills": "looker"
  },
  {
    "job_id": 147455,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "112050.0",
    "company_name": "Cisco Meraki",
    "skills": "sap"
  },
  {
    "job_id": 958872,
    "job_title": "Data Analyst",
    "salary_year_avg": "111500.0",
    "company_name": "IBM",
    "skills": "sql"
  },
  {
    "job_id": 958872,
    "job_title": "Data Analyst",
    "salary_year_avg": "111500.0",
    "company_name": "IBM",
    "skills": "python"
  },
  {
    "job_id": 958872,
    "job_title": "Data Analyst",
    "salary_year_avg": "111500.0",
    "company_name": "IBM",
    "skills": "azure"
  },
  {
    "job_id": 958872,
    "job_title": "Data Analyst",
    "salary_year_avg": "111500.0",
    "company_name": "IBM",
    "skills": "ibm cloud"
  },
  {
    "job_id": 958872,
    "job_title": "Data Analyst",
    "salary_year_avg": "111500.0",
    "company_name": "IBM",
    "skills": "tableau"
  },
  {
    "job_id": 958872,
    "job_title": "Data Analyst",
    "salary_year_avg": "111500.0",
    "company_name": "IBM",
    "skills": "jira"
  },
  {
    "job_id": 1490432,
    "job_title": "Retail Systems Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1490432,
    "job_title": "Retail Systems Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 1490432,
    "job_title": "Retail Systems Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "power bi"
  },
  {
    "job_id": 1490432,
    "job_title": "Retail Systems Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "alteryx"
  },
  {
    "job_id": 1490432,
    "job_title": "Retail Systems Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "flow"
  },
  {
    "job_id": 446319,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "javascript"
  },
  {
    "job_id": 446319,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "looker"
  },
  {
    "job_id": 1592165,
    "job_title": "SQL DEVELOPER / DATA ANALYST (Insurance industry Experience) ...",
    "salary_year_avg": "110000.0",
    "company_name": "Robert Half",
    "skills": "sql"
  },
  {
    "job_id": 1592165,
    "job_title": "SQL DEVELOPER / DATA ANALYST (Insurance industry Experience) ...",
    "salary_year_avg": "110000.0",
    "company_name": "Robert Half",
    "skills": "ssis"
  },
  {
    "job_id": 1814437,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "sql"
  },
  {
    "job_id": 1814437,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "python"
  },
  {
    "job_id": 1814437,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "r"
  },
  {
    "job_id": 1814437,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "tableau"
  },
  {
    "job_id": 1814437,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "power bi"
  },
  {
    "job_id": 382334,
    "job_title": "Energy Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "DNV",
    "skills": "sql"
  },
  {
    "job_id": 382334,
    "job_title": "Energy Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "DNV",
    "skills": "python"
  },
  {
    "job_id": 382334,
    "job_title": "Energy Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "DNV",
    "skills": "r"
  },
  {
    "job_id": 382334,
    "job_title": "Energy Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "DNV",
    "skills": "sas"
  },
  {
    "job_id": 382334,
    "job_title": "Energy Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "DNV",
    "skills": "javascript"
  },
  {
    "job_id": 382334,
    "job_title": "Energy Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "DNV",
    "skills": "azure"
  },
  {
    "job_id": 382334,
    "job_title": "Energy Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "DNV",
    "skills": "databricks"
  },
  {
    "job_id": 382334,
    "job_title": "Energy Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "DNV",
    "skills": "excel"
  },
  {
    "job_id": 382334,
    "job_title": "Energy Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "DNV",
    "skills": "power bi"
  },
  {
    "job_id": 382334,
    "job_title": "Energy Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "DNV",
    "skills": "sas"
  },
  {
    "job_id": 382334,
    "job_title": "Energy Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "DNV",
    "skills": "word"
  },
  {
    "job_id": 382334,
    "job_title": "Energy Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "DNV",
    "skills": "powerpoint"
  },
  {
    "job_id": 382334,
    "job_title": "Energy Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "DNV",
    "skills": "jira"
  },
  {
    "job_id": 1574686,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Insight Global",
    "skills": "sql"
  },
  {
    "job_id": 1574686,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Insight Global",
    "skills": "t-sql"
  },
  {
    "job_id": 1574686,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Insight Global",
    "skills": "sql server"
  },
  {
    "job_id": 1574686,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Insight Global",
    "skills": "azure"
  },
  {
    "job_id": 1574686,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Insight Global",
    "skills": "aws"
  },
  {
    "job_id": 1574686,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Insight Global",
    "skills": "power bi"
  },
  {
    "job_id": 1574686,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Insight Global",
    "skills": "ssis"
  },
  {
    "job_id": 1574686,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Insight Global",
    "skills": "ssrs"
  },
  {
    "job_id": 412163,
    "job_title": "Medicaid Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Apex Systems",
    "skills": "sql"
  },
  {
    "job_id": 1210470,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Convergenz",
    "skills": "sql"
  },
  {
    "job_id": 1210470,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Convergenz",
    "skills": "r"
  },
  {
    "job_id": 1210470,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Convergenz",
    "skills": "sas"
  },
  {
    "job_id": 1210470,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Convergenz",
    "skills": "tableau"
  },
  {
    "job_id": 1210470,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Convergenz",
    "skills": "power bi"
  },
  {
    "job_id": 1210470,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Convergenz",
    "skills": "sas"
  },
  {
    "job_id": 321727,
    "job_title": "Data Analyst III",
    "salary_year_avg": "110000.0",
    "company_name": "CREDITSERVE INC",
    "skills": "sql"
  },
  {
    "job_id": 321727,
    "job_title": "Data Analyst III",
    "salary_year_avg": "110000.0",
    "company_name": "CREDITSERVE INC",
    "skills": "python"
  },
  {
    "job_id": 321727,
    "job_title": "Data Analyst III",
    "salary_year_avg": "110000.0",
    "company_name": "CREDITSERVE INC",
    "skills": "excel"
  },
  {
    "job_id": 321727,
    "job_title": "Data Analyst III",
    "salary_year_avg": "110000.0",
    "company_name": "CREDITSERVE INC",
    "skills": "tableau"
  },
  {
    "job_id": 321727,
    "job_title": "Data Analyst III",
    "salary_year_avg": "110000.0",
    "company_name": "CREDITSERVE INC",
    "skills": "word"
  },
  {
    "job_id": 321727,
    "job_title": "Data Analyst III",
    "salary_year_avg": "110000.0",
    "company_name": "CREDITSERVE INC",
    "skills": "powerpoint"
  },
  {
    "job_id": 894317,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Transportation",
    "skills": "sql"
  },
  {
    "job_id": 894317,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Transportation",
    "skills": "python"
  },
  {
    "job_id": 409831,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Trinity Solar Careers",
    "skills": "sql"
  },
  {
    "job_id": 409831,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Trinity Solar Careers",
    "skills": "t-sql"
  },
  {
    "job_id": 409831,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Trinity Solar Careers",
    "skills": "sql server"
  },
  {
    "job_id": 409831,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Trinity Solar Careers",
    "skills": "excel"
  },
  {
    "job_id": 409831,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Trinity Solar Careers",
    "skills": "power bi"
  },
  {
    "job_id": 409831,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Trinity Solar Careers",
    "skills": "dax"
  },
  {
    "job_id": 409831,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Trinity Solar Careers",
    "skills": "ssis"
  },
  {
    "job_id": 1434170,
    "job_title": "Data Analyst III",
    "salary_year_avg": "110000.0",
    "company_name": "CREDITSERVE INC",
    "skills": "sql"
  },
  {
    "job_id": 1434170,
    "job_title": "Data Analyst III",
    "salary_year_avg": "110000.0",
    "company_name": "CREDITSERVE INC",
    "skills": "python"
  },
  {
    "job_id": 1434170,
    "job_title": "Data Analyst III",
    "salary_year_avg": "110000.0",
    "company_name": "CREDITSERVE INC",
    "skills": "excel"
  },
  {
    "job_id": 1434170,
    "job_title": "Data Analyst III",
    "salary_year_avg": "110000.0",
    "company_name": "CREDITSERVE INC",
    "skills": "tableau"
  },
  {
    "job_id": 1434170,
    "job_title": "Data Analyst III",
    "salary_year_avg": "110000.0",
    "company_name": "CREDITSERVE INC",
    "skills": "word"
  },
  {
    "job_id": 1434170,
    "job_title": "Data Analyst III",
    "salary_year_avg": "110000.0",
    "company_name": "CREDITSERVE INC",
    "skills": "powerpoint"
  },
  {
    "job_id": 991817,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "excel"
  },
  {
    "job_id": 480243,
    "job_title": "Data Analyst - Remote",
    "salary_year_avg": "110000.0",
    "company_name": "Cava Connect",
    "skills": "sql"
  },
  {
    "job_id": 480243,
    "job_title": "Data Analyst - Remote",
    "salary_year_avg": "110000.0",
    "company_name": "Cava Connect",
    "skills": "python"
  },
  {
    "job_id": 480243,
    "job_title": "Data Analyst - Remote",
    "salary_year_avg": "110000.0",
    "company_name": "Cava Connect",
    "skills": "vba"
  },
  {
    "job_id": 480243,
    "job_title": "Data Analyst - Remote",
    "salary_year_avg": "110000.0",
    "company_name": "Cava Connect",
    "skills": "excel"
  },
  {
    "job_id": 480243,
    "job_title": "Data Analyst - Remote",
    "salary_year_avg": "110000.0",
    "company_name": "Cava Connect",
    "skills": "power bi"
  },
  {
    "job_id": 480243,
    "job_title": "Data Analyst - Remote",
    "salary_year_avg": "110000.0",
    "company_name": "Cava Connect",
    "skills": "dax"
  },
  {
    "job_id": 480243,
    "job_title": "Data Analyst - Remote",
    "salary_year_avg": "110000.0",
    "company_name": "Cava Connect",
    "skills": "ssis"
  },
  {
    "job_id": 480243,
    "job_title": "Data Analyst - Remote",
    "salary_year_avg": "110000.0",
    "company_name": "Cava Connect",
    "skills": "ssrs"
  },
  {
    "job_id": 1047698,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Insight Global",
    "skills": "sql"
  },
  {
    "job_id": 1047698,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Insight Global",
    "skills": "aws"
  },
  {
    "job_id": 991303,
    "job_title": "EDI Data Analyst/Business Systems Analyst III  (Great Place to...",
    "salary_year_avg": "109600.0",
    "company_name": "Paradigm",
    "skills": "sql"
  },
  {
    "job_id": 991303,
    "job_title": "EDI Data Analyst/Business Systems Analyst III  (Great Place to...",
    "salary_year_avg": "109600.0",
    "company_name": "Paradigm",
    "skills": "python"
  },
  {
    "job_id": 991303,
    "job_title": "EDI Data Analyst/Business Systems Analyst III  (Great Place to...",
    "salary_year_avg": "109600.0",
    "company_name": "Paradigm",
    "skills": "java"
  },
  {
    "job_id": 991303,
    "job_title": "EDI Data Analyst/Business Systems Analyst III  (Great Place to...",
    "salary_year_avg": "109600.0",
    "company_name": "Paradigm",
    "skills": "shell"
  },
  {
    "job_id": 991303,
    "job_title": "EDI Data Analyst/Business Systems Analyst III  (Great Place to...",
    "salary_year_avg": "109600.0",
    "company_name": "Paradigm",
    "skills": "javascript"
  },
  {
    "job_id": 991303,
    "job_title": "EDI Data Analyst/Business Systems Analyst III  (Great Place to...",
    "salary_year_avg": "109600.0",
    "company_name": "Paradigm",
    "skills": "bash"
  },
  {
    "job_id": 991303,
    "job_title": "EDI Data Analyst/Business Systems Analyst III  (Great Place to...",
    "salary_year_avg": "109600.0",
    "company_name": "Paradigm",
    "skills": "powershell"
  },
  {
    "job_id": 991303,
    "job_title": "EDI Data Analyst/Business Systems Analyst III  (Great Place to...",
    "salary_year_avg": "109600.0",
    "company_name": "Paradigm",
    "skills": "sql server"
  },
  {
    "job_id": 991303,
    "job_title": "EDI Data Analyst/Business Systems Analyst III  (Great Place to...",
    "salary_year_avg": "109600.0",
    "company_name": "Paradigm",
    "skills": "db2"
  },
  {
    "job_id": 991303,
    "job_title": "EDI Data Analyst/Business Systems Analyst III  (Great Place to...",
    "salary_year_avg": "109600.0",
    "company_name": "Paradigm",
    "skills": "oracle"
  },
  {
    "job_id": 991303,
    "job_title": "EDI Data Analyst/Business Systems Analyst III  (Great Place to...",
    "salary_year_avg": "109600.0",
    "company_name": "Paradigm",
    "skills": "flow"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "sql"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "python"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "r"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "sas"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "hadoop"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "excel"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "tableau"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "power bi"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "sas"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "word"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "powerpoint"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "outlook"
  },
  {
    "job_id": 600392,
    "job_title": "REMOTE PowerBI Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "Insight Global",
    "skills": "sql"
  },
  {
    "job_id": 1795029,
    "job_title": "Data Analyst - Remote",
    "salary_year_avg": "107500.0",
    "company_name": "Dice",
    "skills": "sql"
  },
  {
    "job_id": 1795029,
    "job_title": "Data Analyst - Remote",
    "salary_year_avg": "107500.0",
    "company_name": "Dice",
    "skills": "python"
  },
  {
    "job_id": 1795029,
    "job_title": "Data Analyst - Remote",
    "salary_year_avg": "107500.0",
    "company_name": "Dice",
    "skills": "power bi"
  },
  {
    "job_id": 1795029,
    "job_title": "Data Analyst - Remote",
    "salary_year_avg": "107500.0",
    "company_name": "Dice",
    "skills": "sap"
  },
  {
    "job_id": 1026200,
    "job_title": "Data Analyst, Finance and Accounting (Remote)",
    "salary_year_avg": "107500.0",
    "company_name": "Rhino",
    "skills": "sql"
  },
  {
    "job_id": 1026200,
    "job_title": "Data Analyst, Finance and Accounting (Remote)",
    "salary_year_avg": "107500.0",
    "company_name": "Rhino",
    "skills": "bigquery"
  },
  {
    "job_id": 1026200,
    "job_title": "Data Analyst, Finance and Accounting (Remote)",
    "salary_year_avg": "107500.0",
    "company_name": "Rhino",
    "skills": "excel"
  },
  {
    "job_id": 255533,
    "job_title": "IT Data Analyst - Remote | WFH",
    "salary_year_avg": "107500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 255533,
    "job_title": "IT Data Analyst - Remote | WFH",
    "salary_year_avg": "107500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 255533,
    "job_title": "IT Data Analyst - Remote | WFH",
    "salary_year_avg": "107500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 255533,
    "job_title": "IT Data Analyst - Remote | WFH",
    "salary_year_avg": "107500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "html"
  },
  {
    "job_id": 255533,
    "job_title": "IT Data Analyst - Remote | WFH",
    "salary_year_avg": "107500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql server"
  },
  {
    "job_id": 255533,
    "job_title": "IT Data Analyst - Remote | WFH",
    "salary_year_avg": "107500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "azure"
  },
  {
    "job_id": 255533,
    "job_title": "IT Data Analyst - Remote | WFH",
    "salary_year_avg": "107500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "aws"
  },
  {
    "job_id": 255533,
    "job_title": "IT Data Analyst - Remote | WFH",
    "salary_year_avg": "107500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 255533,
    "job_title": "IT Data Analyst - Remote | WFH",
    "salary_year_avg": "107500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 255533,
    "job_title": "IT Data Analyst - Remote | WFH",
    "salary_year_avg": "107500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "power bi"
  },
  {
    "job_id": 65900,
    "job_title": "Data and Process Modeling Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "Get It Recruit - Hospitality",
    "skills": "excel"
  },
  {
    "job_id": 65900,
    "job_title": "Data and Process Modeling Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "Get It Recruit - Hospitality",
    "skills": "powerpoint"
  },
  {
    "job_id": 107274,
    "job_title": "Data Analyst",
    "salary_year_avg": "106562.5",
    "company_name": "Cherry Bekaert Advisory, LLC",
    "skills": "sql"
  },
  {
    "job_id": 107274,
    "job_title": "Data Analyst",
    "salary_year_avg": "106562.5",
    "company_name": "Cherry Bekaert Advisory, LLC",
    "skills": "python"
  },
  {
    "job_id": 107274,
    "job_title": "Data Analyst",
    "salary_year_avg": "106562.5",
    "company_name": "Cherry Bekaert Advisory, LLC",
    "skills": "r"
  },
  {
    "job_id": 107274,
    "job_title": "Data Analyst",
    "salary_year_avg": "106562.5",
    "company_name": "Cherry Bekaert Advisory, LLC",
    "skills": "pandas"
  },
  {
    "job_id": 107274,
    "job_title": "Data Analyst",
    "salary_year_avg": "106562.5",
    "company_name": "Cherry Bekaert Advisory, LLC",
    "skills": "numpy"
  },
  {
    "job_id": 107274,
    "job_title": "Data Analyst",
    "salary_year_avg": "106562.5",
    "company_name": "Cherry Bekaert Advisory, LLC",
    "skills": "scikit-learn"
  },
  {
    "job_id": 107274,
    "job_title": "Data Analyst",
    "salary_year_avg": "106562.5",
    "company_name": "Cherry Bekaert Advisory, LLC",
    "skills": "tableau"
  },
  {
    "job_id": 107274,
    "job_title": "Data Analyst",
    "salary_year_avg": "106562.5",
    "company_name": "Cherry Bekaert Advisory, LLC",
    "skills": "power bi"
  },
  {
    "job_id": 107274,
    "job_title": "Data Analyst",
    "salary_year_avg": "106562.5",
    "company_name": "Cherry Bekaert Advisory, LLC",
    "skills": "alteryx"
  },
  {
    "job_id": 228239,
    "job_title": "Data Analyst II - Firm Analytics",
    "salary_year_avg": "106479.0",
    "company_name": "Edward Jones",
    "skills": "sql"
  },
  {
    "job_id": 228239,
    "job_title": "Data Analyst II - Firm Analytics",
    "salary_year_avg": "106479.0",
    "company_name": "Edward Jones",
    "skills": "python"
  },
  {
    "job_id": 228239,
    "job_title": "Data Analyst II - Firm Analytics",
    "salary_year_avg": "106479.0",
    "company_name": "Edward Jones",
    "skills": "r"
  },
  {
    "job_id": 228239,
    "job_title": "Data Analyst II - Firm Analytics",
    "salary_year_avg": "106479.0",
    "company_name": "Edward Jones",
    "skills": "sas"
  },
  {
    "job_id": 228239,
    "job_title": "Data Analyst II - Firm Analytics",
    "salary_year_avg": "106479.0",
    "company_name": "Edward Jones",
    "skills": "oracle"
  },
  {
    "job_id": 228239,
    "job_title": "Data Analyst II - Firm Analytics",
    "salary_year_avg": "106479.0",
    "company_name": "Edward Jones",
    "skills": "snowflake"
  },
  {
    "job_id": 228239,
    "job_title": "Data Analyst II - Firm Analytics",
    "salary_year_avg": "106479.0",
    "company_name": "Edward Jones",
    "skills": "tableau"
  },
  {
    "job_id": 228239,
    "job_title": "Data Analyst II - Firm Analytics",
    "salary_year_avg": "106479.0",
    "company_name": "Edward Jones",
    "skills": "sas"
  },
  {
    "job_id": 228239,
    "job_title": "Data Analyst II - Firm Analytics",
    "salary_year_avg": "106479.0",
    "company_name": "Edward Jones",
    "skills": "spss"
  },
  {
    "job_id": 617583,
    "job_title": "Data Analyst II - Firm Analytics",
    "salary_year_avg": "106479.0",
    "company_name": "Edward Jones",
    "skills": "sql"
  },
  {
    "job_id": 617583,
    "job_title": "Data Analyst II - Firm Analytics",
    "salary_year_avg": "106479.0",
    "company_name": "Edward Jones",
    "skills": "python"
  },
  {
    "job_id": 617583,
    "job_title": "Data Analyst II - Firm Analytics",
    "salary_year_avg": "106479.0",
    "company_name": "Edward Jones",
    "skills": "r"
  },
  {
    "job_id": 617583,
    "job_title": "Data Analyst II - Firm Analytics",
    "salary_year_avg": "106479.0",
    "company_name": "Edward Jones",
    "skills": "sas"
  },
  {
    "job_id": 617583,
    "job_title": "Data Analyst II - Firm Analytics",
    "salary_year_avg": "106479.0",
    "company_name": "Edward Jones",
    "skills": "oracle"
  },
  {
    "job_id": 617583,
    "job_title": "Data Analyst II - Firm Analytics",
    "salary_year_avg": "106479.0",
    "company_name": "Edward Jones",
    "skills": "snowflake"
  },
  {
    "job_id": 617583,
    "job_title": "Data Analyst II - Firm Analytics",
    "salary_year_avg": "106479.0",
    "company_name": "Edward Jones",
    "skills": "tableau"
  },
  {
    "job_id": 617583,
    "job_title": "Data Analyst II - Firm Analytics",
    "salary_year_avg": "106479.0",
    "company_name": "Edward Jones",
    "skills": "sas"
  },
  {
    "job_id": 617583,
    "job_title": "Data Analyst II - Firm Analytics",
    "salary_year_avg": "106479.0",
    "company_name": "Edward Jones",
    "skills": "spss"
  },
  {
    "job_id": 55833,
    "job_title": "Data Governance Analyst II - Frameworks, Standards, & Policies",
    "salary_year_avg": "106479.0",
    "company_name": "Edward Jones",
    "skills": "vba"
  },
  {
    "job_id": 55833,
    "job_title": "Data Governance Analyst II - Frameworks, Standards, & Policies",
    "salary_year_avg": "106479.0",
    "company_name": "Edward Jones",
    "skills": "excel"
  },
  {
    "job_id": 55833,
    "job_title": "Data Governance Analyst II - Frameworks, Standards, & Policies",
    "salary_year_avg": "106479.0",
    "company_name": "Edward Jones",
    "skills": "word"
  },
  {
    "job_id": 55833,
    "job_title": "Data Governance Analyst II - Frameworks, Standards, & Policies",
    "salary_year_avg": "106479.0",
    "company_name": "Edward Jones",
    "skills": "powerpoint"
  },
  {
    "job_id": 1454946,
    "job_title": "Market Research & Data Analyst",
    "salary_year_avg": "106000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1454946,
    "job_title": "Market Research & Data Analyst",
    "salary_year_avg": "106000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 1454946,
    "job_title": "Market Research & Data Analyst",
    "salary_year_avg": "106000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 1454946,
    "job_title": "Market Research & Data Analyst",
    "salary_year_avg": "106000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 800017,
    "job_title": "Data Analyst",
    "salary_year_avg": "106000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 800017,
    "job_title": "Data Analyst",
    "salary_year_avg": "106000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 800017,
    "job_title": "Data Analyst",
    "salary_year_avg": "106000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "snowflake"
  },
  {
    "job_id": 800017,
    "job_title": "Data Analyst",
    "salary_year_avg": "106000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 800017,
    "job_title": "Data Analyst",
    "salary_year_avg": "106000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 800017,
    "job_title": "Data Analyst",
    "salary_year_avg": "106000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "git"
  },
  {
    "job_id": 601788,
    "job_title": "Data Visualization Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "html"
  },
  {
    "job_id": 601788,
    "job_title": "Data Visualization Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 601788,
    "job_title": "Data Visualization Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 601788,
    "job_title": "Data Visualization Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "power bi"
  },
  {
    "job_id": 1309967,
    "job_title": "Sr Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "CyberCoders",
    "skills": "sql"
  },
  {
    "job_id": 1309967,
    "job_title": "Sr Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "CyberCoders",
    "skills": "oracle"
  },
  {
    "job_id": 1309967,
    "job_title": "Sr Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "CyberCoders",
    "skills": "excel"
  },
  {
    "job_id": 1309967,
    "job_title": "Sr Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "CyberCoders",
    "skills": "tableau"
  },
  {
    "job_id": 1091932,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "sql"
  },
  {
    "job_id": 1091932,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "python"
  },
  {
    "job_id": 1091932,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "tableau"
  },
  {
    "job_id": 1091932,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "power bi"
  },
  {
    "job_id": 909000,
    "job_title": "Associate Director, Data Analysis",
    "salary_year_avg": "105000.0",
    "company_name": "EL Education (Formerly Expeditionary Learning)",
    "skills": "r"
  },
  {
    "job_id": 909000,
    "job_title": "Associate Director, Data Analysis",
    "salary_year_avg": "105000.0",
    "company_name": "EL Education (Formerly Expeditionary Learning)",
    "skills": "tableau"
  },
  {
    "job_id": 909000,
    "job_title": "Associate Director, Data Analysis",
    "salary_year_avg": "105000.0",
    "company_name": "EL Education (Formerly Expeditionary Learning)",
    "skills": "word"
  },
  {
    "job_id": 426601,
    "job_title": "Product Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Syrup",
    "skills": "sql"
  },
  {
    "job_id": 426601,
    "job_title": "Product Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Syrup",
    "skills": "python"
  },
  {
    "job_id": 426601,
    "job_title": "Product Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Syrup",
    "skills": "r"
  },
  {
    "job_id": 426601,
    "job_title": "Product Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Syrup",
    "skills": "spark"
  },
  {
    "job_id": 426601,
    "job_title": "Product Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Syrup",
    "skills": "hadoop"
  },
  {
    "job_id": 426601,
    "job_title": "Product Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Syrup",
    "skills": "tableau"
  },
  {
    "job_id": 426601,
    "job_title": "Product Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Syrup",
    "skills": "power bi"
  },
  {
    "job_id": 1344229,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Vista Global Solutions, LLC",
    "skills": "sql"
  },
  {
    "job_id": 1344229,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Vista Global Solutions, LLC",
    "skills": "python"
  },
  {
    "job_id": 1344229,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Vista Global Solutions, LLC",
    "skills": "r"
  },
  {
    "job_id": 1344229,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Vista Global Solutions, LLC",
    "skills": "aws"
  },
  {
    "job_id": 1344229,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Vista Global Solutions, LLC",
    "skills": "redshift"
  },
  {
    "job_id": 1344229,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Vista Global Solutions, LLC",
    "skills": "excel"
  },
  {
    "job_id": 1344229,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Vista Global Solutions, LLC",
    "skills": "tableau"
  },
  {
    "job_id": 1344229,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Vista Global Solutions, LLC",
    "skills": "qlik"
  },
  {
    "job_id": 1069248,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Starr And Associates LLC",
    "skills": "sql"
  },
  {
    "job_id": 1069248,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Starr And Associates LLC",
    "skills": "python"
  },
  {
    "job_id": 1069248,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Starr And Associates LLC",
    "skills": "r"
  },
  {
    "job_id": 1069248,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Starr And Associates LLC",
    "skills": "excel"
  },
  {
    "job_id": 1069248,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Starr And Associates LLC",
    "skills": "tableau"
  },
  {
    "job_id": 1069248,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Starr And Associates LLC",
    "skills": "qlik"
  },
  {
    "job_id": 936268,
    "job_title": "Marketing Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Syndicatebleu",
    "skills": "sql"
  },
  {
    "job_id": 936268,
    "job_title": "Marketing Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Syndicatebleu",
    "skills": "javascript"
  },
  {
    "job_id": 936268,
    "job_title": "Marketing Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Syndicatebleu",
    "skills": "html"
  },
  {
    "job_id": 936268,
    "job_title": "Marketing Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Syndicatebleu",
    "skills": "excel"
  },
  {
    "job_id": 936268,
    "job_title": "Marketing Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Syndicatebleu",
    "skills": "looker"
  },
  {
    "job_id": 371104,
    "job_title": "Clinical Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Modis",
    "skills": "sql"
  },
  {
    "job_id": 371104,
    "job_title": "Clinical Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Modis",
    "skills": "azure"
  },
  {
    "job_id": 748403,
    "job_title": "Sales Comp Data Analyst (Remote, U.S.)",
    "salary_year_avg": "104300.0",
    "company_name": "Pitney Bowes",
    "skills": "go"
  },
  {
    "job_id": 748403,
    "job_title": "Sales Comp Data Analyst (Remote, U.S.)",
    "salary_year_avg": "104300.0",
    "company_name": "Pitney Bowes",
    "skills": "excel"
  },
  {
    "job_id": 748403,
    "job_title": "Sales Comp Data Analyst (Remote, U.S.)",
    "salary_year_avg": "104300.0",
    "company_name": "Pitney Bowes",
    "skills": "tableau"
  },
  {
    "job_id": 748403,
    "job_title": "Sales Comp Data Analyst (Remote, U.S.)",
    "salary_year_avg": "104300.0",
    "company_name": "Pitney Bowes",
    "skills": "power bi"
  },
  {
    "job_id": 380744,
    "job_title": "Health Information Management Data Analyst III",
    "salary_year_avg": "104106.5",
    "company_name": "Health Plan of San Mateo",
    "skills": "sas"
  },
  {
    "job_id": 380744,
    "job_title": "Health Information Management Data Analyst III",
    "salary_year_avg": "104106.5",
    "company_name": "Health Plan of San Mateo",
    "skills": "excel"
  },
  {
    "job_id": 380744,
    "job_title": "Health Information Management Data Analyst III",
    "salary_year_avg": "104106.5",
    "company_name": "Health Plan of San Mateo",
    "skills": "sas"
  },
  {
    "job_id": 380744,
    "job_title": "Health Information Management Data Analyst III",
    "salary_year_avg": "104106.5",
    "company_name": "Health Plan of San Mateo",
    "skills": "word"
  },
  {
    "job_id": 380744,
    "job_title": "Health Information Management Data Analyst III",
    "salary_year_avg": "104106.5",
    "company_name": "Health Plan of San Mateo",
    "skills": "spreadsheet"
  },
  {
    "job_id": 380744,
    "job_title": "Health Information Management Data Analyst III",
    "salary_year_avg": "104106.5",
    "company_name": "Health Plan of San Mateo",
    "skills": "powerpoint"
  },
  {
    "job_id": 380744,
    "job_title": "Health Information Management Data Analyst III",
    "salary_year_avg": "104106.5",
    "company_name": "Health Plan of San Mateo",
    "skills": "outlook"
  },
  {
    "job_id": 909351,
    "job_title": "Data Analyst",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 909351,
    "job_title": "Data Analyst",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 909351,
    "job_title": "Data Analyst",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 909351,
    "job_title": "Data Analyst",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "javascript"
  },
  {
    "job_id": 909351,
    "job_title": "Data Analyst",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "c++"
  },
  {
    "job_id": 909351,
    "job_title": "Data Analyst",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "snowflake"
  },
  {
    "job_id": 909351,
    "job_title": "Data Analyst",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 909351,
    "job_title": "Data Analyst",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 909351,
    "job_title": "Data Analyst",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 909351,
    "job_title": "Data Analyst",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "qlik"
  },
  {
    "job_id": 909351,
    "job_title": "Data Analyst",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "powerpoint"
  },
  {
    "job_id": 1559111,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "103500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1667594,
    "job_title": "Data Integration Analyst",
    "salary_year_avg": "103000.0",
    "company_name": "AIDS Healthcare Foundation",
    "skills": "sql"
  },
  {
    "job_id": 1667594,
    "job_title": "Data Integration Analyst",
    "salary_year_avg": "103000.0",
    "company_name": "AIDS Healthcare Foundation",
    "skills": "python"
  },
  {
    "job_id": 1667594,
    "job_title": "Data Integration Analyst",
    "salary_year_avg": "103000.0",
    "company_name": "AIDS Healthcare Foundation",
    "skills": "r"
  },
  {
    "job_id": 1667594,
    "job_title": "Data Integration Analyst",
    "salary_year_avg": "103000.0",
    "company_name": "AIDS Healthcare Foundation",
    "skills": "t-sql"
  },
  {
    "job_id": 1667594,
    "job_title": "Data Integration Analyst",
    "salary_year_avg": "103000.0",
    "company_name": "AIDS Healthcare Foundation",
    "skills": "sql server"
  },
  {
    "job_id": 1667594,
    "job_title": "Data Integration Analyst",
    "salary_year_avg": "103000.0",
    "company_name": "AIDS Healthcare Foundation",
    "skills": "oracle"
  },
  {
    "job_id": 1667594,
    "job_title": "Data Integration Analyst",
    "salary_year_avg": "103000.0",
    "company_name": "AIDS Healthcare Foundation",
    "skills": "unix"
  },
  {
    "job_id": 1667594,
    "job_title": "Data Integration Analyst",
    "salary_year_avg": "103000.0",
    "company_name": "AIDS Healthcare Foundation",
    "skills": "windows"
  },
  {
    "job_id": 1667594,
    "job_title": "Data Integration Analyst",
    "salary_year_avg": "103000.0",
    "company_name": "AIDS Healthcare Foundation",
    "skills": "tableau"
  },
  {
    "job_id": 1667594,
    "job_title": "Data Integration Analyst",
    "salary_year_avg": "103000.0",
    "company_name": "AIDS Healthcare Foundation",
    "skills": "ssis"
  },
  {
    "job_id": 1667594,
    "job_title": "Data Integration Analyst",
    "salary_year_avg": "103000.0",
    "company_name": "AIDS Healthcare Foundation",
    "skills": "ssrs"
  },
  {
    "job_id": 707689,
    "job_title": "Epic Chronicles Database Analyst",
    "salary_year_avg": "103000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1679633,
    "job_title": "Data Wrangling and Visualization Manager",
    "salary_year_avg": "103000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1679633,
    "job_title": "Data Wrangling and Visualization Manager",
    "salary_year_avg": "103000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1679633,
    "job_title": "Data Wrangling and Visualization Manager",
    "salary_year_avg": "103000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "azure"
  },
  {
    "job_id": 1679633,
    "job_title": "Data Wrangling and Visualization Manager",
    "salary_year_avg": "103000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "databricks"
  },
  {
    "job_id": 1679633,
    "job_title": "Data Wrangling and Visualization Manager",
    "salary_year_avg": "103000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "aws"
  },
  {
    "job_id": 1679633,
    "job_title": "Data Wrangling and Visualization Manager",
    "salary_year_avg": "103000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "spark"
  },
  {
    "job_id": 949643,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 949643,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 949643,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "power bi"
  },
  {
    "job_id": 535535,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Orion Groups",
    "skills": "python"
  },
  {
    "job_id": 535535,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Orion Groups",
    "skills": "bash"
  },
  {
    "job_id": 535535,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Orion Groups",
    "skills": "gcp"
  },
  {
    "job_id": 535535,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Orion Groups",
    "skills": "spark"
  },
  {
    "job_id": 535535,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Orion Groups",
    "skills": "hadoop"
  },
  {
    "job_id": 535535,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Orion Groups",
    "skills": "jenkins"
  },
  {
    "job_id": 535535,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Orion Groups",
    "skills": "flow"
  },
  {
    "job_id": 535535,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Orion Groups",
    "skills": "github"
  },
  {
    "job_id": 535535,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Orion Groups",
    "skills": "jira"
  },
  {
    "job_id": 535535,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Orion Groups",
    "skills": "confluence"
  },
  {
    "job_id": 523374,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Insight Global",
    "skills": "sql"
  },
  {
    "job_id": 523374,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Insight Global",
    "skills": "javascript"
  },
  {
    "job_id": 523374,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Insight Global",
    "skills": "tableau"
  },
  {
    "job_id": 1277458,
    "job_title": "Data Analyst",
    "salary_year_avg": "102250.0",
    "company_name": "ZipRecruiter",
    "skills": "sql"
  },
  {
    "job_id": 1277458,
    "job_title": "Data Analyst",
    "salary_year_avg": "102250.0",
    "company_name": "ZipRecruiter",
    "skills": "python"
  },
  {
    "job_id": 4420,
    "job_title": "Senior System/Data Analyst",
    "salary_year_avg": "102000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 4420,
    "job_title": "Senior System/Data Analyst",
    "salary_year_avg": "102000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 4420,
    "job_title": "Senior System/Data Analyst",
    "salary_year_avg": "102000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "aws"
  },
  {
    "job_id": 4420,
    "job_title": "Senior System/Data Analyst",
    "salary_year_avg": "102000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "redshift"
  },
  {
    "job_id": 4420,
    "job_title": "Senior System/Data Analyst",
    "salary_year_avg": "102000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "oracle"
  },
  {
    "job_id": 4420,
    "job_title": "Senior System/Data Analyst",
    "salary_year_avg": "102000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 1526567,
    "job_title": "Data Analyst - Healthcare Industry (Remote)",
    "salary_year_avg": "102000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1526567,
    "job_title": "Data Analyst - Healthcare Industry (Remote)",
    "salary_year_avg": "102000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 1378977,
    "job_title": "Remote Data Analyst III",
    "salary_year_avg": "102000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1378977,
    "job_title": "Remote Data Analyst III",
    "salary_year_avg": "102000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 1440,
    "job_title": "Data Analyst - Empowering Insights for a Healthier Future",
    "salary_year_avg": "101500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1440,
    "job_title": "Data Analyst - Empowering Insights for a Healthier Future",
    "salary_year_avg": "101500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 686507,
    "job_title": "Data Analyst",
    "salary_year_avg": "101500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 686507,
    "job_title": "Data Analyst",
    "salary_year_avg": "101500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 686507,
    "job_title": "Data Analyst",
    "salary_year_avg": "101500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 686507,
    "job_title": "Data Analyst",
    "salary_year_avg": "101500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "azure"
  },
  {
    "job_id": 1234973,
    "job_title": "Data Analyst",
    "salary_year_avg": "101500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1234973,
    "job_title": "Data Analyst",
    "salary_year_avg": "101500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "hadoop"
  },
  {
    "job_id": 1234973,
    "job_title": "Data Analyst",
    "salary_year_avg": "101500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 1234973,
    "job_title": "Data Analyst",
    "salary_year_avg": "101500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "jira"
  },
  {
    "job_id": 1234973,
    "job_title": "Data Analyst",
    "salary_year_avg": "101500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "confluence"
  },
  {
    "job_id": 1519017,
    "job_title": "Sr Supplemental Data Analyst - Remote",
    "salary_year_avg": "100400.0",
    "company_name": "UnitedHealth Group",
    "skills": "sql"
  },
  {
    "job_id": 1519017,
    "job_title": "Sr Supplemental Data Analyst - Remote",
    "salary_year_avg": "100400.0",
    "company_name": "UnitedHealth Group",
    "skills": "excel"
  },
  {
    "job_id": 1519017,
    "job_title": "Sr Supplemental Data Analyst - Remote",
    "salary_year_avg": "100400.0",
    "company_name": "UnitedHealth Group",
    "skills": "word"
  },
  {
    "job_id": 1519017,
    "job_title": "Sr Supplemental Data Analyst - Remote",
    "salary_year_avg": "100400.0",
    "company_name": "UnitedHealth Group",
    "skills": "powerpoint"
  },
  {
    "job_id": 1519017,
    "job_title": "Sr Supplemental Data Analyst - Remote",
    "salary_year_avg": "100400.0",
    "company_name": "UnitedHealth Group",
    "skills": "outlook"
  },
  {
    "job_id": 1519017,
    "job_title": "Sr Supplemental Data Analyst - Remote",
    "salary_year_avg": "100400.0",
    "company_name": "UnitedHealth Group",
    "skills": "ms access"
  },
  {
    "job_id": 1519017,
    "job_title": "Sr Supplemental Data Analyst - Remote",
    "salary_year_avg": "100400.0",
    "company_name": "UnitedHealth Group",
    "skills": "visio"
  },
  {
    "job_id": 838504,
    "job_title": "Data Analyst 2 - Remote",
    "salary_year_avg": "100400.0",
    "company_name": "Optum",
    "skills": "sql"
  },
  {
    "job_id": 838504,
    "job_title": "Data Analyst 2 - Remote",
    "salary_year_avg": "100400.0",
    "company_name": "Optum",
    "skills": "c#"
  },
  {
    "job_id": 838504,
    "job_title": "Data Analyst 2 - Remote",
    "salary_year_avg": "100400.0",
    "company_name": "Optum",
    "skills": "sql server"
  },
  {
    "job_id": 838504,
    "job_title": "Data Analyst 2 - Remote",
    "salary_year_avg": "100400.0",
    "company_name": "Optum",
    "skills": "ssis"
  },
  {
    "job_id": 838504,
    "job_title": "Data Analyst 2 - Remote",
    "salary_year_avg": "100400.0",
    "company_name": "Optum",
    "skills": "ssrs"
  },
  {
    "job_id": 838504,
    "job_title": "Data Analyst 2 - Remote",
    "salary_year_avg": "100400.0",
    "company_name": "Optum",
    "skills": "github"
  },
  {
    "job_id": 136192,
    "job_title": "Healthcare Data Analyst- Hybrid",
    "salary_year_avg": "100400.0",
    "company_name": "UnitedHealth Group",
    "skills": "sas"
  },
  {
    "job_id": 136192,
    "job_title": "Healthcare Data Analyst- Hybrid",
    "salary_year_avg": "100400.0",
    "company_name": "UnitedHealth Group",
    "skills": "go"
  },
  {
    "job_id": 136192,
    "job_title": "Healthcare Data Analyst- Hybrid",
    "salary_year_avg": "100400.0",
    "company_name": "UnitedHealth Group",
    "skills": "sas"
  },
  {
    "job_id": 1514995,
    "job_title": "Data analyst remote",
    "salary_year_avg": "100400.0",
    "company_name": "UnitedHealth Group",
    "skills": "python"
  },
  {
    "job_id": 1514995,
    "job_title": "Data analyst remote",
    "salary_year_avg": "100400.0",
    "company_name": "UnitedHealth Group",
    "skills": "snowflake"
  },
  {
    "job_id": 1514995,
    "job_title": "Data analyst remote",
    "salary_year_avg": "100400.0",
    "company_name": "UnitedHealth Group",
    "skills": "excel"
  },
  {
    "job_id": 1514995,
    "job_title": "Data analyst remote",
    "salary_year_avg": "100400.0",
    "company_name": "UnitedHealth Group",
    "skills": "tableau"
  },
  {
    "job_id": 1514995,
    "job_title": "Data analyst remote",
    "salary_year_avg": "100400.0",
    "company_name": "UnitedHealth Group",
    "skills": "power bi"
  },
  {
    "job_id": 1514995,
    "job_title": "Data analyst remote",
    "salary_year_avg": "100400.0",
    "company_name": "UnitedHealth Group",
    "skills": "alteryx"
  },
  {
    "job_id": 262921,
    "job_title": "Tableau Data Analyst",
    "salary_year_avg": "100000.5",
    "company_name": "SAIC",
    "skills": "sql"
  },
  {
    "job_id": 262921,
    "job_title": "Tableau Data Analyst",
    "salary_year_avg": "100000.5",
    "company_name": "SAIC",
    "skills": "java"
  },
  {
    "job_id": 262921,
    "job_title": "Tableau Data Analyst",
    "salary_year_avg": "100000.5",
    "company_name": "SAIC",
    "skills": "c++"
  },
  {
    "job_id": 262921,
    "job_title": "Tableau Data Analyst",
    "salary_year_avg": "100000.5",
    "company_name": "SAIC",
    "skills": "c#"
  },
  {
    "job_id": 262921,
    "job_title": "Tableau Data Analyst",
    "salary_year_avg": "100000.5",
    "company_name": "SAIC",
    "skills": "c"
  },
  {
    "job_id": 262921,
    "job_title": "Tableau Data Analyst",
    "salary_year_avg": "100000.5",
    "company_name": "SAIC",
    "skills": "sql server"
  },
  {
    "job_id": 262921,
    "job_title": "Tableau Data Analyst",
    "salary_year_avg": "100000.5",
    "company_name": "SAIC",
    "skills": "oracle"
  },
  {
    "job_id": 262921,
    "job_title": "Tableau Data Analyst",
    "salary_year_avg": "100000.5",
    "company_name": "SAIC",
    "skills": "excel"
  },
  {
    "job_id": 262921,
    "job_title": "Tableau Data Analyst",
    "salary_year_avg": "100000.5",
    "company_name": "SAIC",
    "skills": "tableau"
  },
  {
    "job_id": 262921,
    "job_title": "Tableau Data Analyst",
    "salary_year_avg": "100000.5",
    "company_name": "SAIC",
    "skills": "qlik"
  },
  {
    "job_id": 262921,
    "job_title": "Tableau Data Analyst",
    "salary_year_avg": "100000.5",
    "company_name": "SAIC",
    "skills": "visio"
  },
  {
    "job_id": 1217891,
    "job_title": "Data Analytics Manager",
    "salary_year_avg": "100000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 43545,
    "job_title": "Data Analyst - Healthcare",
    "salary_year_avg": "100000.0",
    "company_name": "InvestM Technology LLC",
    "skills": "sql"
  },
  {
    "job_id": 43545,
    "job_title": "Data Analyst - Healthcare",
    "salary_year_avg": "100000.0",
    "company_name": "InvestM Technology LLC",
    "skills": "python"
  },
  {
    "job_id": 43545,
    "job_title": "Data Analyst - Healthcare",
    "salary_year_avg": "100000.0",
    "company_name": "InvestM Technology LLC",
    "skills": "r"
  },
  {
    "job_id": 43545,
    "job_title": "Data Analyst - Healthcare",
    "salary_year_avg": "100000.0",
    "company_name": "InvestM Technology LLC",
    "skills": "tableau"
  },
  {
    "job_id": 43545,
    "job_title": "Data Analyst - Healthcare",
    "salary_year_avg": "100000.0",
    "company_name": "InvestM Technology LLC",
    "skills": "power bi"
  },
  {
    "job_id": 1331634,
    "job_title": "Data Analyst - Investment Management",
    "salary_year_avg": "100000.0",
    "company_name": "InvestM Technology LLC",
    "skills": "sql"
  },
  {
    "job_id": 1331634,
    "job_title": "Data Analyst - Investment Management",
    "salary_year_avg": "100000.0",
    "company_name": "InvestM Technology LLC",
    "skills": "python"
  },
  {
    "job_id": 1331634,
    "job_title": "Data Analyst - Investment Management",
    "salary_year_avg": "100000.0",
    "company_name": "InvestM Technology LLC",
    "skills": "java"
  },
  {
    "job_id": 1331634,
    "job_title": "Data Analyst - Investment Management",
    "salary_year_avg": "100000.0",
    "company_name": "InvestM Technology LLC",
    "skills": "r"
  },
  {
    "job_id": 1331634,
    "job_title": "Data Analyst - Investment Management",
    "salary_year_avg": "100000.0",
    "company_name": "InvestM Technology LLC",
    "skills": "tableau"
  },
  {
    "job_id": 1331634,
    "job_title": "Data Analyst - Investment Management",
    "salary_year_avg": "100000.0",
    "company_name": "InvestM Technology LLC",
    "skills": "power bi"
  },
  {
    "job_id": 736533,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "LHH",
    "skills": "sql"
  },
  {
    "job_id": 736533,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "LHH",
    "skills": "oracle"
  },
  {
    "job_id": 736533,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "LHH",
    "skills": "excel"
  },
  {
    "job_id": 736533,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "LHH",
    "skills": "tableau"
  },
  {
    "job_id": 736533,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "LHH",
    "skills": "sap"
  },
  {
    "job_id": 420972,
    "job_title": "Data Conversion Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Insight Global",
    "skills": "power bi"
  },
  {
    "job_id": 524146,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Hearth",
    "skills": "sql"
  },
  {
    "job_id": 524146,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Hearth",
    "skills": "python"
  },
  {
    "job_id": 524146,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Hearth",
    "skills": "r"
  },
  {
    "job_id": 524146,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Hearth",
    "skills": "tableau"
  },
  {
    "job_id": 524146,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Hearth",
    "skills": "looker"
  },
  {
    "job_id": 309300,
    "job_title": "Business Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Scaleai",
    "skills": "sql"
  },
  {
    "job_id": 309300,
    "job_title": "Business Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Scaleai",
    "skills": "python"
  },
  {
    "job_id": 309300,
    "job_title": "Business Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Scaleai",
    "skills": "tableau"
  },
  {
    "job_id": 1785328,
    "job_title": "Healthcare Quality Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Insight Global Healthcare",
    "skills": "excel"
  },
  {
    "job_id": 1785328,
    "job_title": "Healthcare Quality Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Insight Global Healthcare",
    "skills": "tableau"
  },
  {
    "job_id": 1785328,
    "job_title": "Healthcare Quality Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Insight Global Healthcare",
    "skills": "qlik"
  },
  {
    "job_id": 1785328,
    "job_title": "Healthcare Quality Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Insight Global Healthcare",
    "skills": "powerpoint"
  },
  {
    "job_id": 327502,
    "job_title": "Lead Data Analyst / SQL Developer",
    "salary_year_avg": "100000.0",
    "company_name": "Robert Half",
    "skills": "sql"
  },
  {
    "job_id": 327502,
    "job_title": "Lead Data Analyst / SQL Developer",
    "salary_year_avg": "100000.0",
    "company_name": "Robert Half",
    "skills": "python"
  },
  {
    "job_id": 327502,
    "job_title": "Lead Data Analyst / SQL Developer",
    "salary_year_avg": "100000.0",
    "company_name": "Robert Half",
    "skills": "go"
  },
  {
    "job_id": 327502,
    "job_title": "Lead Data Analyst / SQL Developer",
    "salary_year_avg": "100000.0",
    "company_name": "Robert Half",
    "skills": "c"
  },
  {
    "job_id": 327502,
    "job_title": "Lead Data Analyst / SQL Developer",
    "salary_year_avg": "100000.0",
    "company_name": "Robert Half",
    "skills": "sql server"
  },
  {
    "job_id": 882690,
    "job_title": "Marketing Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "LHH",
    "skills": "sql"
  },
  {
    "job_id": 882690,
    "job_title": "Marketing Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "LHH",
    "skills": "excel"
  },
  {
    "job_id": 882690,
    "job_title": "Marketing Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "LHH",
    "skills": "tableau"
  },
  {
    "job_id": 734020,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Govcio LLC",
    "skills": "sql"
  },
  {
    "job_id": 734020,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Govcio LLC",
    "skills": "oracle"
  },
  {
    "job_id": 734020,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Govcio LLC",
    "skills": "atlassian"
  },
  {
    "job_id": 670899,
    "job_title": "Research Data Analyst",
    "salary_year_avg": "99746.90625",
    "company_name": "Calbright College",
    "skills": "sql"
  },
  {
    "job_id": 670899,
    "job_title": "Research Data Analyst",
    "salary_year_avg": "99746.90625",
    "company_name": "Calbright College",
    "skills": "python"
  },
  {
    "job_id": 670899,
    "job_title": "Research Data Analyst",
    "salary_year_avg": "99746.90625",
    "company_name": "Calbright College",
    "skills": "r"
  },
  {
    "job_id": 670899,
    "job_title": "Research Data Analyst",
    "salary_year_avg": "99746.90625",
    "company_name": "Calbright College",
    "skills": "sas"
  },
  {
    "job_id": 670899,
    "job_title": "Research Data Analyst",
    "salary_year_avg": "99746.90625",
    "company_name": "Calbright College",
    "skills": "oracle"
  },
  {
    "job_id": 670899,
    "job_title": "Research Data Analyst",
    "salary_year_avg": "99746.90625",
    "company_name": "Calbright College",
    "skills": "windows"
  },
  {
    "job_id": 670899,
    "job_title": "Research Data Analyst",
    "salary_year_avg": "99746.90625",
    "company_name": "Calbright College",
    "skills": "excel"
  },
  {
    "job_id": 670899,
    "job_title": "Research Data Analyst",
    "salary_year_avg": "99746.90625",
    "company_name": "Calbright College",
    "skills": "sas"
  },
  {
    "job_id": 670899,
    "job_title": "Research Data Analyst",
    "salary_year_avg": "99746.90625",
    "company_name": "Calbright College",
    "skills": "word"
  },
  {
    "job_id": 670899,
    "job_title": "Research Data Analyst",
    "salary_year_avg": "99746.90625",
    "company_name": "Calbright College",
    "skills": "spreadsheet"
  },
  {
    "job_id": 670899,
    "job_title": "Research Data Analyst",
    "salary_year_avg": "99746.90625",
    "company_name": "Calbright College",
    "skills": "sheets"
  },
  {
    "job_id": 670899,
    "job_title": "Research Data Analyst",
    "salary_year_avg": "99746.90625",
    "company_name": "Calbright College",
    "skills": "spss"
  },
  {
    "job_id": 1064019,
    "job_title": "Legal Project Management Data Analyst",
    "salary_year_avg": "99500.0",
    "company_name": "Ogletree Deakins",
    "skills": "sql"
  },
  {
    "job_id": 1064019,
    "job_title": "Legal Project Management Data Analyst",
    "salary_year_avg": "99500.0",
    "company_name": "Ogletree Deakins",
    "skills": "python"
  },
  {
    "job_id": 1064019,
    "job_title": "Legal Project Management Data Analyst",
    "salary_year_avg": "99500.0",
    "company_name": "Ogletree Deakins",
    "skills": "r"
  },
  {
    "job_id": 1064019,
    "job_title": "Legal Project Management Data Analyst",
    "salary_year_avg": "99500.0",
    "company_name": "Ogletree Deakins",
    "skills": "excel"
  },
  {
    "job_id": 1064019,
    "job_title": "Legal Project Management Data Analyst",
    "salary_year_avg": "99500.0",
    "company_name": "Ogletree Deakins",
    "skills": "tableau"
  },
  {
    "job_id": 1733276,
    "job_title": "Senior Earth Observation Data Analyst",
    "salary_year_avg": "99500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1733276,
    "job_title": "Senior Earth Observation Data Analyst",
    "salary_year_avg": "99500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1733276,
    "job_title": "Senior Earth Observation Data Analyst",
    "salary_year_avg": "99500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "java"
  },
  {
    "job_id": 1733276,
    "job_title": "Senior Earth Observation Data Analyst",
    "salary_year_avg": "99500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 1733276,
    "job_title": "Senior Earth Observation Data Analyst",
    "salary_year_avg": "99500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "bash"
  },
  {
    "job_id": 1733276,
    "job_title": "Senior Earth Observation Data Analyst",
    "salary_year_avg": "99500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "c++"
  },
  {
    "job_id": 1733276,
    "job_title": "Senior Earth Observation Data Analyst",
    "salary_year_avg": "99500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "c#"
  },
  {
    "job_id": 1733276,
    "job_title": "Senior Earth Observation Data Analyst",
    "salary_year_avg": "99500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "powershell"
  },
  {
    "job_id": 1733276,
    "job_title": "Senior Earth Observation Data Analyst",
    "salary_year_avg": "99500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "aws"
  },
  {
    "job_id": 1733276,
    "job_title": "Senior Earth Observation Data Analyst",
    "salary_year_avg": "99500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 867791,
    "job_title": "Data Analyst III - SQL Analytics - Remote | WFH",
    "salary_year_avg": "99000.0",
    "company_name": "Get It Recruit - Technology",
    "skills": "sql"
  },
  {
    "job_id": 867791,
    "job_title": "Data Analyst III - SQL Analytics - Remote | WFH",
    "salary_year_avg": "99000.0",
    "company_name": "Get It Recruit - Technology",
    "skills": "excel"
  },
  {
    "job_id": 1332763,
    "job_title": "Research Data Analyst (remote)",
    "salary_year_avg": "98800.0",
    "company_name": "Ad Hoc Team",
    "skills": "sql"
  },
  {
    "job_id": 1332763,
    "job_title": "Research Data Analyst (remote)",
    "salary_year_avg": "98800.0",
    "company_name": "Ad Hoc Team",
    "skills": "python"
  },
  {
    "job_id": 1332763,
    "job_title": "Research Data Analyst (remote)",
    "salary_year_avg": "98800.0",
    "company_name": "Ad Hoc Team",
    "skills": "r"
  },
  {
    "job_id": 1332763,
    "job_title": "Research Data Analyst (remote)",
    "salary_year_avg": "98800.0",
    "company_name": "Ad Hoc Team",
    "skills": "tableau"
  },
  {
    "job_id": 1332763,
    "job_title": "Research Data Analyst (remote)",
    "salary_year_avg": "98800.0",
    "company_name": "Ad Hoc Team",
    "skills": "looker"
  },
  {
    "job_id": 284410,
    "job_title": "Data Analyst",
    "salary_year_avg": "98750.0",
    "company_name": "Goldbelt, Inc.",
    "skills": "sas"
  },
  {
    "job_id": 284410,
    "job_title": "Data Analyst",
    "salary_year_avg": "98750.0",
    "company_name": "Goldbelt, Inc.",
    "skills": "sas"
  },
  {
    "job_id": 284410,
    "job_title": "Data Analyst",
    "salary_year_avg": "98750.0",
    "company_name": "Goldbelt, Inc.",
    "skills": "flow"
  },
  {
    "job_id": 1149238,
    "job_title": "Data Analyst IV (Healthcare Analytics) - Remote | WFH",
    "salary_year_avg": "98500.0",
    "company_name": "Get It Recruit - Technology",
    "skills": "sql"
  },
  {
    "job_id": 1149238,
    "job_title": "Data Analyst IV (Healthcare Analytics) - Remote | WFH",
    "salary_year_avg": "98500.0",
    "company_name": "Get It Recruit - Technology",
    "skills": "python"
  },
  {
    "job_id": 1149238,
    "job_title": "Data Analyst IV (Healthcare Analytics) - Remote | WFH",
    "salary_year_avg": "98500.0",
    "company_name": "Get It Recruit - Technology",
    "skills": "r"
  },
  {
    "job_id": 1149238,
    "job_title": "Data Analyst IV (Healthcare Analytics) - Remote | WFH",
    "salary_year_avg": "98500.0",
    "company_name": "Get It Recruit - Technology",
    "skills": "excel"
  },
  {
    "job_id": 1691565,
    "job_title": "Data Analyst - Healthcare",
    "salary_year_avg": "97500.0",
    "company_name": "InvestM Technology LLC",
    "skills": "sql"
  },
  {
    "job_id": 1691565,
    "job_title": "Data Analyst - Healthcare",
    "salary_year_avg": "97500.0",
    "company_name": "InvestM Technology LLC",
    "skills": "python"
  },
  {
    "job_id": 1691565,
    "job_title": "Data Analyst - Healthcare",
    "salary_year_avg": "97500.0",
    "company_name": "InvestM Technology LLC",
    "skills": "r"
  },
  {
    "job_id": 1691565,
    "job_title": "Data Analyst - Healthcare",
    "salary_year_avg": "97500.0",
    "company_name": "InvestM Technology LLC",
    "skills": "tableau"
  },
  {
    "job_id": 1691565,
    "job_title": "Data Analyst - Healthcare",
    "salary_year_avg": "97500.0",
    "company_name": "InvestM Technology LLC",
    "skills": "power bi"
  },
  {
    "job_id": 498516,
    "job_title": "Mid-Level Data Analyst - Python/SQL/PowerBI/Tableau",
    "salary_year_avg": "97500.0",
    "company_name": "Motion Recruitment",
    "skills": "sql"
  },
  {
    "job_id": 498516,
    "job_title": "Mid-Level Data Analyst - Python/SQL/PowerBI/Tableau",
    "salary_year_avg": "97500.0",
    "company_name": "Motion Recruitment",
    "skills": "python"
  },
  {
    "job_id": 498516,
    "job_title": "Mid-Level Data Analyst - Python/SQL/PowerBI/Tableau",
    "salary_year_avg": "97500.0",
    "company_name": "Motion Recruitment",
    "skills": "azure"
  },
  {
    "job_id": 498516,
    "job_title": "Mid-Level Data Analyst - Python/SQL/PowerBI/Tableau",
    "salary_year_avg": "97500.0",
    "company_name": "Motion Recruitment",
    "skills": "databricks"
  },
  {
    "job_id": 498516,
    "job_title": "Mid-Level Data Analyst - Python/SQL/PowerBI/Tableau",
    "salary_year_avg": "97500.0",
    "company_name": "Motion Recruitment",
    "skills": "snowflake"
  },
  {
    "job_id": 498516,
    "job_title": "Mid-Level Data Analyst - Python/SQL/PowerBI/Tableau",
    "salary_year_avg": "97500.0",
    "company_name": "Motion Recruitment",
    "skills": "spark"
  },
  {
    "job_id": 498516,
    "job_title": "Mid-Level Data Analyst - Python/SQL/PowerBI/Tableau",
    "salary_year_avg": "97500.0",
    "company_name": "Motion Recruitment",
    "skills": "tableau"
  },
  {
    "job_id": 498516,
    "job_title": "Mid-Level Data Analyst - Python/SQL/PowerBI/Tableau",
    "salary_year_avg": "97500.0",
    "company_name": "Motion Recruitment",
    "skills": "power bi"
  },
  {
    "job_id": 630777,
    "job_title": "Quantitative Data Analyst (CRE / CMBS)",
    "salary_year_avg": "97500.0",
    "company_name": "CRED iQ",
    "skills": "sql"
  },
  {
    "job_id": 630777,
    "job_title": "Quantitative Data Analyst (CRE / CMBS)",
    "salary_year_avg": "97500.0",
    "company_name": "CRED iQ",
    "skills": "python"
  },
  {
    "job_id": 630777,
    "job_title": "Quantitative Data Analyst (CRE / CMBS)",
    "salary_year_avg": "97500.0",
    "company_name": "CRED iQ",
    "skills": "go"
  },
  {
    "job_id": 630777,
    "job_title": "Quantitative Data Analyst (CRE / CMBS)",
    "salary_year_avg": "97500.0",
    "company_name": "CRED iQ",
    "skills": "rust"
  },
  {
    "job_id": 630777,
    "job_title": "Quantitative Data Analyst (CRE / CMBS)",
    "salary_year_avg": "97500.0",
    "company_name": "CRED iQ",
    "skills": "excel"
  },
  {
    "job_id": 630777,
    "job_title": "Quantitative Data Analyst (CRE / CMBS)",
    "salary_year_avg": "97500.0",
    "company_name": "CRED iQ",
    "skills": "word"
  },
  {
    "job_id": 630777,
    "job_title": "Quantitative Data Analyst (CRE / CMBS)",
    "salary_year_avg": "97500.0",
    "company_name": "CRED iQ",
    "skills": "powerpoint"
  },
  {
    "job_id": 1714018,
    "job_title": "Privacy Data Analyst- (remote)",
    "salary_year_avg": "97500.0",
    "company_name": "Cognizant Technology Solutions",
    "skills": "excel"
  },
  {
    "job_id": 1714018,
    "job_title": "Privacy Data Analyst- (remote)",
    "salary_year_avg": "97500.0",
    "company_name": "Cognizant Technology Solutions",
    "skills": "flow"
  },
  {
    "job_id": 35406,
    "job_title": "Provider Data Configuration Analyst IV",
    "salary_year_avg": "97070.5",
    "company_name": "Central California Alliance for Health (Remote)",
    "skills": "sql"
  },
  {
    "job_id": 339556,
    "job_title": "Lead Master Data Analyst (Remote or Onsite)",
    "salary_year_avg": "97000.0",
    "company_name": "Driscoll's",
    "skills": "sql"
  },
  {
    "job_id": 339556,
    "job_title": "Lead Master Data Analyst (Remote or Onsite)",
    "salary_year_avg": "97000.0",
    "company_name": "Driscoll's",
    "skills": "flow"
  },
  {
    "job_id": 1299756,
    "job_title": "Data Analyst (Apex Legends)",
    "salary_year_avg": "96400.0",
    "company_name": "Respawn Entertainment",
    "skills": "sql"
  },
  {
    "job_id": 1299756,
    "job_title": "Data Analyst (Apex Legends)",
    "salary_year_avg": "96400.0",
    "company_name": "Respawn Entertainment",
    "skills": "power bi"
  },
  {
    "job_id": 1791218,
    "job_title": "Data Analyst",
    "salary_year_avg": "95700.0",
    "company_name": "Booz Allen Hamilton",
    "skills": "sql"
  },
  {
    "job_id": 1791218,
    "job_title": "Data Analyst",
    "salary_year_avg": "95700.0",
    "company_name": "Booz Allen Hamilton",
    "skills": "python"
  },
  {
    "job_id": 1791218,
    "job_title": "Data Analyst",
    "salary_year_avg": "95700.0",
    "company_name": "Booz Allen Hamilton",
    "skills": "r"
  },
  {
    "job_id": 1791218,
    "job_title": "Data Analyst",
    "salary_year_avg": "95700.0",
    "company_name": "Booz Allen Hamilton",
    "skills": "tableau"
  },
  {
    "job_id": 1791218,
    "job_title": "Data Analyst",
    "salary_year_avg": "95700.0",
    "company_name": "Booz Allen Hamilton",
    "skills": "power bi"
  },
  {
    "job_id": 1791218,
    "job_title": "Data Analyst",
    "salary_year_avg": "95700.0",
    "company_name": "Booz Allen Hamilton",
    "skills": "qlik"
  },
  {
    "job_id": 1791218,
    "job_title": "Data Analyst",
    "salary_year_avg": "95700.0",
    "company_name": "Booz Allen Hamilton",
    "skills": "powerpoint"
  },
  {
    "job_id": 703426,
    "job_title": "Data Analyst (QA)",
    "salary_year_avg": "95680.0",
    "company_name": "Insight Global",
    "skills": "excel"
  },
  {
    "job_id": 1601917,
    "job_title": "Data Analyst (QA)",
    "salary_year_avg": "95680.0",
    "company_name": "Insight Global",
    "skills": "excel"
  },
  {
    "job_id": 1519639,
    "job_title": "Data Analyst, Mid",
    "salary_year_avg": "95650.0",
    "company_name": "Booz Allen Hamilton",
    "skills": "python"
  },
  {
    "job_id": 1519639,
    "job_title": "Data Analyst, Mid",
    "salary_year_avg": "95650.0",
    "company_name": "Booz Allen Hamilton",
    "skills": "r"
  },
  {
    "job_id": 1519639,
    "job_title": "Data Analyst, Mid",
    "salary_year_avg": "95650.0",
    "company_name": "Booz Allen Hamilton",
    "skills": "power bi"
  },
  {
    "job_id": 1519639,
    "job_title": "Data Analyst, Mid",
    "salary_year_avg": "95650.0",
    "company_name": "Booz Allen Hamilton",
    "skills": "powerpoint"
  },
  {
    "job_id": 735880,
    "job_title": "Data Analyst Lead - Remote",
    "salary_year_avg": "95500.0",
    "company_name": "Olympus Corporation of the Americas",
    "skills": "sql"
  },
  {
    "job_id": 735880,
    "job_title": "Data Analyst Lead - Remote",
    "salary_year_avg": "95500.0",
    "company_name": "Olympus Corporation of the Americas",
    "skills": "python"
  },
  {
    "job_id": 735880,
    "job_title": "Data Analyst Lead - Remote",
    "salary_year_avg": "95500.0",
    "company_name": "Olympus Corporation of the Americas",
    "skills": "vba"
  },
  {
    "job_id": 735880,
    "job_title": "Data Analyst Lead - Remote",
    "salary_year_avg": "95500.0",
    "company_name": "Olympus Corporation of the Americas",
    "skills": "excel"
  },
  {
    "job_id": 735880,
    "job_title": "Data Analyst Lead - Remote",
    "salary_year_avg": "95500.0",
    "company_name": "Olympus Corporation of the Americas",
    "skills": "tableau"
  },
  {
    "job_id": 735880,
    "job_title": "Data Analyst Lead - Remote",
    "salary_year_avg": "95500.0",
    "company_name": "Olympus Corporation of the Americas",
    "skills": "unity"
  },
  {
    "job_id": 354407,
    "job_title": "Data Analyst",
    "salary_year_avg": "95329.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "sql"
  },
  {
    "job_id": 354407,
    "job_title": "Data Analyst",
    "salary_year_avg": "95329.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "oracle"
  },
  {
    "job_id": 354407,
    "job_title": "Data Analyst",
    "salary_year_avg": "95329.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "tableau"
  },
  {
    "job_id": 354407,
    "job_title": "Data Analyst",
    "salary_year_avg": "95329.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "power bi"
  },
  {
    "job_id": 690438,
    "job_title": "Risk Adjustment Data Analytics Lead",
    "salary_year_avg": "95150.0",
    "company_name": "CVS Health",
    "skills": "sql"
  },
  {
    "job_id": 690438,
    "job_title": "Risk Adjustment Data Analytics Lead",
    "salary_year_avg": "95150.0",
    "company_name": "CVS Health",
    "skills": "sas"
  },
  {
    "job_id": 690438,
    "job_title": "Risk Adjustment Data Analytics Lead",
    "salary_year_avg": "95150.0",
    "company_name": "CVS Health",
    "skills": "excel"
  },
  {
    "job_id": 690438,
    "job_title": "Risk Adjustment Data Analytics Lead",
    "salary_year_avg": "95150.0",
    "company_name": "CVS Health",
    "skills": "sas"
  },
  {
    "job_id": 369634,
    "job_title": "Data Analyst - Looker",
    "salary_year_avg": "95000.0",
    "company_name": "Hays",
    "skills": "sql"
  },
  {
    "job_id": 369634,
    "job_title": "Data Analyst - Looker",
    "salary_year_avg": "95000.0",
    "company_name": "Hays",
    "skills": "mongodb"
  },
  {
    "job_id": 369634,
    "job_title": "Data Analyst - Looker",
    "salary_year_avg": "95000.0",
    "company_name": "Hays",
    "skills": "postgresql"
  },
  {
    "job_id": 369634,
    "job_title": "Data Analyst - Looker",
    "salary_year_avg": "95000.0",
    "company_name": "Hays",
    "skills": "mongodb"
  },
  {
    "job_id": 369634,
    "job_title": "Data Analyst - Looker",
    "salary_year_avg": "95000.0",
    "company_name": "Hays",
    "skills": "looker"
  },
  {
    "job_id": 945198,
    "job_title": "Program/Data Analyst (Health Services) Remote!",
    "salary_year_avg": "95000.0",
    "company_name": "General Dynamics Information Technology",
    "skills": "jira"
  },
  {
    "job_id": 334078,
    "job_title": "Data Analyst * Work from home",
    "salary_year_avg": "95000.0",
    "company_name": "American Red Cross",
    "skills": "sql"
  },
  {
    "job_id": 334078,
    "job_title": "Data Analyst * Work from home",
    "salary_year_avg": "95000.0",
    "company_name": "American Red Cross",
    "skills": "python"
  },
  {
    "job_id": 334078,
    "job_title": "Data Analyst * Work from home",
    "salary_year_avg": "95000.0",
    "company_name": "American Red Cross",
    "skills": "r"
  },
  {
    "job_id": 1230135,
    "job_title": "Data Analyst, Financial Services",
    "salary_year_avg": "95000.0",
    "company_name": "Earnest Analytics",
    "skills": "excel"
  },
  {
    "job_id": 1230135,
    "job_title": "Data Analyst, Financial Services",
    "salary_year_avg": "95000.0",
    "company_name": "Earnest Analytics",
    "skills": "tableau"
  },
  {
    "job_id": 1467775,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Insight Global",
    "skills": "tableau"
  },
  {
    "job_id": 1491918,
    "job_title": "Informatics Data Analyst II",
    "salary_year_avg": "95000.0",
    "company_name": "IDR, Inc.",
    "skills": "sql"
  },
  {
    "job_id": 1491918,
    "job_title": "Informatics Data Analyst II",
    "salary_year_avg": "95000.0",
    "company_name": "IDR, Inc.",
    "skills": "python"
  },
  {
    "job_id": 1491918,
    "job_title": "Informatics Data Analyst II",
    "salary_year_avg": "95000.0",
    "company_name": "IDR, Inc.",
    "skills": "r"
  },
  {
    "job_id": 1355313,
    "job_title": "Data Integration Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "United Site Services",
    "skills": "flow"
  },
  {
    "job_id": 78069,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "sql"
  },
  {
    "job_id": 78069,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "python"
  },
  {
    "job_id": 78069,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "r"
  },
  {
    "job_id": 78069,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "excel"
  },
  {
    "job_id": 78069,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "tableau"
  },
  {
    "job_id": 78069,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "looker"
  },
  {
    "job_id": 78069,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "sheets"
  },
  {
    "job_id": 1156421,
    "job_title": "Data Analyst Role",
    "salary_year_avg": "95000.0",
    "company_name": "Motion Recruitment",
    "skills": "sql"
  },
  {
    "job_id": 1156421,
    "job_title": "Data Analyst Role",
    "salary_year_avg": "95000.0",
    "company_name": "Motion Recruitment",
    "skills": "python"
  },
  {
    "job_id": 1156421,
    "job_title": "Data Analyst Role",
    "salary_year_avg": "95000.0",
    "company_name": "Motion Recruitment",
    "skills": "t-sql"
  },
  {
    "job_id": 1156421,
    "job_title": "Data Analyst Role",
    "salary_year_avg": "95000.0",
    "company_name": "Motion Recruitment",
    "skills": "powershell"
  },
  {
    "job_id": 1156421,
    "job_title": "Data Analyst Role",
    "salary_year_avg": "95000.0",
    "company_name": "Motion Recruitment",
    "skills": "php"
  },
  {
    "job_id": 1156421,
    "job_title": "Data Analyst Role",
    "salary_year_avg": "95000.0",
    "company_name": "Motion Recruitment",
    "skills": "mysql"
  },
  {
    "job_id": 1156421,
    "job_title": "Data Analyst Role",
    "salary_year_avg": "95000.0",
    "company_name": "Motion Recruitment",
    "skills": "mariadb"
  },
  {
    "job_id": 1156421,
    "job_title": "Data Analyst Role",
    "salary_year_avg": "95000.0",
    "company_name": "Motion Recruitment",
    "skills": "ssrs"
  },
  {
    "job_id": 542425,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Jobot",
    "skills": "power bi"
  },
  {
    "job_id": 542425,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Jobot",
    "skills": "dax"
  },
  {
    "job_id": 542425,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Jobot",
    "skills": "microstrategy"
  },
  {
    "job_id": 796604,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "sql"
  },
  {
    "job_id": 796604,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "python"
  },
  {
    "job_id": 796604,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "r"
  },
  {
    "job_id": 796604,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "excel"
  },
  {
    "job_id": 796604,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "tableau"
  },
  {
    "job_id": 796604,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "looker"
  },
  {
    "job_id": 796604,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "sheets"
  },
  {
    "job_id": 430230,
    "job_title": "Data Analyst III (REMOTE)",
    "salary_year_avg": "95000.0",
    "company_name": "Ryder System",
    "skills": "python"
  },
  {
    "job_id": 430230,
    "job_title": "Data Analyst III (REMOTE)",
    "salary_year_avg": "95000.0",
    "company_name": "Ryder System",
    "skills": "azure"
  },
  {
    "job_id": 430230,
    "job_title": "Data Analyst III (REMOTE)",
    "salary_year_avg": "95000.0",
    "company_name": "Ryder System",
    "skills": "express"
  },
  {
    "job_id": 430230,
    "job_title": "Data Analyst III (REMOTE)",
    "salary_year_avg": "95000.0",
    "company_name": "Ryder System",
    "skills": "tableau"
  },
  {
    "job_id": 430230,
    "job_title": "Data Analyst III (REMOTE)",
    "salary_year_avg": "95000.0",
    "company_name": "Ryder System",
    "skills": "power bi"
  },
  {
    "job_id": 430230,
    "job_title": "Data Analyst III (REMOTE)",
    "salary_year_avg": "95000.0",
    "company_name": "Ryder System",
    "skills": "alteryx"
  },
  {
    "job_id": 204667,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "sql"
  },
  {
    "job_id": 204667,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "oracle"
  },
  {
    "job_id": 204667,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "tableau"
  },
  {
    "job_id": 204667,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "power bi"
  },
  {
    "job_id": 1359967,
    "job_title": "(Remote) Marketing Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Clark Associates",
    "skills": "sql"
  },
  {
    "job_id": 1359967,
    "job_title": "(Remote) Marketing Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Clark Associates",
    "skills": "python"
  },
  {
    "job_id": 1359967,
    "job_title": "(Remote) Marketing Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Clark Associates",
    "skills": "power bi"
  },
  {
    "job_id": 1359967,
    "job_title": "(Remote) Marketing Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Clark Associates",
    "skills": "looker"
  },
  {
    "job_id": 1240374,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Insight Global",
    "skills": "sas"
  },
  {
    "job_id": 1240374,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Insight Global",
    "skills": "crystal"
  },
  {
    "job_id": 1240374,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Insight Global",
    "skills": "excel"
  },
  {
    "job_id": 1240374,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Insight Global",
    "skills": "tableau"
  },
  {
    "job_id": 1240374,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Insight Global",
    "skills": "sas"
  },
  {
    "job_id": 1240374,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Insight Global",
    "skills": "qlik"
  },
  {
    "job_id": 328827,
    "job_title": "Data Analyst (Greater LA Area, CA or Remote)",
    "salary_year_avg": "95000.0",
    "company_name": "HopSkipDrive",
    "skills": "sql"
  },
  {
    "job_id": 328827,
    "job_title": "Data Analyst (Greater LA Area, CA or Remote)",
    "salary_year_avg": "95000.0",
    "company_name": "HopSkipDrive",
    "skills": "go"
  },
  {
    "job_id": 328827,
    "job_title": "Data Analyst (Greater LA Area, CA or Remote)",
    "salary_year_avg": "95000.0",
    "company_name": "HopSkipDrive",
    "skills": "excel"
  },
  {
    "job_id": 328827,
    "job_title": "Data Analyst (Greater LA Area, CA or Remote)",
    "salary_year_avg": "95000.0",
    "company_name": "HopSkipDrive",
    "skills": "tableau"
  },
  {
    "job_id": 328827,
    "job_title": "Data Analyst (Greater LA Area, CA or Remote)",
    "salary_year_avg": "95000.0",
    "company_name": "HopSkipDrive",
    "skills": "sheets"
  },
  {
    "job_id": 1127339,
    "job_title": "Data Analyst",
    "salary_year_avg": "94871.5",
    "company_name": "Protect Democracy",
    "skills": "python"
  },
  {
    "job_id": 1127339,
    "job_title": "Data Analyst",
    "salary_year_avg": "94871.5",
    "company_name": "Protect Democracy",
    "skills": "r"
  },
  {
    "job_id": 961597,
    "job_title": "Sustainability Oversight Data Lead Analyst - Remote",
    "salary_year_avg": "94400.0",
    "company_name": "The Cigna Group",
    "skills": "tableau"
  },
  {
    "job_id": 961597,
    "job_title": "Sustainability Oversight Data Lead Analyst - Remote",
    "salary_year_avg": "94400.0",
    "company_name": "The Cigna Group",
    "skills": "flow"
  },
  {
    "job_id": 1243771,
    "job_title": "Business Data Analyst",
    "salary_year_avg": "94000.0",
    "company_name": "Tactis LLC",
    "skills": "excel"
  },
  {
    "job_id": 1243771,
    "job_title": "Business Data Analyst",
    "salary_year_avg": "94000.0",
    "company_name": "Tactis LLC",
    "skills": "tableau"
  },
  {
    "job_id": 1243771,
    "job_title": "Business Data Analyst",
    "salary_year_avg": "94000.0",
    "company_name": "Tactis LLC",
    "skills": "jira"
  },
  {
    "job_id": 133125,
    "job_title": "Statistical Data Analyst",
    "salary_year_avg": "93000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 133125,
    "job_title": "Statistical Data Analyst",
    "salary_year_avg": "93000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 133125,
    "job_title": "Statistical Data Analyst",
    "salary_year_avg": "93000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 133125,
    "job_title": "Statistical Data Analyst",
    "salary_year_avg": "93000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "word"
  },
  {
    "job_id": 960363,
    "job_title": "Sr. People Data Analyst",
    "salary_year_avg": "92750.0",
    "company_name": "Medidata Solutions",
    "skills": "sql"
  },
  {
    "job_id": 960363,
    "job_title": "Sr. People Data Analyst",
    "salary_year_avg": "92750.0",
    "company_name": "Medidata Solutions",
    "skills": "python"
  },
  {
    "job_id": 960363,
    "job_title": "Sr. People Data Analyst",
    "salary_year_avg": "92750.0",
    "company_name": "Medidata Solutions",
    "skills": "r"
  },
  {
    "job_id": 960363,
    "job_title": "Sr. People Data Analyst",
    "salary_year_avg": "92750.0",
    "company_name": "Medidata Solutions",
    "skills": "excel"
  },
  {
    "job_id": 960363,
    "job_title": "Sr. People Data Analyst",
    "salary_year_avg": "92750.0",
    "company_name": "Medidata Solutions",
    "skills": "tableau"
  },
  {
    "job_id": 960363,
    "job_title": "Sr. People Data Analyst",
    "salary_year_avg": "92750.0",
    "company_name": "Medidata Solutions",
    "skills": "powerpoint"
  },
  {
    "job_id": 758193,
    "job_title": "Data Analyst (US REMOTE)",
    "salary_year_avg": "92500.0",
    "company_name": "LeanTaaS",
    "skills": "sql"
  },
  {
    "job_id": 758193,
    "job_title": "Data Analyst (US REMOTE)",
    "salary_year_avg": "92500.0",
    "company_name": "LeanTaaS",
    "skills": "python"
  },
  {
    "job_id": 758193,
    "job_title": "Data Analyst (US REMOTE)",
    "salary_year_avg": "92500.0",
    "company_name": "LeanTaaS",
    "skills": "excel"
  },
  {
    "job_id": 758193,
    "job_title": "Data Analyst (US REMOTE)",
    "salary_year_avg": "92500.0",
    "company_name": "LeanTaaS",
    "skills": "tableau"
  },
  {
    "job_id": 1098113,
    "job_title": "Data Analyst [70649]",
    "salary_year_avg": "92500.0",
    "company_name": "0nward Select",
    "skills": "sql"
  },
  {
    "job_id": 1098113,
    "job_title": "Data Analyst [70649]",
    "salary_year_avg": "92500.0",
    "company_name": "0nward Select",
    "skills": "javascript"
  },
  {
    "job_id": 1098113,
    "job_title": "Data Analyst [70649]",
    "salary_year_avg": "92500.0",
    "company_name": "0nward Select",
    "skills": "html"
  },
  {
    "job_id": 1098113,
    "job_title": "Data Analyst [70649]",
    "salary_year_avg": "92500.0",
    "company_name": "0nward Select",
    "skills": "excel"
  },
  {
    "job_id": 1098113,
    "job_title": "Data Analyst [70649]",
    "salary_year_avg": "92500.0",
    "company_name": "0nward Select",
    "skills": "sharepoint"
  },
  {
    "job_id": 1098113,
    "job_title": "Data Analyst [70649]",
    "salary_year_avg": "92500.0",
    "company_name": "0nward Select",
    "skills": "atlassian"
  },
  {
    "job_id": 1098113,
    "job_title": "Data Analyst [70649]",
    "salary_year_avg": "92500.0",
    "company_name": "0nward Select",
    "skills": "jira"
  },
  {
    "job_id": 1098113,
    "job_title": "Data Analyst [70649]",
    "salary_year_avg": "92500.0",
    "company_name": "0nward Select",
    "skills": "confluence"
  },
  {
    "job_id": 1190547,
    "job_title": "Operations Data Analyst (Greater LA Area, CA or Remote)",
    "salary_year_avg": "92500.0",
    "company_name": "HopSkipDrive",
    "skills": "sql"
  },
  {
    "job_id": 1190547,
    "job_title": "Operations Data Analyst (Greater LA Area, CA or Remote)",
    "salary_year_avg": "92500.0",
    "company_name": "HopSkipDrive",
    "skills": "go"
  },
  {
    "job_id": 1190547,
    "job_title": "Operations Data Analyst (Greater LA Area, CA or Remote)",
    "salary_year_avg": "92500.0",
    "company_name": "HopSkipDrive",
    "skills": "excel"
  },
  {
    "job_id": 1190547,
    "job_title": "Operations Data Analyst (Greater LA Area, CA or Remote)",
    "salary_year_avg": "92500.0",
    "company_name": "HopSkipDrive",
    "skills": "tableau"
  },
  {
    "job_id": 1190547,
    "job_title": "Operations Data Analyst (Greater LA Area, CA or Remote)",
    "salary_year_avg": "92500.0",
    "company_name": "HopSkipDrive",
    "skills": "sheets"
  },
  {
    "job_id": 738823,
    "job_title": "Data Insights Analyst (all genders) - Remote",
    "salary_year_avg": "92000.0",
    "company_name": "OUTFITTERY",
    "skills": "sql"
  },
  {
    "job_id": 738823,
    "job_title": "Data Insights Analyst (all genders) - Remote",
    "salary_year_avg": "92000.0",
    "company_name": "OUTFITTERY",
    "skills": "python"
  },
  {
    "job_id": 738823,
    "job_title": "Data Insights Analyst (all genders) - Remote",
    "salary_year_avg": "92000.0",
    "company_name": "OUTFITTERY",
    "skills": "pascal"
  },
  {
    "job_id": 738823,
    "job_title": "Data Insights Analyst (all genders) - Remote",
    "salary_year_avg": "92000.0",
    "company_name": "OUTFITTERY",
    "skills": "tableau"
  },
  {
    "job_id": 1178655,
    "job_title": "Data Analyst",
    "salary_year_avg": "91000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1178655,
    "job_title": "Data Analyst",
    "salary_year_avg": "91000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1178655,
    "job_title": "Data Analyst",
    "salary_year_avg": "91000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 1178655,
    "job_title": "Data Analyst",
    "salary_year_avg": "91000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "powerpoint"
  },
  {
    "job_id": 1560173,
    "job_title": "100% REMOTE Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "CyberCoders",
    "skills": "sql"
  },
  {
    "job_id": 1560173,
    "job_title": "100% REMOTE Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "CyberCoders",
    "skills": "python"
  },
  {
    "job_id": 1560173,
    "job_title": "100% REMOTE Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "CyberCoders",
    "skills": "aws"
  },
  {
    "job_id": 1560173,
    "job_title": "100% REMOTE Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "CyberCoders",
    "skills": "pandas"
  },
  {
    "job_id": 1560173,
    "job_title": "100% REMOTE Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "CyberCoders",
    "skills": "numpy"
  },
  {
    "job_id": 1560173,
    "job_title": "100% REMOTE Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "CyberCoders",
    "skills": "plotly"
  },
  {
    "job_id": 1560173,
    "job_title": "100% REMOTE Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "CyberCoders",
    "skills": "seaborn"
  },
  {
    "job_id": 1560173,
    "job_title": "100% REMOTE Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "CyberCoders",
    "skills": "word"
  },
  {
    "job_id": 1647550,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "sql"
  },
  {
    "job_id": 1647550,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "sas"
  },
  {
    "job_id": 1647550,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "vb.net"
  },
  {
    "job_id": 1647550,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "oracle"
  },
  {
    "job_id": 1647550,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "sas"
  },
  {
    "job_id": 391159,
    "job_title": "Data Science Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "CVS Health",
    "skills": "sql"
  },
  {
    "job_id": 391159,
    "job_title": "Data Science Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "CVS Health",
    "skills": "python"
  },
  {
    "job_id": 391159,
    "job_title": "Data Science Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "CVS Health",
    "skills": "r"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "sql"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "python"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "java"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "shell"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "javascript"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "html"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "t-sql"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "oracle"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "unix"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "excel"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "tableau"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "power bi"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "visio"
  },
  {
    "job_id": 1186631,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Adaptive Solutions Group",
    "skills": "sql"
  },
  {
    "job_id": 1186631,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Adaptive Solutions Group",
    "skills": "excel"
  },
  {
    "job_id": 1186631,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Adaptive Solutions Group",
    "skills": "tableau"
  },
  {
    "job_id": 1186631,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Adaptive Solutions Group",
    "skills": "alteryx"
  },
  {
    "job_id": 914174,
    "job_title": "Data Analyst, Supply Chain (Remote)",
    "salary_year_avg": "90000.0",
    "company_name": "Home Depot / THD",
    "skills": "sql"
  },
  {
    "job_id": 914174,
    "job_title": "Data Analyst, Supply Chain (Remote)",
    "salary_year_avg": "90000.0",
    "company_name": "Home Depot / THD",
    "skills": "sql server"
  },
  {
    "job_id": 914174,
    "job_title": "Data Analyst, Supply Chain (Remote)",
    "salary_year_avg": "90000.0",
    "company_name": "Home Depot / THD",
    "skills": "oracle"
  },
  {
    "job_id": 116825,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "hackajob",
    "skills": "sql"
  },
  {
    "job_id": 116825,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "hackajob",
    "skills": "python"
  },
  {
    "job_id": 116825,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "hackajob",
    "skills": "java"
  },
  {
    "job_id": 116825,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "hackajob",
    "skills": "r"
  },
  {
    "job_id": 116825,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "hackajob",
    "skills": "c++"
  },
  {
    "job_id": 116825,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "hackajob",
    "skills": "c#"
  },
  {
    "job_id": 116825,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "hackajob",
    "skills": "matlab"
  },
  {
    "job_id": 648986,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "sql"
  },
  {
    "job_id": 648986,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "excel"
  },
  {
    "job_id": 196796,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Angi",
    "skills": "sql"
  },
  {
    "job_id": 196796,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Angi",
    "skills": "python"
  },
  {
    "job_id": 196796,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Angi",
    "skills": "r"
  },
  {
    "job_id": 196796,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Angi",
    "skills": "excel"
  },
  {
    "job_id": 293077,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Administrative",
    "skills": "excel"
  },
  {
    "job_id": 293077,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Administrative",
    "skills": "powerpoint"
  },
  {
    "job_id": 293077,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Administrative",
    "skills": "microsoft teams"
  },
  {
    "job_id": 1244897,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "sql"
  },
  {
    "job_id": 1244897,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "bigquery"
  },
  {
    "job_id": 1244897,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "tableau"
  },
  {
    "job_id": 1244897,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "ssrs"
  },
  {
    "job_id": 581546,
    "job_title": "Clinical Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Engage Partners Inc.",
    "skills": "sql"
  },
  {
    "job_id": 581546,
    "job_title": "Clinical Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Engage Partners Inc.",
    "skills": "python"
  },
  {
    "job_id": 581546,
    "job_title": "Clinical Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Engage Partners Inc.",
    "skills": "r"
  },
  {
    "job_id": 581546,
    "job_title": "Clinical Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Engage Partners Inc.",
    "skills": "tableau"
  },
  {
    "job_id": 581546,
    "job_title": "Clinical Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Engage Partners Inc.",
    "skills": "power bi"
  },
  {
    "job_id": 382064,
    "job_title": "Data Analyst or Data Scientist",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "sql"
  },
  {
    "job_id": 382064,
    "job_title": "Data Analyst or Data Scientist",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "python"
  },
  {
    "job_id": 382064,
    "job_title": "Data Analyst or Data Scientist",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "r"
  },
  {
    "job_id": 468153,
    "job_title": "Telecom Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Axelerate",
    "skills": "excel"
  },
  {
    "job_id": 326110,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Preveta",
    "skills": "sql"
  },
  {
    "job_id": 326110,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Preveta",
    "skills": "excel"
  },
  {
    "job_id": 326110,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Preveta",
    "skills": "tableau"
  },
  {
    "job_id": 326110,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Preveta",
    "skills": "power bi"
  },
  {
    "job_id": 326110,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Preveta",
    "skills": "qlik"
  },
  {
    "job_id": 354417,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "EcoCart",
    "skills": "sql"
  },
  {
    "job_id": 354417,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "EcoCart",
    "skills": "python"
  },
  {
    "job_id": 354417,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "EcoCart",
    "skills": "aws"
  },
  {
    "job_id": 354417,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "EcoCart",
    "skills": "redshift"
  },
  {
    "job_id": 354417,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "EcoCart",
    "skills": "tableau"
  },
  {
    "job_id": 354417,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "EcoCart",
    "skills": "power bi"
  },
  {
    "job_id": 354417,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "EcoCart",
    "skills": "clickup"
  },
  {
    "job_id": 1729407,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "General Dynamics Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1729407,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "General Dynamics Information Technology",
    "skills": "javascript"
  },
  {
    "job_id": 1729407,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "General Dynamics Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 1729407,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "General Dynamics Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 1729407,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "General Dynamics Information Technology",
    "skills": "word"
  },
  {
    "job_id": 1729407,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "General Dynamics Information Technology",
    "skills": "sharepoint"
  },
  {
    "job_id": 1729407,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "General Dynamics Information Technology",
    "skills": "powerpoint"
  },
  {
    "job_id": 1729407,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "General Dynamics Information Technology",
    "skills": "jira"
  },
  {
    "job_id": 1729407,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "General Dynamics Information Technology",
    "skills": "confluence"
  },
  {
    "job_id": 680315,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Gotely",
    "skills": "sql"
  },
  {
    "job_id": 680315,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Gotely",
    "skills": "python"
  },
  {
    "job_id": 680315,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Gotely",
    "skills": "r"
  },
  {
    "job_id": 680315,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Gotely",
    "skills": "tableau"
  },
  {
    "job_id": 680315,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Gotely",
    "skills": "power bi"
  },
  {
    "job_id": 613034,
    "job_title": "Credit Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "sql"
  },
  {
    "job_id": 613034,
    "job_title": "Credit Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "python"
  },
  {
    "job_id": 613034,
    "job_title": "Credit Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "tableau"
  },
  {
    "job_id": 613034,
    "job_title": "Credit Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "looker"
  },
  {
    "job_id": 1152523,
    "job_title": "Real Estate Transaction Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "excel"
  },
  {
    "job_id": 1152523,
    "job_title": "Real Estate Transaction Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "word"
  },
  {
    "job_id": 1152523,
    "job_title": "Real Estate Transaction Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "powerpoint"
  },
  {
    "job_id": 1152523,
    "job_title": "Real Estate Transaction Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "outlook"
  },
  {
    "job_id": 811436,
    "job_title": "Strategic Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "excel"
  },
  {
    "job_id": 811436,
    "job_title": "Strategic Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "word"
  },
  {
    "job_id": 811436,
    "job_title": "Strategic Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "powerpoint"
  },
  {
    "job_id": 811436,
    "job_title": "Strategic Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "planner"
  },
  {
    "job_id": 514485,
    "job_title": "Health Data Lead Analyst - Fully Remote",
    "salary_year_avg": "90000.0",
    "company_name": "Constant Associates",
    "skills": "sql"
  },
  {
    "job_id": 514485,
    "job_title": "Health Data Lead Analyst - Fully Remote",
    "salary_year_avg": "90000.0",
    "company_name": "Constant Associates",
    "skills": "python"
  },
  {
    "job_id": 514485,
    "job_title": "Health Data Lead Analyst - Fully Remote",
    "salary_year_avg": "90000.0",
    "company_name": "Constant Associates",
    "skills": "r"
  },
  {
    "job_id": 514485,
    "job_title": "Health Data Lead Analyst - Fully Remote",
    "salary_year_avg": "90000.0",
    "company_name": "Constant Associates",
    "skills": "sas"
  },
  {
    "job_id": 514485,
    "job_title": "Health Data Lead Analyst - Fully Remote",
    "salary_year_avg": "90000.0",
    "company_name": "Constant Associates",
    "skills": "excel"
  },
  {
    "job_id": 514485,
    "job_title": "Health Data Lead Analyst - Fully Remote",
    "salary_year_avg": "90000.0",
    "company_name": "Constant Associates",
    "skills": "sas"
  },
  {
    "job_id": 419649,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "sql"
  },
  {
    "job_id": 419649,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "python"
  },
  {
    "job_id": 714930,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Motion Recruitment",
    "skills": "sql"
  },
  {
    "job_id": 714930,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Motion Recruitment",
    "skills": "python"
  },
  {
    "job_id": 714930,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Motion Recruitment",
    "skills": "r"
  },
  {
    "job_id": 714930,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Motion Recruitment",
    "skills": "tableau"
  },
  {
    "job_id": 714930,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Motion Recruitment",
    "skills": "looker"
  },
  {
    "job_id": 258262,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "sql"
  },
  {
    "job_id": 258262,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "bigquery"
  },
  {
    "job_id": 258262,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "tableau"
  },
  {
    "job_id": 258262,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "ssrs"
  },
  {
    "job_id": 846860,
    "job_title": "Real Estate Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "bigquery"
  },
  {
    "job_id": 846860,
    "job_title": "Real Estate Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "tableau"
  },
  {
    "job_id": 846860,
    "job_title": "Real Estate Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "ssrs"
  },
  {
    "job_id": 122927,
    "job_title": "Data Analyst (Modeling) (Remote)",
    "salary_year_avg": "89796.0",
    "company_name": "Heluna Health",
    "skills": "r"
  },
  {
    "job_id": 122927,
    "job_title": "Data Analyst (Modeling) (Remote)",
    "salary_year_avg": "89796.0",
    "company_name": "Heluna Health",
    "skills": "sas"
  },
  {
    "job_id": 122927,
    "job_title": "Data Analyst (Modeling) (Remote)",
    "salary_year_avg": "89796.0",
    "company_name": "Heluna Health",
    "skills": "julia"
  },
  {
    "job_id": 122927,
    "job_title": "Data Analyst (Modeling) (Remote)",
    "salary_year_avg": "89796.0",
    "company_name": "Heluna Health",
    "skills": "sas"
  },
  {
    "job_id": 1618146,
    "job_title": "Mobile Data Analyst",
    "salary_year_avg": "89500.0",
    "company_name": "Verizon",
    "skills": "power bi"
  },
  {
    "job_id": 833662,
    "job_title": "Marketing Data Analyst (Remote)",
    "salary_year_avg": "89000.0",
    "company_name": "World Education Services",
    "skills": "sql"
  },
  {
    "job_id": 833662,
    "job_title": "Marketing Data Analyst (Remote)",
    "salary_year_avg": "89000.0",
    "company_name": "World Education Services",
    "skills": "python"
  },
  {
    "job_id": 833662,
    "job_title": "Marketing Data Analyst (Remote)",
    "salary_year_avg": "89000.0",
    "company_name": "World Education Services",
    "skills": "scala"
  },
  {
    "job_id": 833662,
    "job_title": "Marketing Data Analyst (Remote)",
    "salary_year_avg": "89000.0",
    "company_name": "World Education Services",
    "skills": "java"
  },
  {
    "job_id": 833662,
    "job_title": "Marketing Data Analyst (Remote)",
    "salary_year_avg": "89000.0",
    "company_name": "World Education Services",
    "skills": "r"
  },
  {
    "job_id": 833662,
    "job_title": "Marketing Data Analyst (Remote)",
    "salary_year_avg": "89000.0",
    "company_name": "World Education Services",
    "skills": "javascript"
  },
  {
    "job_id": 833662,
    "job_title": "Marketing Data Analyst (Remote)",
    "salary_year_avg": "89000.0",
    "company_name": "World Education Services",
    "skills": "snowflake"
  },
  {
    "job_id": 833662,
    "job_title": "Marketing Data Analyst (Remote)",
    "salary_year_avg": "89000.0",
    "company_name": "World Education Services",
    "skills": "tableau"
  },
  {
    "job_id": 833662,
    "job_title": "Marketing Data Analyst (Remote)",
    "salary_year_avg": "89000.0",
    "company_name": "World Education Services",
    "skills": "jira"
  },
  {
    "job_id": 833662,
    "job_title": "Marketing Data Analyst (Remote)",
    "salary_year_avg": "89000.0",
    "company_name": "World Education Services",
    "skills": "confluence"
  },
  {
    "job_id": 660036,
    "job_title": "Senior Supply Chain Analytics Analyst",
    "salary_year_avg": "89000.0",
    "company_name": "Get It Recruit - Transportation",
    "skills": "python"
  },
  {
    "job_id": 660036,
    "job_title": "Senior Supply Chain Analytics Analyst",
    "salary_year_avg": "89000.0",
    "company_name": "Get It Recruit - Transportation",
    "skills": "r"
  },
  {
    "job_id": 660036,
    "job_title": "Senior Supply Chain Analytics Analyst",
    "salary_year_avg": "89000.0",
    "company_name": "Get It Recruit - Transportation",
    "skills": "tableau"
  },
  {
    "job_id": 660036,
    "job_title": "Senior Supply Chain Analytics Analyst",
    "salary_year_avg": "89000.0",
    "company_name": "Get It Recruit - Transportation",
    "skills": "alteryx"
  },
  {
    "job_id": 1657752,
    "job_title": "Supply Chain Data Analyst",
    "salary_year_avg": "88000.0",
    "company_name": "Get It Recruit - Transportation",
    "skills": "excel"
  },
  {
    "job_id": 1657752,
    "job_title": "Supply Chain Data Analyst",
    "salary_year_avg": "88000.0",
    "company_name": "Get It Recruit - Transportation",
    "skills": "word"
  },
  {
    "job_id": 1657752,
    "job_title": "Supply Chain Data Analyst",
    "salary_year_avg": "88000.0",
    "company_name": "Get It Recruit - Transportation",
    "skills": "powerpoint"
  },
  {
    "job_id": 1657752,
    "job_title": "Supply Chain Data Analyst",
    "salary_year_avg": "88000.0",
    "company_name": "Get It Recruit - Transportation",
    "skills": "outlook"
  },
  {
    "job_id": 352252,
    "job_title": "Media Data Analyst/Media Coordinator",
    "salary_year_avg": "87500.0",
    "company_name": "Get It Recruit - Administrative",
    "skills": "excel"
  },
  {
    "job_id": 352252,
    "job_title": "Media Data Analyst/Media Coordinator",
    "salary_year_avg": "87500.0",
    "company_name": "Get It Recruit - Administrative",
    "skills": "word"
  },
  {
    "job_id": 352252,
    "job_title": "Media Data Analyst/Media Coordinator",
    "salary_year_avg": "87500.0",
    "company_name": "Get It Recruit - Administrative",
    "skills": "sharepoint"
  },
  {
    "job_id": 30317,
    "job_title": "Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Insight Global",
    "skills": "sql"
  },
  {
    "job_id": 30317,
    "job_title": "Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Insight Global",
    "skills": "c#"
  },
  {
    "job_id": 30317,
    "job_title": "Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Insight Global",
    "skills": "sql server"
  },
  {
    "job_id": 30317,
    "job_title": "Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Insight Global",
    "skills": "excel"
  },
  {
    "job_id": 30317,
    "job_title": "Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Insight Global",
    "skills": "flow"
  },
  {
    "job_id": 66566,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Vatica Health",
    "skills": "sql"
  },
  {
    "job_id": 66566,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Vatica Health",
    "skills": "go"
  },
  {
    "job_id": 66566,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Vatica Health",
    "skills": "excel"
  },
  {
    "job_id": 66566,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Vatica Health",
    "skills": "tableau"
  },
  {
    "job_id": 66566,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Vatica Health",
    "skills": "powerpoint"
  },
  {
    "job_id": 748524,
    "job_title": "Senior Financial and Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Oxfam America",
    "skills": "sql"
  },
  {
    "job_id": 748524,
    "job_title": "Senior Financial and Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Oxfam America",
    "skills": "python"
  },
  {
    "job_id": 748524,
    "job_title": "Senior Financial and Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Oxfam America",
    "skills": "oracle"
  },
  {
    "job_id": 748524,
    "job_title": "Senior Financial and Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Oxfam America",
    "skills": "excel"
  },
  {
    "job_id": 748524,
    "job_title": "Senior Financial and Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Oxfam America",
    "skills": "tableau"
  },
  {
    "job_id": 748524,
    "job_title": "Senior Financial and Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Oxfam America",
    "skills": "power bi"
  },
  {
    "job_id": 748524,
    "job_title": "Senior Financial and Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Oxfam America",
    "skills": "powerpoint"
  },
  {
    "job_id": 748524,
    "job_title": "Senior Financial and Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Oxfam America",
    "skills": "planner"
  },
  {
    "job_id": 915649,
    "job_title": "Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 915649,
    "job_title": "Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 915649,
    "job_title": "Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "power bi"
  },
  {
    "job_id": 1489901,
    "job_title": "Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Predictive Data Lab",
    "skills": "sql"
  },
  {
    "job_id": 1489901,
    "job_title": "Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Predictive Data Lab",
    "skills": "azure"
  },
  {
    "job_id": 1433360,
    "job_title": "Data Analyst - New Grad - Remote",
    "salary_year_avg": "87500.0",
    "company_name": "SeatGeek",
    "skills": "sql"
  },
  {
    "job_id": 1433360,
    "job_title": "Data Analyst - New Grad - Remote",
    "salary_year_avg": "87500.0",
    "company_name": "SeatGeek",
    "skills": "redshift"
  },
  {
    "job_id": 1433360,
    "job_title": "Data Analyst - New Grad - Remote",
    "salary_year_avg": "87500.0",
    "company_name": "SeatGeek",
    "skills": "spring"
  },
  {
    "job_id": 1433360,
    "job_title": "Data Analyst - New Grad - Remote",
    "salary_year_avg": "87500.0",
    "company_name": "SeatGeek",
    "skills": "looker"
  },
  {
    "job_id": 961041,
    "job_title": "Treasury Data Analyst II",
    "salary_year_avg": "87000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 961041,
    "job_title": "Treasury Data Analyst II",
    "salary_year_avg": "87000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 961041,
    "job_title": "Treasury Data Analyst II",
    "salary_year_avg": "87000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 961041,
    "job_title": "Treasury Data Analyst II",
    "salary_year_avg": "87000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 961041,
    "job_title": "Treasury Data Analyst II",
    "salary_year_avg": "87000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "power bi"
  },
  {
    "job_id": 916210,
    "job_title": "Treasury Data Analyst II",
    "salary_year_avg": "87000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 916210,
    "job_title": "Treasury Data Analyst II",
    "salary_year_avg": "87000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 916210,
    "job_title": "Treasury Data Analyst II",
    "salary_year_avg": "87000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 916210,
    "job_title": "Treasury Data Analyst II",
    "salary_year_avg": "87000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 916210,
    "job_title": "Treasury Data Analyst II",
    "salary_year_avg": "87000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "power bi"
  },
  {
    "job_id": 916210,
    "job_title": "Treasury Data Analyst II",
    "salary_year_avg": "87000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "flow"
  },
  {
    "job_id": 401243,
    "job_title": "Remote Data Analyst",
    "salary_year_avg": "86500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 401243,
    "job_title": "Remote Data Analyst",
    "salary_year_avg": "86500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "oracle"
  },
  {
    "job_id": 1704094,
    "job_title": "Remote Data Analyst",
    "salary_year_avg": "86500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1704094,
    "job_title": "Remote Data Analyst",
    "salary_year_avg": "86500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "oracle"
  },
  {
    "job_id": 456839,
    "job_title": "Telecom Data Analyst",
    "salary_year_avg": "86000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 456839,
    "job_title": "Telecom Data Analyst",
    "salary_year_avg": "86000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 456839,
    "job_title": "Telecom Data Analyst",
    "salary_year_avg": "86000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sheets"
  },
  {
    "job_id": 52176,
    "job_title": "PPM Data Analyst - Remote",
    "salary_year_avg": "85000.0",
    "company_name": "Mint Mobile",
    "skills": "express"
  },
  {
    "job_id": 52176,
    "job_title": "PPM Data Analyst - Remote",
    "salary_year_avg": "85000.0",
    "company_name": "Mint Mobile",
    "skills": "excel"
  },
  {
    "job_id": 52176,
    "job_title": "PPM Data Analyst - Remote",
    "salary_year_avg": "85000.0",
    "company_name": "Mint Mobile",
    "skills": "flow"
  },
  {
    "job_id": 52176,
    "job_title": "PPM Data Analyst - Remote",
    "salary_year_avg": "85000.0",
    "company_name": "Mint Mobile",
    "skills": "atlassian"
  },
  {
    "job_id": 52176,
    "job_title": "PPM Data Analyst - Remote",
    "salary_year_avg": "85000.0",
    "company_name": "Mint Mobile",
    "skills": "chef"
  },
  {
    "job_id": 1640252,
    "job_title": "Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 1640252,
    "job_title": "Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 50602,
    "job_title": "Data Analyst & Dashboard Developer",
    "salary_year_avg": "85000.0",
    "company_name": "Impact Genome",
    "skills": "tableau"
  },
  {
    "job_id": 50602,
    "job_title": "Data Analyst & Dashboard Developer",
    "salary_year_avg": "85000.0",
    "company_name": "Impact Genome",
    "skills": "terminal"
  },
  {
    "job_id": 1112585,
    "job_title": "Senior Data Analyst II",
    "salary_year_avg": "85000.0",
    "company_name": "BlueLabs Analytics, Inc.",
    "skills": "sql"
  },
  {
    "job_id": 1112585,
    "job_title": "Senior Data Analyst II",
    "salary_year_avg": "85000.0",
    "company_name": "BlueLabs Analytics, Inc.",
    "skills": "python"
  },
  {
    "job_id": 1112585,
    "job_title": "Senior Data Analyst II",
    "salary_year_avg": "85000.0",
    "company_name": "BlueLabs Analytics, Inc.",
    "skills": "snowflake"
  },
  {
    "job_id": 1112585,
    "job_title": "Senior Data Analyst II",
    "salary_year_avg": "85000.0",
    "company_name": "BlueLabs Analytics, Inc.",
    "skills": "tableau"
  },
  {
    "job_id": 27772,
    "job_title": "Data Analyst - DHS Clearance Required Remote / Telecommute Jobs",
    "salary_year_avg": "85000.0",
    "company_name": "Redwood Strategy Group",
    "skills": "sql"
  },
  {
    "job_id": 27772,
    "job_title": "Data Analyst - DHS Clearance Required Remote / Telecommute Jobs",
    "salary_year_avg": "85000.0",
    "company_name": "Redwood Strategy Group",
    "skills": "python"
  },
  {
    "job_id": 27772,
    "job_title": "Data Analyst - DHS Clearance Required Remote / Telecommute Jobs",
    "salary_year_avg": "85000.0",
    "company_name": "Redwood Strategy Group",
    "skills": "r"
  },
  {
    "job_id": 27772,
    "job_title": "Data Analyst - DHS Clearance Required Remote / Telecommute Jobs",
    "salary_year_avg": "85000.0",
    "company_name": "Redwood Strategy Group",
    "skills": "excel"
  },
  {
    "job_id": 27772,
    "job_title": "Data Analyst - DHS Clearance Required Remote / Telecommute Jobs",
    "salary_year_avg": "85000.0",
    "company_name": "Redwood Strategy Group",
    "skills": "tableau"
  },
  {
    "job_id": 27772,
    "job_title": "Data Analyst - DHS Clearance Required Remote / Telecommute Jobs",
    "salary_year_avg": "85000.0",
    "company_name": "Redwood Strategy Group",
    "skills": "word"
  },
  {
    "job_id": 27772,
    "job_title": "Data Analyst - DHS Clearance Required Remote / Telecommute Jobs",
    "salary_year_avg": "85000.0",
    "company_name": "Redwood Strategy Group",
    "skills": "powerpoint"
  },
  {
    "job_id": 27772,
    "job_title": "Data Analyst - DHS Clearance Required Remote / Telecommute Jobs",
    "salary_year_avg": "85000.0",
    "company_name": "Redwood Strategy Group",
    "skills": "outlook"
  },
  {
    "job_id": 27772,
    "job_title": "Data Analyst - DHS Clearance Required Remote / Telecommute Jobs",
    "salary_year_avg": "85000.0",
    "company_name": "Redwood Strategy Group",
    "skills": "visio"
  },
  {
    "job_id": 1215316,
    "job_title": "Data Analyst & Dashboard Developer",
    "salary_year_avg": "85000.0",
    "company_name": "Impact Genome",
    "skills": "tableau"
  },
  {
    "job_id": 1215316,
    "job_title": "Data Analyst & Dashboard Developer",
    "salary_year_avg": "85000.0",
    "company_name": "Impact Genome",
    "skills": "terminal"
  },
  {
    "job_id": 384007,
    "job_title": "Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Motion Recruitment",
    "skills": "sql"
  },
  {
    "job_id": 384007,
    "job_title": "Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Motion Recruitment",
    "skills": "mysql"
  },
  {
    "job_id": 384007,
    "job_title": "Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Motion Recruitment",
    "skills": "sql server"
  },
  {
    "job_id": 384007,
    "job_title": "Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Motion Recruitment",
    "skills": "azure"
  },
  {
    "job_id": 384007,
    "job_title": "Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Motion Recruitment",
    "skills": "jira"
  },
  {
    "job_id": 382000,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Prime Team Partners",
    "skills": "sql"
  },
  {
    "job_id": 382000,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Prime Team Partners",
    "skills": "excel"
  },
  {
    "job_id": 382000,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Prime Team Partners",
    "skills": "tableau"
  },
  {
    "job_id": 382000,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Prime Team Partners",
    "skills": "word"
  },
  {
    "job_id": 382000,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Prime Team Partners",
    "skills": "powerpoint"
  },
  {
    "job_id": 1085007,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "85000.0",
    "company_name": "DeepIntent",
    "skills": "sql"
  },
  {
    "job_id": 1085007,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "85000.0",
    "company_name": "DeepIntent",
    "skills": "r"
  },
  {
    "job_id": 1085007,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "85000.0",
    "company_name": "DeepIntent",
    "skills": "excel"
  },
  {
    "job_id": 1085007,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "85000.0",
    "company_name": "DeepIntent",
    "skills": "powerpoint"
  },
  {
    "job_id": 1458260,
    "job_title": "Data Analyst / Software Developer",
    "salary_year_avg": "85000.0",
    "company_name": "QSE7, LLC",
    "skills": "vba"
  },
  {
    "job_id": 1458260,
    "job_title": "Data Analyst / Software Developer",
    "salary_year_avg": "85000.0",
    "company_name": "QSE7, LLC",
    "skills": "excel"
  },
  {
    "job_id": 1458260,
    "job_title": "Data Analyst / Software Developer",
    "salary_year_avg": "85000.0",
    "company_name": "QSE7, LLC",
    "skills": "tableau"
  },
  {
    "job_id": 1458260,
    "job_title": "Data Analyst / Software Developer",
    "salary_year_avg": "85000.0",
    "company_name": "QSE7, LLC",
    "skills": "power bi"
  },
  {
    "job_id": 1458260,
    "job_title": "Data Analyst / Software Developer",
    "salary_year_avg": "85000.0",
    "company_name": "QSE7, LLC",
    "skills": "sharepoint"
  },
  {
    "job_id": 196337,
    "job_title": "Predictive Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "SimioCloud",
    "skills": "sql"
  },
  {
    "job_id": 196337,
    "job_title": "Predictive Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "SimioCloud",
    "skills": "python"
  },
  {
    "job_id": 196337,
    "job_title": "Predictive Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "SimioCloud",
    "skills": "r"
  },
  {
    "job_id": 196337,
    "job_title": "Predictive Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "SimioCloud",
    "skills": "alteryx"
  },
  {
    "job_id": 314738,
    "job_title": "Growth Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 314738,
    "job_title": "Growth Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 314738,
    "job_title": "Growth Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 314738,
    "job_title": "Growth Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 314738,
    "job_title": "Growth Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sheets"
  },
  {
    "job_id": 710614,
    "job_title": "Data Mining Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Envision Staffing Solutions",
    "skills": "excel"
  },
  {
    "job_id": 710614,
    "job_title": "Data Mining Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Envision Staffing Solutions",
    "skills": "word"
  },
  {
    "job_id": 710614,
    "job_title": "Data Mining Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Envision Staffing Solutions",
    "skills": "spreadsheet"
  },
  {
    "job_id": 710614,
    "job_title": "Data Mining Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Envision Staffing Solutions",
    "skills": "powerpoint"
  },
  {
    "job_id": 1782272,
    "job_title": "Marketing Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "FocusKPI Inc.",
    "skills": "sql"
  },
  {
    "job_id": 1782272,
    "job_title": "Marketing Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "FocusKPI Inc.",
    "skills": "python"
  },
  {
    "job_id": 1782272,
    "job_title": "Marketing Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "FocusKPI Inc.",
    "skills": "excel"
  },
  {
    "job_id": 1782272,
    "job_title": "Marketing Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "FocusKPI Inc.",
    "skills": "powerpoint"
  },
  {
    "job_id": 1762396,
    "job_title": "Data Analyst & Dashboard Developer",
    "salary_year_avg": "85000.0",
    "company_name": "Impact Genome",
    "skills": "tableau"
  },
  {
    "job_id": 1762396,
    "job_title": "Data Analyst & Dashboard Developer",
    "salary_year_avg": "85000.0",
    "company_name": "Impact Genome",
    "skills": "terminal"
  },
  {
    "job_id": 1766497,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "84950.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "sql"
  },
  {
    "job_id": 1766497,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "84950.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "db2"
  },
  {
    "job_id": 1766497,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "84950.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "tableau"
  },
  {
    "job_id": 1766497,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "84950.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "alteryx"
  },
  {
    "job_id": 1813745,
    "job_title": "Data Platform Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1813745,
    "job_title": "Data Platform Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1813745,
    "job_title": "Data Platform Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 496663,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "windows"
  },
  {
    "job_id": 496663,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sharepoint"
  },
  {
    "job_id": 496663,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "webex"
  },
  {
    "job_id": 133854,
    "job_title": "Pricing Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "excel"
  },
  {
    "job_id": 133854,
    "job_title": "Pricing Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "sap"
  },
  {
    "job_id": 398669,
    "job_title": "Experienced Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 398669,
    "job_title": "Experienced Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql server"
  },
  {
    "job_id": 398669,
    "job_title": "Experienced Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "azure"
  },
  {
    "job_id": 398669,
    "job_title": "Experienced Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "aws"
  },
  {
    "job_id": 398669,
    "job_title": "Experienced Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "redshift"
  },
  {
    "job_id": 398669,
    "job_title": "Experienced Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "snowflake"
  },
  {
    "job_id": 398669,
    "job_title": "Experienced Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 398669,
    "job_title": "Experienced Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 398669,
    "job_title": "Experienced Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "ssis"
  },
  {
    "job_id": 1540216,
    "job_title": "Marketing Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1540216,
    "job_title": "Marketing Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1540216,
    "job_title": "Marketing Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 1540216,
    "job_title": "Marketing Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql server"
  },
  {
    "job_id": 1540216,
    "job_title": "Marketing Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 1540216,
    "job_title": "Marketing Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 1540216,
    "job_title": "Marketing Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "power bi"
  },
  {
    "job_id": 1540216,
    "job_title": "Marketing Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 1540216,
    "job_title": "Marketing Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sheets"
  },
  {
    "job_id": 444259,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 444259,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 444259,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 444259,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 444259,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "javascript"
  },
  {
    "job_id": 444259,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 444259,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 444259,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 444259,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 444259,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "spss"
  },
  {
    "job_id": 1736157,
    "job_title": "Asset Verification Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 367476,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 367476,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 367476,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 367476,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 367476,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "javascript"
  },
  {
    "job_id": 367476,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 367476,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 367476,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 367476,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 367476,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "spss"
  },
  {
    "job_id": 547661,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 547661,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "jenkins"
  },
  {
    "job_id": 104800,
    "job_title": "Financial Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 1558833,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1558833,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1558833,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 894665,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 894665,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 894665,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 894665,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "flow"
  },
  {
    "job_id": 1155449,
    "job_title": "Data Analyst- Early Career Quality Engineer",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1155449,
    "job_title": "Data Analyst- Early Career Quality Engineer",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1155449,
    "job_title": "Data Analyst- Early Career Quality Engineer",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "java"
  },
  {
    "job_id": 1155449,
    "job_title": "Data Analyst- Early Career Quality Engineer",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "javascript"
  },
  {
    "job_id": 1155449,
    "job_title": "Data Analyst- Early Career Quality Engineer",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "html"
  },
  {
    "job_id": 1155449,
    "job_title": "Data Analyst- Early Career Quality Engineer",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "c#"
  },
  {
    "job_id": 1155449,
    "job_title": "Data Analyst- Early Career Quality Engineer",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 1551217,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1551217,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 1551217,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "javascript"
  },
  {
    "job_id": 1551217,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 1551217,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 1551217,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 1551217,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 1551217,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "spss"
  },
  {
    "job_id": 1544793,
    "job_title": "Early Career Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1544793,
    "job_title": "Early Career Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1544793,
    "job_title": "Early Career Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "nosql"
  },
  {
    "job_id": 1544793,
    "job_title": "Early Career Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 1544793,
    "job_title": "Early Career Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 1156181,
    "job_title": "Remote Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1156181,
    "job_title": "Remote Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql server"
  },
  {
    "job_id": 1156181,
    "job_title": "Remote Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 1156181,
    "job_title": "Remote Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "ssrs"
  },
  {
    "job_id": 23358,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 23358,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "azure"
  },
  {
    "job_id": 23358,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "power bi"
  },
  {
    "job_id": 23358,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "dax"
  },
  {
    "job_id": 1683817,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "arch"
  },
  {
    "job_id": 1683817,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "word"
  },
  {
    "job_id": 1761702,
    "job_title": "Business Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 122796,
    "job_title": "Marketing Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 122796,
    "job_title": "Marketing Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 122796,
    "job_title": "Marketing Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 122796,
    "job_title": "Marketing Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql server"
  },
  {
    "job_id": 122796,
    "job_title": "Marketing Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "bigquery"
  },
  {
    "job_id": 122796,
    "job_title": "Marketing Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 122796,
    "job_title": "Marketing Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 122796,
    "job_title": "Marketing Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "power bi"
  },
  {
    "job_id": 122796,
    "job_title": "Marketing Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 122796,
    "job_title": "Marketing Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sheets"
  },
  {
    "job_id": 858421,
    "job_title": "Data Analyst Intern",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 858421,
    "job_title": "Data Analyst Intern",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 858421,
    "job_title": "Data Analyst Intern",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 858421,
    "job_title": "Data Analyst Intern",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 858421,
    "job_title": "Data Analyst Intern",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 858421,
    "job_title": "Data Analyst Intern",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 918810,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 918810,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "powerpoint"
  },
  {
    "job_id": 1128758,
    "job_title": "Data Analyst with PowerBI expertise",
    "salary_year_avg": "83500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1128758,
    "job_title": "Data Analyst with PowerBI expertise",
    "salary_year_avg": "83500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1128758,
    "job_title": "Data Analyst with PowerBI expertise",
    "salary_year_avg": "83500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 1632454,
    "job_title": "Data Analyst",
    "salary_year_avg": "83500.0",
    "company_name": "Insight Global",
    "skills": "sql"
  },
  {
    "job_id": 1632454,
    "job_title": "Data Analyst",
    "salary_year_avg": "83500.0",
    "company_name": "Insight Global",
    "skills": "excel"
  },
  {
    "job_id": 1366794,
    "job_title": "Data Analyst",
    "salary_year_avg": "83500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 1366794,
    "job_title": "Data Analyst",
    "salary_year_avg": "83500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 1618469,
    "job_title": "Data Quality Analyst",
    "salary_year_avg": "83500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1618469,
    "job_title": "Data Quality Analyst",
    "salary_year_avg": "83500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1618469,
    "job_title": "Data Quality Analyst",
    "salary_year_avg": "83500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "aws"
  },
  {
    "job_id": 197120,
    "job_title": "Accountant/Data Analyst",
    "salary_year_avg": "83500.0",
    "company_name": "Robert Half",
    "skills": "go"
  },
  {
    "job_id": 197120,
    "job_title": "Accountant/Data Analyst",
    "salary_year_avg": "83500.0",
    "company_name": "Robert Half",
    "skills": "excel"
  },
  {
    "job_id": 309335,
    "job_title": "Data Analyst",
    "salary_year_avg": "83500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 1153109,
    "job_title": "Data Analyst",
    "salary_year_avg": "83500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "javascript"
  },
  {
    "job_id": 1153109,
    "job_title": "Data Analyst",
    "salary_year_avg": "83500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "node.js"
  },
  {
    "job_id": 457003,
    "job_title": "Data Analyst - Part Time (Greater NYC Area, NY or Remote)",
    "salary_year_avg": "83200.0",
    "company_name": "Memorial Sloan Kettering Cancer Center",
    "skills": "sql"
  },
  {
    "job_id": 457003,
    "job_title": "Data Analyst - Part Time (Greater NYC Area, NY or Remote)",
    "salary_year_avg": "83200.0",
    "company_name": "Memorial Sloan Kettering Cancer Center",
    "skills": "go"
  },
  {
    "job_id": 1656466,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1656466,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1656466,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "redshift"
  },
  {
    "job_id": 1656466,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "snowflake"
  },
  {
    "job_id": 1656466,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "pandas"
  },
  {
    "job_id": 1656466,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "matplotlib"
  },
  {
    "job_id": 1656466,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "qlik"
  },
  {
    "job_id": 373211,
    "job_title": "Data Governance Project Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 373211,
    "job_title": "Data Governance Project Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1005824,
    "job_title": "Budget Data Analyst (Power BI/Excel/VBA expert)",
    "salary_year_avg": "83000.0",
    "company_name": "General Dynamics Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1005824,
    "job_title": "Budget Data Analyst (Power BI/Excel/VBA expert)",
    "salary_year_avg": "83000.0",
    "company_name": "General Dynamics Information Technology",
    "skills": "vba"
  },
  {
    "job_id": 1005824,
    "job_title": "Budget Data Analyst (Power BI/Excel/VBA expert)",
    "salary_year_avg": "83000.0",
    "company_name": "General Dynamics Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 1005824,
    "job_title": "Budget Data Analyst (Power BI/Excel/VBA expert)",
    "salary_year_avg": "83000.0",
    "company_name": "General Dynamics Information Technology",
    "skills": "power bi"
  },
  {
    "job_id": 1005824,
    "job_title": "Budget Data Analyst (Power BI/Excel/VBA expert)",
    "salary_year_avg": "83000.0",
    "company_name": "General Dynamics Information Technology",
    "skills": "word"
  },
  {
    "job_id": 1005824,
    "job_title": "Budget Data Analyst (Power BI/Excel/VBA expert)",
    "salary_year_avg": "83000.0",
    "company_name": "General Dynamics Information Technology",
    "skills": "flow"
  },
  {
    "job_id": 604141,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Alameda Health Consortium/Community Health Center Network",
    "skills": "sql"
  },
  {
    "job_id": 604141,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Alameda Health Consortium/Community Health Center Network",
    "skills": "sas"
  },
  {
    "job_id": 604141,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Alameda Health Consortium/Community Health Center Network",
    "skills": "excel"
  },
  {
    "job_id": 604141,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Alameda Health Consortium/Community Health Center Network",
    "skills": "tableau"
  },
  {
    "job_id": 604141,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Alameda Health Consortium/Community Health Center Network",
    "skills": "sas"
  },
  {
    "job_id": 427343,
    "job_title": "Data Delivery Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 427343,
    "job_title": "Data Delivery Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 427343,
    "job_title": "Data Delivery Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 103900,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 103900,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 103900,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "power bi"
  },
  {
    "job_id": 103900,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 672574,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Emotive",
    "skills": "sql"
  },
  {
    "job_id": 672574,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Emotive",
    "skills": "python"
  },
  {
    "job_id": 672574,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Emotive",
    "skills": "tableau"
  },
  {
    "job_id": 672574,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Emotive",
    "skills": "looker"
  },
  {
    "job_id": 838391,
    "job_title": "Data Insight Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 838391,
    "job_title": "Data Insight Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 838391,
    "job_title": "Data Insight Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 934891,
    "job_title": "Data Analysts- Capital Markets Team",
    "salary_year_avg": "82500.0",
    "company_name": "CyberCoders",
    "skills": "sql"
  },
  {
    "job_id": 934891,
    "job_title": "Data Analysts- Capital Markets Team",
    "salary_year_avg": "82500.0",
    "company_name": "CyberCoders",
    "skills": "excel"
  },
  {
    "job_id": 934891,
    "job_title": "Data Analysts- Capital Markets Team",
    "salary_year_avg": "82500.0",
    "company_name": "CyberCoders",
    "skills": "word"
  },
  {
    "job_id": 1795056,
    "job_title": "Clinical Research Data Programmer Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Vitalief Inc.",
    "skills": "r"
  },
  {
    "job_id": 1795056,
    "job_title": "Clinical Research Data Programmer Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Vitalief Inc.",
    "skills": "sas"
  },
  {
    "job_id": 1795056,
    "job_title": "Clinical Research Data Programmer Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Vitalief Inc.",
    "skills": "excel"
  },
  {
    "job_id": 1795056,
    "job_title": "Clinical Research Data Programmer Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Vitalief Inc.",
    "skills": "sas"
  },
  {
    "job_id": 1795056,
    "job_title": "Clinical Research Data Programmer Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Vitalief Inc.",
    "skills": "ms access"
  },
  {
    "job_id": 1269187,
    "job_title": "Data Analyst with PowerBI Dashboards Experience",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1269187,
    "job_title": "Data Analyst with PowerBI Dashboards Experience",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1269187,
    "job_title": "Data Analyst with PowerBI Dashboards Experience",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 1727059,
    "job_title": "Technical/Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1727059,
    "job_title": "Technical/Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1727059,
    "job_title": "Technical/Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "c#"
  },
  {
    "job_id": 1727059,
    "job_title": "Technical/Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "vba"
  },
  {
    "job_id": 1727059,
    "job_title": "Technical/Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 863059,
    "job_title": "Accounting / Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Confidential",
    "skills": "oracle"
  },
  {
    "job_id": 863059,
    "job_title": "Accounting / Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Confidential",
    "skills": "sap"
  },
  {
    "job_id": 1758551,
    "job_title": "Healthcare Data Analyst - Remote in RI",
    "salary_year_avg": "82500.0",
    "company_name": "Complete HR Solutions",
    "skills": "sql"
  },
  {
    "job_id": 95123,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 95123,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 95123,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sheets"
  },
  {
    "job_id": 1715658,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 1715658,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 1715658,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 1715658,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "spss"
  },
  {
    "job_id": 1621876,
    "job_title": "Data Analyst (Tableau)",
    "salary_year_avg": "82500.0",
    "company_name": "Customer Value Partners",
    "skills": "python"
  },
  {
    "job_id": 1621876,
    "job_title": "Data Analyst (Tableau)",
    "salary_year_avg": "82500.0",
    "company_name": "Customer Value Partners",
    "skills": "plotly"
  },
  {
    "job_id": 1621876,
    "job_title": "Data Analyst (Tableau)",
    "salary_year_avg": "82500.0",
    "company_name": "Customer Value Partners",
    "skills": "excel"
  },
  {
    "job_id": 1621876,
    "job_title": "Data Analyst (Tableau)",
    "salary_year_avg": "82500.0",
    "company_name": "Customer Value Partners",
    "skills": "tableau"
  },
  {
    "job_id": 1621876,
    "job_title": "Data Analyst (Tableau)",
    "salary_year_avg": "82500.0",
    "company_name": "Customer Value Partners",
    "skills": "power bi"
  },
  {
    "job_id": 879043,
    "job_title": "SQL Data Analyst - Healthcare",
    "salary_year_avg": "82350.5",
    "company_name": "Village Care",
    "skills": "sql"
  },
  {
    "job_id": 879043,
    "job_title": "SQL Data Analyst - Healthcare",
    "salary_year_avg": "82350.5",
    "company_name": "Village Care",
    "skills": "python"
  },
  {
    "job_id": 879043,
    "job_title": "SQL Data Analyst - Healthcare",
    "salary_year_avg": "82350.5",
    "company_name": "Village Care",
    "skills": "r"
  },
  {
    "job_id": 879043,
    "job_title": "SQL Data Analyst - Healthcare",
    "salary_year_avg": "82350.5",
    "company_name": "Village Care",
    "skills": "excel"
  },
  {
    "job_id": 879043,
    "job_title": "SQL Data Analyst - Healthcare",
    "salary_year_avg": "82350.5",
    "company_name": "Village Care",
    "skills": "tableau"
  },
  {
    "job_id": 1115037,
    "job_title": "Data Analyst",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1115037,
    "job_title": "Data Analyst",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 1115037,
    "job_title": "Data Analyst",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "power bi"
  },
  {
    "job_id": 5174,
    "job_title": "Data Analyst - Ad Tech and Google Ad Manager Experience (Remote)",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 5174,
    "job_title": "Data Analyst - Ad Tech and Google Ad Manager Experience (Remote)",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 5174,
    "job_title": "Data Analyst - Ad Tech and Google Ad Manager Experience (Remote)",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 5174,
    "job_title": "Data Analyst - Ad Tech and Google Ad Manager Experience (Remote)",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "go"
  },
  {
    "job_id": 5174,
    "job_title": "Data Analyst - Ad Tech and Google Ad Manager Experience (Remote)",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "redshift"
  },
  {
    "job_id": 5174,
    "job_title": "Data Analyst - Ad Tech and Google Ad Manager Experience (Remote)",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "snowflake"
  },
  {
    "job_id": 5174,
    "job_title": "Data Analyst - Ad Tech and Google Ad Manager Experience (Remote)",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 5174,
    "job_title": "Data Analyst - Ad Tech and Google Ad Manager Experience (Remote)",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 288466,
    "job_title": "Research Data Analyst I",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 288466,
    "job_title": "Research Data Analyst I",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 288466,
    "job_title": "Research Data Analyst I",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 463381,
    "job_title": "Data Analyst (Junior/Mid/Senior) - Remote - Defense Manpower Data...",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 463381,
    "job_title": "Data Analyst (Junior/Mid/Senior) - Remote - Defense Manpower Data...",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "t-sql"
  },
  {
    "job_id": 463381,
    "job_title": "Data Analyst (Junior/Mid/Senior) - Remote - Defense Manpower Data...",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "oracle"
  },
  {
    "job_id": 1296038,
    "job_title": "Data Analyst",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1296038,
    "job_title": "Data Analyst",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1296038,
    "job_title": "Data Analyst",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 1296038,
    "job_title": "Data Analyst",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 1296038,
    "job_title": "Data Analyst",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 318830,
    "job_title": "Business Data Analyst II",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 318830,
    "job_title": "Business Data Analyst II",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 223644,
    "job_title": "Pharmacy Data Analyst",
    "salary_year_avg": "81500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 223644,
    "job_title": "Pharmacy Data Analyst",
    "salary_year_avg": "81500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql server"
  },
  {
    "job_id": 223644,
    "job_title": "Pharmacy Data Analyst",
    "salary_year_avg": "81500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "arch"
  },
  {
    "job_id": 223644,
    "job_title": "Pharmacy Data Analyst",
    "salary_year_avg": "81500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 223644,
    "job_title": "Pharmacy Data Analyst",
    "salary_year_avg": "81500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 223644,
    "job_title": "Pharmacy Data Analyst",
    "salary_year_avg": "81500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "power bi"
  },
  {
    "job_id": 223644,
    "job_title": "Pharmacy Data Analyst",
    "salary_year_avg": "81500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "word"
  },
  {
    "job_id": 223644,
    "job_title": "Pharmacy Data Analyst",
    "salary_year_avg": "81500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "ssrs"
  },
  {
    "job_id": 223644,
    "job_title": "Pharmacy Data Analyst",
    "salary_year_avg": "81500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "outlook"
  },
  {
    "job_id": 1638787,
    "job_title": "Lead Data Analyst - Looker Studio Expert",
    "salary_year_avg": "81500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1638787,
    "job_title": "Lead Data Analyst - Looker Studio Expert",
    "salary_year_avg": "81500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 1436603,
    "job_title": "Data Analyst, Mortgage Enforcement Unit, Remote Opportunity",
    "salary_year_avg": "81047.0",
    "company_name": "New York State Office of the Attorney General",
    "skills": "r"
  },
  {
    "job_id": 1436603,
    "job_title": "Data Analyst, Mortgage Enforcement Unit, Remote Opportunity",
    "salary_year_avg": "81047.0",
    "company_name": "New York State Office of the Attorney General",
    "skills": "excel"
  },
  {
    "job_id": 143947,
    "job_title": "Data Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 143947,
    "job_title": "Data Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 143947,
    "job_title": "Data Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "scala"
  },
  {
    "job_id": 143947,
    "job_title": "Data Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 143947,
    "job_title": "Data Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "matlab"
  },
  {
    "job_id": 143947,
    "job_title": "Data Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 606788,
    "job_title": "Data Analytics and Reporting Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 606788,
    "job_title": "Data Analytics and Reporting Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql server"
  },
  {
    "job_id": 606788,
    "job_title": "Data Analytics and Reporting Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "snowflake"
  },
  {
    "job_id": 606788,
    "job_title": "Data Analytics and Reporting Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 606788,
    "job_title": "Data Analytics and Reporting Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "ssrs"
  },
  {
    "job_id": 980665,
    "job_title": "Data Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 980665,
    "job_title": "Data Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 980665,
    "job_title": "Data Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 413083,
    "job_title": "Data Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 413083,
    "job_title": "Data Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 413083,
    "job_title": "Data Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 1025744,
    "job_title": "Research Data Analyst-",
    "salary_year_avg": "80740.0",
    "company_name": "InsideHigherEd",
    "skills": "python"
  },
  {
    "job_id": 1025744,
    "job_title": "Research Data Analyst-",
    "salary_year_avg": "80740.0",
    "company_name": "InsideHigherEd",
    "skills": "r"
  },
  {
    "job_id": 1025744,
    "job_title": "Research Data Analyst-",
    "salary_year_avg": "80740.0",
    "company_name": "InsideHigherEd",
    "skills": "sas"
  },
  {
    "job_id": 1025744,
    "job_title": "Research Data Analyst-",
    "salary_year_avg": "80740.0",
    "company_name": "InsideHigherEd",
    "skills": "sas"
  },
  {
    "job_id": 1025744,
    "job_title": "Research Data Analyst-",
    "salary_year_avg": "80740.0",
    "company_name": "InsideHigherEd",
    "skills": "zoom"
  },
  {
    "job_id": 670376,
    "job_title": "Data Analyst",
    "salary_year_avg": "80500.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "sql"
  },
  {
    "job_id": 670376,
    "job_title": "Data Analyst",
    "salary_year_avg": "80500.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "excel"
  },
  {
    "job_id": 711091,
    "job_title": "Data Analyst - Underwriting",
    "salary_year_avg": "80250.0",
    "company_name": "Automobile Club of Southern California",
    "skills": "sql"
  },
  {
    "job_id": 711091,
    "job_title": "Data Analyst - Underwriting",
    "salary_year_avg": "80250.0",
    "company_name": "Automobile Club of Southern California",
    "skills": "python"
  },
  {
    "job_id": 711091,
    "job_title": "Data Analyst - Underwriting",
    "salary_year_avg": "80250.0",
    "company_name": "Automobile Club of Southern California",
    "skills": "java"
  },
  {
    "job_id": 711091,
    "job_title": "Data Analyst - Underwriting",
    "salary_year_avg": "80250.0",
    "company_name": "Automobile Club of Southern California",
    "skills": "bash"
  },
  {
    "job_id": 711091,
    "job_title": "Data Analyst - Underwriting",
    "salary_year_avg": "80250.0",
    "company_name": "Automobile Club of Southern California",
    "skills": "vba"
  },
  {
    "job_id": 711091,
    "job_title": "Data Analyst - Underwriting",
    "salary_year_avg": "80250.0",
    "company_name": "Automobile Club of Southern California",
    "skills": "tableau"
  },
  {
    "job_id": 664113,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "80000.0",
    "company_name": "CrowdStrike",
    "skills": "sql"
  },
  {
    "job_id": 664113,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "80000.0",
    "company_name": "CrowdStrike",
    "skills": "python"
  },
  {
    "job_id": 664113,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "80000.0",
    "company_name": "CrowdStrike",
    "skills": "snowflake"
  },
  {
    "job_id": 794255,
    "job_title": "Manufacturing Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "ATR International",
    "skills": "sql"
  },
  {
    "job_id": 794255,
    "job_title": "Manufacturing Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "ATR International",
    "skills": "python"
  },
  {
    "job_id": 794255,
    "job_title": "Manufacturing Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "ATR International",
    "skills": "r"
  },
  {
    "job_id": 794255,
    "job_title": "Manufacturing Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "ATR International",
    "skills": "matplotlib"
  },
  {
    "job_id": 794255,
    "job_title": "Manufacturing Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "ATR International",
    "skills": "excel"
  },
  {
    "job_id": 794255,
    "job_title": "Manufacturing Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "ATR International",
    "skills": "tableau"
  },
  {
    "job_id": 1333002,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1333002,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 1333002,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "power bi"
  },
  {
    "job_id": 1354750,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "sql"
  },
  {
    "job_id": 1354750,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "python"
  },
  {
    "job_id": 1354750,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "r"
  },
  {
    "job_id": 1354750,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "excel"
  },
  {
    "job_id": 1354750,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "tableau"
  },
  {
    "job_id": 1354750,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "power bi"
  },
  {
    "job_id": 1354750,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "sharepoint"
  },
  {
    "job_id": 1354750,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "jira"
  },
  {
    "job_id": 1354750,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "confluence"
  },
  {
    "job_id": 690454,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Gravy Analytics",
    "skills": "sql"
  },
  {
    "job_id": 690454,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Gravy Analytics",
    "skills": "python"
  },
  {
    "job_id": 690454,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Gravy Analytics",
    "skills": "r"
  },
  {
    "job_id": 690454,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Gravy Analytics",
    "skills": "javascript"
  },
  {
    "job_id": 690454,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Gravy Analytics",
    "skills": "aws"
  },
  {
    "job_id": 690454,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Gravy Analytics",
    "skills": "snowflake"
  },
  {
    "job_id": 690454,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Gravy Analytics",
    "skills": "excel"
  },
  {
    "job_id": 690454,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Gravy Analytics",
    "skills": "tableau"
  },
  {
    "job_id": 319413,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "excel"
  },
  {
    "job_id": 319413,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "word"
  },
  {
    "job_id": 319413,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "powerpoint"
  },
  {
    "job_id": 319413,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "outlook"
  },
  {
    "job_id": 319413,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "ms access"
  },
  {
    "job_id": 6083,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "EUCON AMERICAS LLC",
    "skills": "sql"
  },
  {
    "job_id": 6083,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "EUCON AMERICAS LLC",
    "skills": "sas"
  },
  {
    "job_id": 6083,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "EUCON AMERICAS LLC",
    "skills": "excel"
  },
  {
    "job_id": 6083,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "EUCON AMERICAS LLC",
    "skills": "sas"
  },
  {
    "job_id": 6083,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "EUCON AMERICAS LLC",
    "skills": "powerpoint"
  },
  {
    "job_id": 6083,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "EUCON AMERICAS LLC",
    "skills": "spss"
  },
  {
    "job_id": 1075985,
    "job_title": "AI-focused Data Analyst/Tableau Developer",
    "salary_year_avg": "80000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "java"
  },
  {
    "job_id": 1075985,
    "job_title": "AI-focused Data Analyst/Tableau Developer",
    "salary_year_avg": "80000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 1075985,
    "job_title": "AI-focused Data Analyst/Tableau Developer",
    "salary_year_avg": "80000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 1075985,
    "job_title": "AI-focused Data Analyst/Tableau Developer",
    "salary_year_avg": "80000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "power bi"
  },
  {
    "job_id": 1236616,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Peraton",
    "skills": "sql"
  },
  {
    "job_id": 1236616,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Peraton",
    "skills": "python"
  },
  {
    "job_id": 1236616,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Peraton",
    "skills": "sas"
  },
  {
    "job_id": 1236616,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Peraton",
    "skills": "aws"
  },
  {
    "job_id": 1236616,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Peraton",
    "skills": "sas"
  },
  {
    "job_id": 1236616,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Peraton",
    "skills": "qlik"
  },
  {
    "job_id": 276098,
    "job_title": "Data Analyst- Power BI (Remote)",
    "salary_year_avg": "80000.0",
    "company_name": "HighGround",
    "skills": "sql"
  },
  {
    "job_id": 276098,
    "job_title": "Data Analyst- Power BI (Remote)",
    "salary_year_avg": "80000.0",
    "company_name": "HighGround",
    "skills": "azure"
  },
  {
    "job_id": 276098,
    "job_title": "Data Analyst- Power BI (Remote)",
    "salary_year_avg": "80000.0",
    "company_name": "HighGround",
    "skills": "excel"
  },
  {
    "job_id": 276098,
    "job_title": "Data Analyst- Power BI (Remote)",
    "salary_year_avg": "80000.0",
    "company_name": "HighGround",
    "skills": "spreadsheet"
  },
  {
    "job_id": 940759,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 940759,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 940759,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sheets"
  },
  {
    "job_id": 566131,
    "job_title": "Claims Data Analyst - 208554",
    "salary_year_avg": "80000.0",
    "company_name": "Medix Technology",
    "skills": "sql"
  },
  {
    "job_id": 566131,
    "job_title": "Claims Data Analyst - 208554",
    "salary_year_avg": "80000.0",
    "company_name": "Medix Technology",
    "skills": "tableau"
  },
  {
    "job_id": 566131,
    "job_title": "Claims Data Analyst - 208554",
    "salary_year_avg": "80000.0",
    "company_name": "Medix Technology",
    "skills": "power bi"
  },
  {
    "job_id": 566131,
    "job_title": "Claims Data Analyst - 208554",
    "salary_year_avg": "80000.0",
    "company_name": "Medix Technology",
    "skills": "alteryx"
  },
  {
    "job_id": 519106,
    "job_title": "Data Analytics Manager",
    "salary_year_avg": "80000.0",
    "company_name": "Itemize Corp.",
    "skills": "sql"
  },
  {
    "job_id": 519106,
    "job_title": "Data Analytics Manager",
    "salary_year_avg": "80000.0",
    "company_name": "Itemize Corp.",
    "skills": "mysql"
  },
  {
    "job_id": 519106,
    "job_title": "Data Analytics Manager",
    "salary_year_avg": "80000.0",
    "company_name": "Itemize Corp.",
    "skills": "aws"
  },
  {
    "job_id": 1434052,
    "job_title": "Data Analytics Consultant",
    "salary_year_avg": "80000.0",
    "company_name": "FutureNET",
    "skills": "r"
  },
  {
    "job_id": 1434052,
    "job_title": "Data Analytics Consultant",
    "salary_year_avg": "80000.0",
    "company_name": "FutureNET",
    "skills": "tableau"
  },
  {
    "job_id": 1434052,
    "job_title": "Data Analytics Consultant",
    "salary_year_avg": "80000.0",
    "company_name": "FutureNET",
    "skills": "powerpoint"
  },
  {
    "job_id": 1434052,
    "job_title": "Data Analytics Consultant",
    "salary_year_avg": "80000.0",
    "company_name": "FutureNET",
    "skills": "cognos"
  },
  {
    "job_id": 483152,
    "job_title": "Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "New World Now LLC",
    "skills": "sql"
  },
  {
    "job_id": 564679,
    "job_title": "Junior Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "sql"
  },
  {
    "job_id": 564679,
    "job_title": "Junior Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "python"
  },
  {
    "job_id": 564679,
    "job_title": "Junior Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "r"
  },
  {
    "job_id": 564679,
    "job_title": "Junior Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "excel"
  },
  {
    "job_id": 564679,
    "job_title": "Junior Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "tableau"
  },
  {
    "job_id": 564679,
    "job_title": "Junior Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "sharepoint"
  },
  {
    "job_id": 564679,
    "job_title": "Junior Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "jira"
  },
  {
    "job_id": 564679,
    "job_title": "Junior Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Coders Data",
    "skills": "confluence"
  },
  {
    "job_id": 911869,
    "job_title": "Sr. Business Analyst/Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "CBRE",
    "skills": "excel"
  },
  {
    "job_id": 911869,
    "job_title": "Sr. Business Analyst/Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "CBRE",
    "skills": "power bi"
  },
  {
    "job_id": 911869,
    "job_title": "Sr. Business Analyst/Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "CBRE",
    "skills": "alteryx"
  },
  {
    "job_id": 550113,
    "job_title": "Junior Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Motion Recruitment",
    "skills": "python"
  },
  {
    "job_id": 430789,
    "job_title": "Data Analyst - Remote | WFH",
    "salary_year_avg": "79968.0",
    "company_name": "Get It Recruit - Technology",
    "skills": "sql"
  },
  {
    "job_id": 430789,
    "job_title": "Data Analyst - Remote | WFH",
    "salary_year_avg": "79968.0",
    "company_name": "Get It Recruit - Technology",
    "skills": "python"
  },
  {
    "job_id": 430789,
    "job_title": "Data Analyst - Remote | WFH",
    "salary_year_avg": "79968.0",
    "company_name": "Get It Recruit - Technology",
    "skills": "r"
  },
  {
    "job_id": 430789,
    "job_title": "Data Analyst - Remote | WFH",
    "salary_year_avg": "79968.0",
    "company_name": "Get It Recruit - Technology",
    "skills": "redshift"
  },
  {
    "job_id": 430789,
    "job_title": "Data Analyst - Remote | WFH",
    "salary_year_avg": "79968.0",
    "company_name": "Get It Recruit - Technology",
    "skills": "snowflake"
  },
  {
    "job_id": 430789,
    "job_title": "Data Analyst - Remote | WFH",
    "salary_year_avg": "79968.0",
    "company_name": "Get It Recruit - Technology",
    "skills": "tableau"
  },
  {
    "job_id": 430789,
    "job_title": "Data Analyst - Remote | WFH",
    "salary_year_avg": "79968.0",
    "company_name": "Get It Recruit - Technology",
    "skills": "looker"
  },
  {
    "job_id": 36488,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "79415.5",
    "company_name": "Texas Workforce Commission",
    "skills": "sql"
  },
  {
    "job_id": 36488,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "79415.5",
    "company_name": "Texas Workforce Commission",
    "skills": "python"
  },
  {
    "job_id": 36488,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "79415.5",
    "company_name": "Texas Workforce Commission",
    "skills": "r"
  },
  {
    "job_id": 36488,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "79415.5",
    "company_name": "Texas Workforce Commission",
    "skills": "sas"
  },
  {
    "job_id": 36488,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "79415.5",
    "company_name": "Texas Workforce Commission",
    "skills": "go"
  },
  {
    "job_id": 36488,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "79415.5",
    "company_name": "Texas Workforce Commission",
    "skills": "tableau"
  },
  {
    "job_id": 36488,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "79415.5",
    "company_name": "Texas Workforce Commission",
    "skills": "power bi"
  },
  {
    "job_id": 36488,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "79415.5",
    "company_name": "Texas Workforce Commission",
    "skills": "sas"
  },
  {
    "job_id": 36488,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "79415.5",
    "company_name": "Texas Workforce Commission",
    "skills": "spss"
  },
  {
    "job_id": 36488,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "79415.5",
    "company_name": "Texas Workforce Commission",
    "skills": "microsoft teams"
  },
  {
    "job_id": 401772,
    "job_title": "Health Data Analyst - Hybrid",
    "salary_year_avg": "79060.5",
    "company_name": "Teacher Retirement System of Texas",
    "skills": "sql"
  },
  {
    "job_id": 401772,
    "job_title": "Health Data Analyst - Hybrid",
    "salary_year_avg": "79060.5",
    "company_name": "Teacher Retirement System of Texas",
    "skills": "python"
  },
  {
    "job_id": 401772,
    "job_title": "Health Data Analyst - Hybrid",
    "salary_year_avg": "79060.5",
    "company_name": "Teacher Retirement System of Texas",
    "skills": "r"
  },
  {
    "job_id": 189043,
    "job_title": "Remote - Data Analyst - Permanent - W2",
    "salary_year_avg": "79000.0",
    "company_name": "Apex Systems",
    "skills": "sql"
  },
  {
    "job_id": 189043,
    "job_title": "Remote - Data Analyst - Permanent - W2",
    "salary_year_avg": "79000.0",
    "company_name": "Apex Systems",
    "skills": "python"
  },
  {
    "job_id": 189043,
    "job_title": "Remote - Data Analyst - Permanent - W2",
    "salary_year_avg": "79000.0",
    "company_name": "Apex Systems",
    "skills": "c++"
  },
  {
    "job_id": 189043,
    "job_title": "Remote - Data Analyst - Permanent - W2",
    "salary_year_avg": "79000.0",
    "company_name": "Apex Systems",
    "skills": "c#"
  },
  {
    "job_id": 1723219,
    "job_title": "Data Analyst",
    "salary_year_avg": "78000.0",
    "company_name": "Visual Connections, LLC",
    "skills": "sql"
  },
  {
    "job_id": 1723219,
    "job_title": "Data Analyst",
    "salary_year_avg": "78000.0",
    "company_name": "Visual Connections, LLC",
    "skills": "python"
  },
  {
    "job_id": 1723219,
    "job_title": "Data Analyst",
    "salary_year_avg": "78000.0",
    "company_name": "Visual Connections, LLC",
    "skills": "r"
  },
  {
    "job_id": 1723219,
    "job_title": "Data Analyst",
    "salary_year_avg": "78000.0",
    "company_name": "Visual Connections, LLC",
    "skills": "sas"
  },
  {
    "job_id": 1723219,
    "job_title": "Data Analyst",
    "salary_year_avg": "78000.0",
    "company_name": "Visual Connections, LLC",
    "skills": "excel"
  },
  {
    "job_id": 1723219,
    "job_title": "Data Analyst",
    "salary_year_avg": "78000.0",
    "company_name": "Visual Connections, LLC",
    "skills": "sas"
  },
  {
    "job_id": 1723219,
    "job_title": "Data Analyst",
    "salary_year_avg": "78000.0",
    "company_name": "Visual Connections, LLC",
    "skills": "word"
  },
  {
    "job_id": 1723219,
    "job_title": "Data Analyst",
    "salary_year_avg": "78000.0",
    "company_name": "Visual Connections, LLC",
    "skills": "powerpoint"
  },
  {
    "job_id": 1723219,
    "job_title": "Data Analyst",
    "salary_year_avg": "78000.0",
    "company_name": "Visual Connections, LLC",
    "skills": "cognos"
  },
  {
    "job_id": 1723219,
    "job_title": "Data Analyst",
    "salary_year_avg": "78000.0",
    "company_name": "Visual Connections, LLC",
    "skills": "webex"
  },
  {
    "job_id": 1236681,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Simplex",
    "skills": "sql"
  },
  {
    "job_id": 1236681,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Simplex",
    "skills": "python"
  },
  {
    "job_id": 1236681,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Simplex",
    "skills": "sqlite"
  },
  {
    "job_id": 1236681,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Simplex",
    "skills": "azure"
  },
  {
    "job_id": 1236681,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Simplex",
    "skills": "snowflake"
  },
  {
    "job_id": 435726,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "JDC",
    "skills": "excel"
  },
  {
    "job_id": 397963,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Coders Data",
    "skills": "sql"
  },
  {
    "job_id": 397963,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Coders Data",
    "skills": "python"
  },
  {
    "job_id": 397963,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Coders Data",
    "skills": "mysql"
  },
  {
    "job_id": 397963,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Coders Data",
    "skills": "excel"
  },
  {
    "job_id": 397963,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Coders Data",
    "skills": "tableau"
  },
  {
    "job_id": 502625,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Simplex.",
    "skills": "sql"
  },
  {
    "job_id": 502625,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Simplex.",
    "skills": "python"
  },
  {
    "job_id": 502625,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Simplex.",
    "skills": "sqlite"
  },
  {
    "job_id": 502625,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Simplex.",
    "skills": "azure"
  },
  {
    "job_id": 502625,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Simplex.",
    "skills": "snowflake"
  },
  {
    "job_id": 1745486,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1745486,
    "job_title": "Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1311958,
    "job_title": "Northeast Territory Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Get It Recruit - Administrative",
    "skills": "excel"
  },
  {
    "job_id": 1311958,
    "job_title": "Northeast Territory Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Get It Recruit - Administrative",
    "skills": "power bi"
  },
  {
    "job_id": 1311958,
    "job_title": "Northeast Territory Data Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Get It Recruit - Administrative",
    "skills": "smartsheet"
  },
  {
    "job_id": 1101994,
    "job_title": "Product Specialist (Data Analytics) (Remote)",
    "salary_year_avg": "77500.0",
    "company_name": "NBCUniversal",
    "skills": "sql"
  },
  {
    "job_id": 1101994,
    "job_title": "Product Specialist (Data Analytics) (Remote)",
    "salary_year_avg": "77500.0",
    "company_name": "NBCUniversal",
    "skills": "excel"
  },
  {
    "job_id": 1101994,
    "job_title": "Product Specialist (Data Analytics) (Remote)",
    "salary_year_avg": "77500.0",
    "company_name": "NBCUniversal",
    "skills": "power bi"
  },
  {
    "job_id": 1101994,
    "job_title": "Product Specialist (Data Analytics) (Remote)",
    "salary_year_avg": "77500.0",
    "company_name": "NBCUniversal",
    "skills": "dax"
  },
  {
    "job_id": 1101994,
    "job_title": "Product Specialist (Data Analytics) (Remote)",
    "salary_year_avg": "77500.0",
    "company_name": "NBCUniversal",
    "skills": "jira"
  },
  {
    "job_id": 704236,
    "job_title": "Data Analysis and Production Support Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 704236,
    "job_title": "Data Analysis and Production Support Analyst",
    "salary_year_avg": "77500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "jupyter"
  },
  {
    "job_id": 1379514,
    "job_title": "Data Analyst - CropSights, a Precision Ag Platform (Remote - Must...",
    "salary_year_avg": "77350.0",
    "company_name": "Wilbur-Ellis Company",
    "skills": "sql"
  },
  {
    "job_id": 1379514,
    "job_title": "Data Analyst - CropSights, a Precision Ag Platform (Remote - Must...",
    "salary_year_avg": "77350.0",
    "company_name": "Wilbur-Ellis Company",
    "skills": "python"
  },
  {
    "job_id": 1379514,
    "job_title": "Data Analyst - CropSights, a Precision Ag Platform (Remote - Must...",
    "salary_year_avg": "77350.0",
    "company_name": "Wilbur-Ellis Company",
    "skills": "r"
  },
  {
    "job_id": 1379514,
    "job_title": "Data Analyst - CropSights, a Precision Ag Platform (Remote - Must...",
    "salary_year_avg": "77350.0",
    "company_name": "Wilbur-Ellis Company",
    "skills": "excel"
  },
  {
    "job_id": 974504,
    "job_title": "Information Protection Data Analyst - Remote | WFH",
    "salary_year_avg": "77000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 974504,
    "job_title": "Information Protection Data Analyst - Remote | WFH",
    "salary_year_avg": "77000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 974504,
    "job_title": "Information Protection Data Analyst - Remote | WFH",
    "salary_year_avg": "77000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "powershell"
  },
  {
    "job_id": 974504,
    "job_title": "Information Protection Data Analyst - Remote | WFH",
    "salary_year_avg": "77000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql server"
  },
  {
    "job_id": 974504,
    "job_title": "Information Protection Data Analyst - Remote | WFH",
    "salary_year_avg": "77000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "azure"
  },
  {
    "job_id": 974504,
    "job_title": "Information Protection Data Analyst - Remote | WFH",
    "salary_year_avg": "77000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 974504,
    "job_title": "Information Protection Data Analyst - Remote | WFH",
    "salary_year_avg": "77000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "powerpoint"
  },
  {
    "job_id": 974504,
    "job_title": "Information Protection Data Analyst - Remote | WFH",
    "salary_year_avg": "77000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "outlook"
  },
  {
    "job_id": 411881,
    "job_title": "Data Analyst",
    "salary_year_avg": "76842.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "sql"
  },
  {
    "job_id": 411881,
    "job_title": "Data Analyst",
    "salary_year_avg": "76842.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "sas"
  },
  {
    "job_id": 411881,
    "job_title": "Data Analyst",
    "salary_year_avg": "76842.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "excel"
  },
  {
    "job_id": 411881,
    "job_title": "Data Analyst",
    "salary_year_avg": "76842.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "tableau"
  },
  {
    "job_id": 411881,
    "job_title": "Data Analyst",
    "salary_year_avg": "76842.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "sas"
  },
  {
    "job_id": 411881,
    "job_title": "Data Analyst",
    "salary_year_avg": "76842.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "alteryx"
  },
  {
    "job_id": 1500082,
    "job_title": "Data Analyst",
    "salary_year_avg": "76783.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "sql"
  },
  {
    "job_id": 487133,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "76559.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "sql"
  },
  {
    "job_id": 487133,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "76559.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "sas"
  },
  {
    "job_id": 487133,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "76559.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "vba"
  },
  {
    "job_id": 487133,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "76559.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "excel"
  },
  {
    "job_id": 487133,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "76559.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "sas"
  },
  {
    "job_id": 558598,
    "job_title": "Data Analyst",
    "salary_year_avg": "76500.0",
    "company_name": "Invitae",
    "skills": "sql"
  },
  {
    "job_id": 558598,
    "job_title": "Data Analyst",
    "salary_year_avg": "76500.0",
    "company_name": "Invitae",
    "skills": "spring"
  },
  {
    "job_id": 558598,
    "job_title": "Data Analyst",
    "salary_year_avg": "76500.0",
    "company_name": "Invitae",
    "skills": "excel"
  },
  {
    "job_id": 558598,
    "job_title": "Data Analyst",
    "salary_year_avg": "76500.0",
    "company_name": "Invitae",
    "skills": "tableau"
  },
  {
    "job_id": 558598,
    "job_title": "Data Analyst",
    "salary_year_avg": "76500.0",
    "company_name": "Invitae",
    "skills": "looker"
  },
  {
    "job_id": 558598,
    "job_title": "Data Analyst",
    "salary_year_avg": "76500.0",
    "company_name": "Invitae",
    "skills": "sheets"
  },
  {
    "job_id": 1219618,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "76364.5",
    "company_name": "Stride inc",
    "skills": "sql"
  },
  {
    "job_id": 1219618,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "76364.5",
    "company_name": "Stride inc",
    "skills": "vba"
  },
  {
    "job_id": 1219618,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "76364.5",
    "company_name": "Stride inc",
    "skills": "c"
  },
  {
    "job_id": 1219618,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "76364.5",
    "company_name": "Stride inc",
    "skills": "excel"
  },
  {
    "job_id": 1219618,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "76364.5",
    "company_name": "Stride inc",
    "skills": "word"
  },
  {
    "job_id": 1219618,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "76364.5",
    "company_name": "Stride inc",
    "skills": "sharepoint"
  },
  {
    "job_id": 1219618,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "76364.5",
    "company_name": "Stride inc",
    "skills": "powerpoint"
  },
  {
    "job_id": 164596,
    "job_title": "Data Analyst",
    "salary_year_avg": "76007.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "sql"
  },
  {
    "job_id": 164596,
    "job_title": "Data Analyst",
    "salary_year_avg": "76007.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "python"
  },
  {
    "job_id": 164596,
    "job_title": "Data Analyst",
    "salary_year_avg": "76007.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "r"
  },
  {
    "job_id": 164596,
    "job_title": "Data Analyst",
    "salary_year_avg": "76007.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "sas"
  },
  {
    "job_id": 164596,
    "job_title": "Data Analyst",
    "salary_year_avg": "76007.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "matplotlib"
  },
  {
    "job_id": 164596,
    "job_title": "Data Analyst",
    "salary_year_avg": "76007.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "tableau"
  },
  {
    "job_id": 164596,
    "job_title": "Data Analyst",
    "salary_year_avg": "76007.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "power bi"
  },
  {
    "job_id": 164596,
    "job_title": "Data Analyst",
    "salary_year_avg": "76007.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "sas"
  },
  {
    "job_id": 959874,
    "job_title": "Data Analyst",
    "salary_year_avg": "76007.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "excel"
  },
  {
    "job_id": 757196,
    "job_title": "GTM Revenue Operations Data Analyst",
    "salary_year_avg": "76000.0",
    "company_name": "UiPath",
    "skills": "go"
  },
  {
    "job_id": 757196,
    "job_title": "GTM Revenue Operations Data Analyst",
    "salary_year_avg": "76000.0",
    "company_name": "UiPath",
    "skills": "excel"
  },
  {
    "job_id": 757196,
    "job_title": "GTM Revenue Operations Data Analyst",
    "salary_year_avg": "76000.0",
    "company_name": "UiPath",
    "skills": "tableau"
  },
  {
    "job_id": 757196,
    "job_title": "GTM Revenue Operations Data Analyst",
    "salary_year_avg": "76000.0",
    "company_name": "UiPath",
    "skills": "powerpoint"
  },
  {
    "job_id": 1259256,
    "job_title": "Data Analyst",
    "salary_year_avg": "76000.0",
    "company_name": "Get It Recruit - Transportation",
    "skills": "sql"
  },
  {
    "job_id": 1259256,
    "job_title": "Data Analyst",
    "salary_year_avg": "76000.0",
    "company_name": "Get It Recruit - Transportation",
    "skills": "excel"
  },
  {
    "job_id": 371461,
    "job_title": "Data Analyst",
    "salary_year_avg": "75566.0",
    "company_name": "Get It Recruit - Marketing",
    "skills": "sql"
  },
  {
    "job_id": 371461,
    "job_title": "Data Analyst",
    "salary_year_avg": "75566.0",
    "company_name": "Get It Recruit - Marketing",
    "skills": "tableau"
  },
  {
    "job_id": 371461,
    "job_title": "Data Analyst",
    "salary_year_avg": "75566.0",
    "company_name": "Get It Recruit - Marketing",
    "skills": "power bi"
  },
  {
    "job_id": 371461,
    "job_title": "Data Analyst",
    "salary_year_avg": "75566.0",
    "company_name": "Get It Recruit - Marketing",
    "skills": "looker"
  },
  {
    "job_id": 1068141,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "75500.0",
    "company_name": "ServiceTitan",
    "skills": "sql"
  },
  {
    "job_id": 1068141,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "75500.0",
    "company_name": "ServiceTitan",
    "skills": "azure"
  },
  {
    "job_id": 1068141,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "75500.0",
    "company_name": "ServiceTitan",
    "skills": "aws"
  },
  {
    "job_id": 1068141,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "75500.0",
    "company_name": "ServiceTitan",
    "skills": "snowflake"
  },
  {
    "job_id": 1068141,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "75500.0",
    "company_name": "ServiceTitan",
    "skills": "tableau"
  },
  {
    "job_id": 1068141,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "75500.0",
    "company_name": "ServiceTitan",
    "skills": "flow"
  },
  {
    "job_id": 1365513,
    "job_title": "Health Data Analyst - Remote",
    "salary_year_avg": "75296.0",
    "company_name": "Teacher Retirement System of Texas",
    "skills": "sql"
  },
  {
    "job_id": 1365513,
    "job_title": "Health Data Analyst - Remote",
    "salary_year_avg": "75296.0",
    "company_name": "Teacher Retirement System of Texas",
    "skills": "python"
  },
  {
    "job_id": 1365513,
    "job_title": "Health Data Analyst - Remote",
    "salary_year_avg": "75296.0",
    "company_name": "Teacher Retirement System of Texas",
    "skills": "r"
  },
  {
    "job_id": 368638,
    "job_title": "Data Analyst - Department of Surgery/JRSC (Greater NYC Area, NY or...",
    "salary_year_avg": "75250.0",
    "company_name": "Memorial Sloan Kettering Cancer Center",
    "skills": "sql"
  },
  {
    "job_id": 368638,
    "job_title": "Data Analyst - Department of Surgery/JRSC (Greater NYC Area, NY or...",
    "salary_year_avg": "75250.0",
    "company_name": "Memorial Sloan Kettering Cancer Center",
    "skills": "r"
  },
  {
    "job_id": 368638,
    "job_title": "Data Analyst - Department of Surgery/JRSC (Greater NYC Area, NY or...",
    "salary_year_avg": "75250.0",
    "company_name": "Memorial Sloan Kettering Cancer Center",
    "skills": "go"
  },
  {
    "job_id": 368638,
    "job_title": "Data Analyst - Department of Surgery/JRSC (Greater NYC Area, NY or...",
    "salary_year_avg": "75250.0",
    "company_name": "Memorial Sloan Kettering Cancer Center",
    "skills": "excel"
  },
  {
    "job_id": 368638,
    "job_title": "Data Analyst - Department of Surgery/JRSC (Greater NYC Area, NY or...",
    "salary_year_avg": "75250.0",
    "company_name": "Memorial Sloan Kettering Cancer Center",
    "skills": "tableau"
  },
  {
    "job_id": 1170721,
    "job_title": "Junior Data BI Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Patterned Learning AI",
    "skills": "sql"
  },
  {
    "job_id": 1170721,
    "job_title": "Junior Data BI Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Patterned Learning AI",
    "skills": "nosql"
  },
  {
    "job_id": 1170721,
    "job_title": "Junior Data BI Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Patterned Learning AI",
    "skills": "vba"
  },
  {
    "job_id": 1170721,
    "job_title": "Junior Data BI Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Patterned Learning AI",
    "skills": "oracle"
  },
  {
    "job_id": 1170721,
    "job_title": "Junior Data BI Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Patterned Learning AI",
    "skills": "hadoop"
  },
  {
    "job_id": 1170721,
    "job_title": "Junior Data BI Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Patterned Learning AI",
    "skills": "excel"
  },
  {
    "job_id": 1170721,
    "job_title": "Junior Data BI Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Patterned Learning AI",
    "skills": "tableau"
  },
  {
    "job_id": 210881,
    "job_title": "Data Analyst - ggplot2, R, SQL, Python- Remote",
    "salary_year_avg": "75000.0",
    "company_name": "CyberCoders",
    "skills": "sql"
  },
  {
    "job_id": 210881,
    "job_title": "Data Analyst - ggplot2, R, SQL, Python- Remote",
    "salary_year_avg": "75000.0",
    "company_name": "CyberCoders",
    "skills": "python"
  },
  {
    "job_id": 210881,
    "job_title": "Data Analyst - ggplot2, R, SQL, Python- Remote",
    "salary_year_avg": "75000.0",
    "company_name": "CyberCoders",
    "skills": "r"
  },
  {
    "job_id": 210881,
    "job_title": "Data Analyst - ggplot2, R, SQL, Python- Remote",
    "salary_year_avg": "75000.0",
    "company_name": "CyberCoders",
    "skills": "ggplot2"
  },
  {
    "job_id": 210881,
    "job_title": "Data Analyst - ggplot2, R, SQL, Python- Remote",
    "salary_year_avg": "75000.0",
    "company_name": "CyberCoders",
    "skills": "word"
  },
  {
    "job_id": 479282,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "hackajob",
    "skills": "sql"
  },
  {
    "job_id": 479282,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "hackajob",
    "skills": "python"
  },
  {
    "job_id": 479282,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "hackajob",
    "skills": "java"
  },
  {
    "job_id": 479282,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "hackajob",
    "skills": "r"
  },
  {
    "job_id": 479282,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "hackajob",
    "skills": "c++"
  },
  {
    "job_id": 479282,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "hackajob",
    "skills": "c#"
  },
  {
    "job_id": 479282,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "hackajob",
    "skills": "matlab"
  },
  {
    "job_id": 1517483,
    "job_title": "Data Analyst - SaaS - EdTech",
    "salary_year_avg": "75000.0",
    "company_name": "KodeKloud",
    "skills": "sql"
  },
  {
    "job_id": 1517483,
    "job_title": "Data Analyst - SaaS - EdTech",
    "salary_year_avg": "75000.0",
    "company_name": "KodeKloud",
    "skills": "hadoop"
  },
  {
    "job_id": 1517483,
    "job_title": "Data Analyst - SaaS - EdTech",
    "salary_year_avg": "75000.0",
    "company_name": "KodeKloud",
    "skills": "tableau"
  },
  {
    "job_id": 1517483,
    "job_title": "Data Analyst - SaaS - EdTech",
    "salary_year_avg": "75000.0",
    "company_name": "KodeKloud",
    "skills": "power bi"
  },
  {
    "job_id": 193923,
    "job_title": "Supply Chain Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Get It Recruit - Transportation",
    "skills": "excel"
  },
  {
    "job_id": 193923,
    "job_title": "Supply Chain Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Get It Recruit - Transportation",
    "skills": "power bi"
  },
  {
    "job_id": 156786,
    "job_title": "Junior Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Patterned Learning AI",
    "skills": "sql"
  },
  {
    "job_id": 156786,
    "job_title": "Junior Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Patterned Learning AI",
    "skills": "excel"
  },
  {
    "job_id": 156786,
    "job_title": "Junior Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Patterned Learning AI",
    "skills": "sheets"
  },
  {
    "job_id": 1406540,
    "job_title": "Associate Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Beyond 12",
    "skills": "sql"
  },
  {
    "job_id": 1406540,
    "job_title": "Associate Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Beyond 12",
    "skills": "python"
  },
  {
    "job_id": 1406540,
    "job_title": "Associate Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Beyond 12",
    "skills": "excel"
  },
  {
    "job_id": 1406540,
    "job_title": "Associate Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Beyond 12",
    "skills": "looker"
  },
  {
    "job_id": 1321085,
    "job_title": "Junior Data Analyst - US/Canada",
    "salary_year_avg": "75000.0",
    "company_name": "Patterned Learning AI",
    "skills": "sql"
  },
  {
    "job_id": 1321085,
    "job_title": "Junior Data Analyst - US/Canada",
    "salary_year_avg": "75000.0",
    "company_name": "Patterned Learning AI",
    "skills": "excel"
  },
  {
    "job_id": 1321085,
    "job_title": "Junior Data Analyst - US/Canada",
    "salary_year_avg": "75000.0",
    "company_name": "Patterned Learning AI",
    "skills": "sheets"
  },
  {
    "job_id": 1461191,
    "job_title": "DATA ANALYST - We offer career advancement, a work-life balance...",
    "salary_year_avg": "75000.0",
    "company_name": "Zunch Staffing",
    "skills": "sql"
  },
  {
    "job_id": 1461191,
    "job_title": "DATA ANALYST - We offer career advancement, a work-life balance...",
    "salary_year_avg": "75000.0",
    "company_name": "Zunch Staffing",
    "skills": "sas"
  },
  {
    "job_id": 1461191,
    "job_title": "DATA ANALYST - We offer career advancement, a work-life balance...",
    "salary_year_avg": "75000.0",
    "company_name": "Zunch Staffing",
    "skills": "sas"
  },
  {
    "job_id": 1461191,
    "job_title": "DATA ANALYST - We offer career advancement, a work-life balance...",
    "salary_year_avg": "75000.0",
    "company_name": "Zunch Staffing",
    "skills": "spss"
  },
  {
    "job_id": 1513802,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "In Technology Group Inc (US)",
    "skills": "sql"
  },
  {
    "job_id": 1513802,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "In Technology Group Inc (US)",
    "skills": "python"
  },
  {
    "job_id": 1513802,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "In Technology Group Inc (US)",
    "skills": "snowflake"
  },
  {
    "job_id": 1513802,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "In Technology Group Inc (US)",
    "skills": "excel"
  },
  {
    "job_id": 1513802,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "In Technology Group Inc (US)",
    "skills": "tableau"
  },
  {
    "job_id": 1513802,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "In Technology Group Inc (US)",
    "skills": "power bi"
  },
  {
    "job_id": 555049,
    "job_title": "Data Analyst/Epic Cogito",
    "salary_year_avg": "75000.0",
    "company_name": "Engage Partners Inc.",
    "skills": "sql"
  },
  {
    "job_id": 555049,
    "job_title": "Data Analyst/Epic Cogito",
    "salary_year_avg": "75000.0",
    "company_name": "Engage Partners Inc.",
    "skills": "tableau"
  },
  {
    "job_id": 240037,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Get It Recruit - Hospitality",
    "skills": "excel"
  },
  {
    "job_id": 240037,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Get It Recruit - Hospitality",
    "skills": "powerpoint"
  },
  {
    "job_id": 221984,
    "job_title": "Data Analyst, Category Management & Demand Planning",
    "salary_year_avg": "75000.0",
    "company_name": "MaryRuth's",
    "skills": "excel"
  },
  {
    "job_id": 221984,
    "job_title": "Data Analyst, Category Management & Demand Planning",
    "salary_year_avg": "75000.0",
    "company_name": "MaryRuth's",
    "skills": "sap"
  },
  {
    "job_id": 221984,
    "job_title": "Data Analyst, Category Management & Demand Planning",
    "salary_year_avg": "75000.0",
    "company_name": "MaryRuth's",
    "skills": "flow"
  },
  {
    "job_id": 1210145,
    "job_title": "Research Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Health Choice Network",
    "skills": "sql"
  },
  {
    "job_id": 1210145,
    "job_title": "Research Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Health Choice Network",
    "skills": "sql server"
  },
  {
    "job_id": 1210145,
    "job_title": "Research Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Health Choice Network",
    "skills": "word"
  },
  {
    "job_id": 1065749,
    "job_title": "HR Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Chicken of the Sea",
    "skills": "spark"
  },
  {
    "job_id": 1065749,
    "job_title": "HR Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Chicken of the Sea",
    "skills": "excel"
  },
  {
    "job_id": 1065749,
    "job_title": "HR Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Chicken of the Sea",
    "skills": "powerpoint"
  },
  {
    "job_id": 1241014,
    "job_title": "Research Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Health Choice Network",
    "skills": "sql"
  },
  {
    "job_id": 1241014,
    "job_title": "Research Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Health Choice Network",
    "skills": "sql server"
  },
  {
    "job_id": 1241014,
    "job_title": "Research Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Health Choice Network",
    "skills": "word"
  },
  {
    "job_id": 764861,
    "job_title": "HR Jr. Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Chicken of the Sea",
    "skills": "spark"
  },
  {
    "job_id": 764861,
    "job_title": "HR Jr. Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Chicken of the Sea",
    "skills": "excel"
  },
  {
    "job_id": 764861,
    "job_title": "HR Jr. Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Chicken of the Sea",
    "skills": "powerpoint"
  },
  {
    "job_id": 341807,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 341807,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "powerpoint"
  },
  {
    "job_id": 813827,
    "job_title": "Research Data Analyst",
    "salary_year_avg": "74500.0",
    "company_name": "Southern California University",
    "skills": "r"
  },
  {
    "job_id": 813827,
    "job_title": "Research Data Analyst",
    "salary_year_avg": "74500.0",
    "company_name": "Southern California University",
    "skills": "sas"
  },
  {
    "job_id": 813827,
    "job_title": "Research Data Analyst",
    "salary_year_avg": "74500.0",
    "company_name": "Southern California University",
    "skills": "excel"
  },
  {
    "job_id": 813827,
    "job_title": "Research Data Analyst",
    "salary_year_avg": "74500.0",
    "company_name": "Southern California University",
    "skills": "tableau"
  },
  {
    "job_id": 813827,
    "job_title": "Research Data Analyst",
    "salary_year_avg": "74500.0",
    "company_name": "Southern California University",
    "skills": "sas"
  },
  {
    "job_id": 813827,
    "job_title": "Research Data Analyst",
    "salary_year_avg": "74500.0",
    "company_name": "Southern California University",
    "skills": "word"
  },
  {
    "job_id": 813827,
    "job_title": "Research Data Analyst",
    "salary_year_avg": "74500.0",
    "company_name": "Southern California University",
    "skills": "powerpoint"
  },
  {
    "job_id": 813827,
    "job_title": "Research Data Analyst",
    "salary_year_avg": "74500.0",
    "company_name": "Southern California University",
    "skills": "spss"
  },
  {
    "job_id": 47248,
    "job_title": "Data Scientist/Financial Data Analyst",
    "salary_year_avg": "74224.5",
    "company_name": "NCUA",
    "skills": "python"
  },
  {
    "job_id": 47248,
    "job_title": "Data Scientist/Financial Data Analyst",
    "salary_year_avg": "74224.5",
    "company_name": "NCUA",
    "skills": "r"
  },
  {
    "job_id": 47248,
    "job_title": "Data Scientist/Financial Data Analyst",
    "salary_year_avg": "74224.5",
    "company_name": "NCUA",
    "skills": "c"
  },
  {
    "job_id": 425984,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "74049.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "sql"
  },
  {
    "job_id": 425984,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "74049.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "python"
  },
  {
    "job_id": 425984,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "74049.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "r"
  },
  {
    "job_id": 425984,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "74049.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "sas"
  },
  {
    "job_id": 425984,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "74049.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "sas"
  },
  {
    "job_id": 425984,
    "job_title": "Healthcare Data Analyst",
    "salary_year_avg": "74049.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "jira"
  },
  {
    "job_id": 1338279,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "74000.0",
    "company_name": "Retriever Medial Dental Payments LLC",
    "skills": "sql"
  },
  {
    "job_id": 1338279,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "74000.0",
    "company_name": "Retriever Medial Dental Payments LLC",
    "skills": "python"
  },
  {
    "job_id": 1338279,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "74000.0",
    "company_name": "Retriever Medial Dental Payments LLC",
    "skills": "r"
  },
  {
    "job_id": 1338279,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "74000.0",
    "company_name": "Retriever Medial Dental Payments LLC",
    "skills": "vba"
  },
  {
    "job_id": 1338279,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "74000.0",
    "company_name": "Retriever Medial Dental Payments LLC",
    "skills": "sql server"
  },
  {
    "job_id": 1338279,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "74000.0",
    "company_name": "Retriever Medial Dental Payments LLC",
    "skills": "excel"
  },
  {
    "job_id": 1338279,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "74000.0",
    "company_name": "Retriever Medial Dental Payments LLC",
    "skills": "tableau"
  },
  {
    "job_id": 1726747,
    "job_title": "Data Analyst",
    "salary_year_avg": "74000.0",
    "company_name": "Applied Engineering Management Corporation",
    "skills": "python"
  },
  {
    "job_id": 1726747,
    "job_title": "Data Analyst",
    "salary_year_avg": "74000.0",
    "company_name": "Applied Engineering Management Corporation",
    "skills": "r"
  },
  {
    "job_id": 1726747,
    "job_title": "Data Analyst",
    "salary_year_avg": "74000.0",
    "company_name": "Applied Engineering Management Corporation",
    "skills": "sas"
  },
  {
    "job_id": 1726747,
    "job_title": "Data Analyst",
    "salary_year_avg": "74000.0",
    "company_name": "Applied Engineering Management Corporation",
    "skills": "excel"
  },
  {
    "job_id": 1726747,
    "job_title": "Data Analyst",
    "salary_year_avg": "74000.0",
    "company_name": "Applied Engineering Management Corporation",
    "skills": "sas"
  },
  {
    "job_id": 669824,
    "job_title": "Data Insight Analyst",
    "salary_year_avg": "73696.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "sql"
  },
  {
    "job_id": 669824,
    "job_title": "Data Insight Analyst",
    "salary_year_avg": "73696.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "excel"
  },
  {
    "job_id": 669824,
    "job_title": "Data Insight Analyst",
    "salary_year_avg": "73696.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "tableau"
  },
  {
    "job_id": 1553132,
    "job_title": "Medicare Compliance Data Analyst",
    "salary_year_avg": "73631.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "sql"
  },
  {
    "job_id": 1553132,
    "job_title": "Medicare Compliance Data Analyst",
    "salary_year_avg": "73631.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "excel"
  },
  {
    "job_id": 1553132,
    "job_title": "Medicare Compliance Data Analyst",
    "salary_year_avg": "73631.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "powerpoint"
  },
  {
    "job_id": 1553132,
    "job_title": "Medicare Compliance Data Analyst",
    "salary_year_avg": "73631.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "alteryx"
  },
  {
    "job_id": 769341,
    "job_title": "Research Scientist (Remote)",
    "salary_year_avg": "73000.0",
    "company_name": "Center for Open Science",
    "skills": "r"
  },
  {
    "job_id": 1395633,
    "job_title": "Financial Data Analyst",
    "salary_year_avg": "73000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "sql"
  },
  {
    "job_id": 1395633,
    "job_title": "Financial Data Analyst",
    "salary_year_avg": "73000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "python"
  },
  {
    "job_id": 1395633,
    "job_title": "Financial Data Analyst",
    "salary_year_avg": "73000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "vba"
  },
  {
    "job_id": 1395633,
    "job_title": "Financial Data Analyst",
    "salary_year_avg": "73000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "excel"
  },
  {
    "job_id": 1395633,
    "job_title": "Financial Data Analyst",
    "salary_year_avg": "73000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "tableau"
  },
  {
    "job_id": 1395633,
    "job_title": "Financial Data Analyst",
    "salary_year_avg": "73000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "power bi"
  },
  {
    "job_id": 1395633,
    "job_title": "Financial Data Analyst",
    "salary_year_avg": "73000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "dax"
  },
  {
    "job_id": 1583314,
    "job_title": "Pricing Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 1583314,
    "job_title": "Pricing Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sap"
  },
  {
    "job_id": 468876,
    "job_title": "Data Analyst Marketing",
    "salary_year_avg": "72500.0",
    "company_name": "Coda Staffing",
    "skills": "sql"
  },
  {
    "job_id": 468876,
    "job_title": "Data Analyst Marketing",
    "salary_year_avg": "72500.0",
    "company_name": "Coda Staffing",
    "skills": "python"
  },
  {
    "job_id": 468876,
    "job_title": "Data Analyst Marketing",
    "salary_year_avg": "72500.0",
    "company_name": "Coda Staffing",
    "skills": "r"
  },
  {
    "job_id": 468876,
    "job_title": "Data Analyst Marketing",
    "salary_year_avg": "72500.0",
    "company_name": "Coda Staffing",
    "skills": "sas"
  },
  {
    "job_id": 468876,
    "job_title": "Data Analyst Marketing",
    "salary_year_avg": "72500.0",
    "company_name": "Coda Staffing",
    "skills": "matplotlib"
  },
  {
    "job_id": 468876,
    "job_title": "Data Analyst Marketing",
    "salary_year_avg": "72500.0",
    "company_name": "Coda Staffing",
    "skills": "plotly"
  },
  {
    "job_id": 468876,
    "job_title": "Data Analyst Marketing",
    "salary_year_avg": "72500.0",
    "company_name": "Coda Staffing",
    "skills": "seaborn"
  },
  {
    "job_id": 468876,
    "job_title": "Data Analyst Marketing",
    "salary_year_avg": "72500.0",
    "company_name": "Coda Staffing",
    "skills": "sas"
  },
  {
    "job_id": 468876,
    "job_title": "Data Analyst Marketing",
    "salary_year_avg": "72500.0",
    "company_name": "Coda Staffing",
    "skills": "spss"
  },
  {
    "job_id": 1684855,
    "job_title": "Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "Every Body Texas",
    "skills": "sql"
  },
  {
    "job_id": 1684855,
    "job_title": "Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "Every Body Texas",
    "skills": "r"
  },
  {
    "job_id": 1684855,
    "job_title": "Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "Every Body Texas",
    "skills": "azure"
  },
  {
    "job_id": 1684855,
    "job_title": "Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "Every Body Texas",
    "skills": "power bi"
  },
  {
    "job_id": 1684855,
    "job_title": "Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "Every Body Texas",
    "skills": "spss"
  },
  {
    "job_id": 1262610,
    "job_title": "Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "Insight Global",
    "skills": "sql"
  },
  {
    "job_id": 1262610,
    "job_title": "Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "Insight Global",
    "skills": "excel"
  },
  {
    "job_id": 621498,
    "job_title": "Data Analyst III",
    "salary_year_avg": "72500.0",
    "company_name": "Global Healthcare Exchange, Inc.",
    "skills": "sql"
  },
  {
    "job_id": 621498,
    "job_title": "Data Analyst III",
    "salary_year_avg": "72500.0",
    "company_name": "Global Healthcare Exchange, Inc.",
    "skills": "python"
  },
  {
    "job_id": 621498,
    "job_title": "Data Analyst III",
    "salary_year_avg": "72500.0",
    "company_name": "Global Healthcare Exchange, Inc.",
    "skills": "r"
  },
  {
    "job_id": 621498,
    "job_title": "Data Analyst III",
    "salary_year_avg": "72500.0",
    "company_name": "Global Healthcare Exchange, Inc.",
    "skills": "excel"
  },
  {
    "job_id": 621498,
    "job_title": "Data Analyst III",
    "salary_year_avg": "72500.0",
    "company_name": "Global Healthcare Exchange, Inc.",
    "skills": "gitlab"
  },
  {
    "job_id": 93604,
    "job_title": "Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "Bluesight",
    "skills": "sql"
  },
  {
    "job_id": 93604,
    "job_title": "Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "Bluesight",
    "skills": "python"
  },
  {
    "job_id": 93604,
    "job_title": "Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "Bluesight",
    "skills": "r"
  },
  {
    "job_id": 93604,
    "job_title": "Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "Bluesight",
    "skills": "ruby"
  },
  {
    "job_id": 93604,
    "job_title": "Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "Bluesight",
    "skills": "ruby"
  },
  {
    "job_id": 93604,
    "job_title": "Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "Bluesight",
    "skills": "excel"
  },
  {
    "job_id": 93604,
    "job_title": "Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "Bluesight",
    "skills": "sheets"
  },
  {
    "job_id": 1446024,
    "job_title": "Contact Center Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "CharterUP",
    "skills": "erlang"
  },
  {
    "job_id": 1446024,
    "job_title": "Contact Center Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "CharterUP",
    "skills": "express"
  },
  {
    "job_id": 1446024,
    "job_title": "Contact Center Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "CharterUP",
    "skills": "excel"
  },
  {
    "job_id": 1446024,
    "job_title": "Contact Center Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "CharterUP",
    "skills": "tableau"
  },
  {
    "job_id": 1446024,
    "job_title": "Contact Center Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "CharterUP",
    "skills": "power bi"
  },
  {
    "job_id": 1446024,
    "job_title": "Contact Center Data Analyst",
    "salary_year_avg": "72500.0",
    "company_name": "CharterUP",
    "skills": "sheets"
  },
  {
    "job_id": 432310,
    "job_title": "Junior Business/Data Analyst",
    "salary_year_avg": "72000.0",
    "company_name": "Get It Recruit - Transportation",
    "skills": "sql"
  },
  {
    "job_id": 432310,
    "job_title": "Junior Business/Data Analyst",
    "salary_year_avg": "72000.0",
    "company_name": "Get It Recruit - Transportation",
    "skills": "nosql"
  },
  {
    "job_id": 897644,
    "job_title": "Financial Data Analyst",
    "salary_year_avg": "71850.0",
    "company_name": "CVS Health",
    "skills": "sql"
  },
  {
    "job_id": 361990,
    "job_title": "Data Analyst",
    "salary_year_avg": "71850.0",
    "company_name": "CVS Health",
    "skills": "excel"
  },
  {
    "job_id": 361990,
    "job_title": "Data Analyst",
    "salary_year_avg": "71850.0",
    "company_name": "CVS Health",
    "skills": "tableau"
  },
  {
    "job_id": 361990,
    "job_title": "Data Analyst",
    "salary_year_avg": "71850.0",
    "company_name": "CVS Health",
    "skills": "power bi"
  },
  {
    "job_id": 361990,
    "job_title": "Data Analyst",
    "salary_year_avg": "71850.0",
    "company_name": "CVS Health",
    "skills": "alteryx"
  },
  {
    "job_id": 1698696,
    "job_title": "Data Analyst",
    "salary_year_avg": "71850.0",
    "company_name": "CVS Health",
    "skills": "sql"
  },
  {
    "job_id": 1698696,
    "job_title": "Data Analyst",
    "salary_year_avg": "71850.0",
    "company_name": "CVS Health",
    "skills": "python"
  },
  {
    "job_id": 1698696,
    "job_title": "Data Analyst",
    "salary_year_avg": "71850.0",
    "company_name": "CVS Health",
    "skills": "r"
  },
  {
    "job_id": 1698696,
    "job_title": "Data Analyst",
    "salary_year_avg": "71850.0",
    "company_name": "CVS Health",
    "skills": "phoenix"
  },
  {
    "job_id": 1698696,
    "job_title": "Data Analyst",
    "salary_year_avg": "71850.0",
    "company_name": "CVS Health",
    "skills": "tableau"
  },
  {
    "job_id": 225308,
    "job_title": "Data Analyst Intern",
    "salary_year_avg": "71000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 225308,
    "job_title": "Data Analyst Intern",
    "salary_year_avg": "71000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 225308,
    "job_title": "Data Analyst Intern",
    "salary_year_avg": "71000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 1096460,
    "job_title": "Investment Operations Data Analyst",
    "salary_year_avg": "70500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1128522,
    "job_title": "Manufacturing Operations Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1128522,
    "job_title": "Manufacturing Operations Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "planner"
  },
  {
    "job_id": 723713,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Amplified Sourcing",
    "skills": "sql"
  },
  {
    "job_id": 723713,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Amplified Sourcing",
    "skills": "python"
  },
  {
    "job_id": 723713,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Amplified Sourcing",
    "skills": "r"
  },
  {
    "job_id": 723713,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Amplified Sourcing",
    "skills": "sas"
  },
  {
    "job_id": 723713,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Amplified Sourcing",
    "skills": "sas"
  },
  {
    "job_id": 442024,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Coda Search│Staffing",
    "skills": "sql"
  },
  {
    "job_id": 442024,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Coda Search│Staffing",
    "skills": "python"
  },
  {
    "job_id": 442024,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Coda Search│Staffing",
    "skills": "r"
  },
  {
    "job_id": 442024,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Coda Search│Staffing",
    "skills": "sas"
  },
  {
    "job_id": 442024,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Coda Search│Staffing",
    "skills": "matplotlib"
  },
  {
    "job_id": 442024,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Coda Search│Staffing",
    "skills": "plotly"
  },
  {
    "job_id": 442024,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Coda Search│Staffing",
    "skills": "seaborn"
  },
  {
    "job_id": 442024,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Coda Search│Staffing",
    "skills": "sas"
  },
  {
    "job_id": 442024,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Coda Search│Staffing",
    "skills": "spss"
  },
  {
    "job_id": 339742,
    "job_title": "Healthcare Contract/Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Kermit",
    "skills": "excel"
  },
  {
    "job_id": 1473524,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Partnership Employment",
    "skills": "sql"
  },
  {
    "job_id": 1473524,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Partnership Employment",
    "skills": "redshift"
  },
  {
    "job_id": 1473524,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Partnership Employment",
    "skills": "excel"
  },
  {
    "job_id": 1264889,
    "job_title": "Junior Reporting Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1264889,
    "job_title": "Junior Reporting Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1264889,
    "job_title": "Junior Reporting Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "vba"
  },
  {
    "job_id": 1264889,
    "job_title": "Junior Reporting Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 1264889,
    "job_title": "Junior Reporting Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 1264889,
    "job_title": "Junior Reporting Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sharepoint"
  },
  {
    "job_id": 330595,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Ohio Shared Information Services Inc",
    "skills": "sql"
  },
  {
    "job_id": 330595,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Ohio Shared Information Services Inc",
    "skills": "t-sql"
  },
  {
    "job_id": 330595,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Ohio Shared Information Services Inc",
    "skills": "crystal"
  },
  {
    "job_id": 330595,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Ohio Shared Information Services Inc",
    "skills": "sql server"
  },
  {
    "job_id": 330595,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Ohio Shared Information Services Inc",
    "skills": "azure"
  },
  {
    "job_id": 330595,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Ohio Shared Information Services Inc",
    "skills": "power bi"
  },
  {
    "job_id": 330595,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Ohio Shared Information Services Inc",
    "skills": "git"
  },
  {
    "job_id": 330595,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Ohio Shared Information Services Inc",
    "skills": "flow"
  },
  {
    "job_id": 1625061,
    "job_title": "Asset Verification Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 1397514,
    "job_title": "Community Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1397514,
    "job_title": "Community Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "planner"
  },
  {
    "job_id": 50512,
    "job_title": "Loan Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "AdelFi",
    "skills": "spreadsheet"
  },
  {
    "job_id": 1527329,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Zelo Digital Recruitment",
    "skills": "sql"
  },
  {
    "job_id": 1527329,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Zelo Digital Recruitment",
    "skills": "python"
  },
  {
    "job_id": 1527329,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Zelo Digital Recruitment",
    "skills": "r"
  },
  {
    "job_id": 1527329,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Zelo Digital Recruitment",
    "skills": "tableau"
  },
  {
    "job_id": 1527329,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Zelo Digital Recruitment",
    "skills": "power bi"
  },
  {
    "job_id": 683865,
    "job_title": "Financial Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Global Accounting Network",
    "skills": "sql"
  },
  {
    "job_id": 683865,
    "job_title": "Financial Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Global Accounting Network",
    "skills": "python"
  },
  {
    "job_id": 683865,
    "job_title": "Financial Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Global Accounting Network",
    "skills": "power bi"
  },
  {
    "job_id": 539154,
    "job_title": "Fraud Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Pentasia",
    "skills": "sql"
  },
  {
    "job_id": 539154,
    "job_title": "Fraud Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Pentasia",
    "skills": "python"
  },
  {
    "job_id": 539154,
    "job_title": "Fraud Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Pentasia",
    "skills": "r"
  },
  {
    "job_id": 539154,
    "job_title": "Fraud Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Pentasia",
    "skills": "excel"
  },
  {
    "job_id": 134039,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Class Action Capital Recovery LLC",
    "skills": "sql"
  },
  {
    "job_id": 134039,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Class Action Capital Recovery LLC",
    "skills": "excel"
  },
  {
    "job_id": 482909,
    "job_title": "Data & Analytics Analyst - Virtual, USA",
    "salary_year_avg": "69500.0",
    "company_name": "Diversified",
    "skills": "sql"
  },
  {
    "job_id": 482909,
    "job_title": "Data & Analytics Analyst - Virtual, USA",
    "salary_year_avg": "69500.0",
    "company_name": "Diversified",
    "skills": "python"
  },
  {
    "job_id": 482909,
    "job_title": "Data & Analytics Analyst - Virtual, USA",
    "salary_year_avg": "69500.0",
    "company_name": "Diversified",
    "skills": "power bi"
  },
  {
    "job_id": 297571,
    "job_title": "Clinical Data Analyst I (REMOTE-USA)",
    "salary_year_avg": "69000.0",
    "company_name": "Ambry Genetics Corporation",
    "skills": "mysql"
  },
  {
    "job_id": 297571,
    "job_title": "Clinical Data Analyst I (REMOTE-USA)",
    "salary_year_avg": "69000.0",
    "company_name": "Ambry Genetics Corporation",
    "skills": "aws"
  },
  {
    "job_id": 297571,
    "job_title": "Clinical Data Analyst I (REMOTE-USA)",
    "salary_year_avg": "69000.0",
    "company_name": "Ambry Genetics Corporation",
    "skills": "excel"
  },
  {
    "job_id": 297571,
    "job_title": "Clinical Data Analyst I (REMOTE-USA)",
    "salary_year_avg": "69000.0",
    "company_name": "Ambry Genetics Corporation",
    "skills": "tableau"
  },
  {
    "job_id": 1400357,
    "job_title": "Data Analyst",
    "salary_year_avg": "67500.0",
    "company_name": "AllianceChicago",
    "skills": "sql"
  },
  {
    "job_id": 1400357,
    "job_title": "Data Analyst",
    "salary_year_avg": "67500.0",
    "company_name": "AllianceChicago",
    "skills": "python"
  },
  {
    "job_id": 1400357,
    "job_title": "Data Analyst",
    "salary_year_avg": "67500.0",
    "company_name": "AllianceChicago",
    "skills": "c#"
  },
  {
    "job_id": 1400357,
    "job_title": "Data Analyst",
    "salary_year_avg": "67500.0",
    "company_name": "AllianceChicago",
    "skills": "sass"
  },
  {
    "job_id": 1400357,
    "job_title": "Data Analyst",
    "salary_year_avg": "67500.0",
    "company_name": "AllianceChicago",
    "skills": "sql server"
  },
  {
    "job_id": 1400357,
    "job_title": "Data Analyst",
    "salary_year_avg": "67500.0",
    "company_name": "AllianceChicago",
    "skills": "azure"
  },
  {
    "job_id": 1400357,
    "job_title": "Data Analyst",
    "salary_year_avg": "67500.0",
    "company_name": "AllianceChicago",
    "skills": "power bi"
  },
  {
    "job_id": 1400357,
    "job_title": "Data Analyst",
    "salary_year_avg": "67500.0",
    "company_name": "AllianceChicago",
    "skills": "ssis"
  },
  {
    "job_id": 1400357,
    "job_title": "Data Analyst",
    "salary_year_avg": "67500.0",
    "company_name": "AllianceChicago",
    "skills": "ssrs"
  },
  {
    "job_id": 1400357,
    "job_title": "Data Analyst",
    "salary_year_avg": "67500.0",
    "company_name": "AllianceChicago",
    "skills": "flow"
  },
  {
    "job_id": 1400357,
    "job_title": "Data Analyst",
    "salary_year_avg": "67500.0",
    "company_name": "AllianceChicago",
    "skills": "terminal"
  },
  {
    "job_id": 243487,
    "job_title": "Survey Data Analyst",
    "salary_year_avg": "67500.0",
    "company_name": "CyberCoders",
    "skills": "r"
  },
  {
    "job_id": 243487,
    "job_title": "Survey Data Analyst",
    "salary_year_avg": "67500.0",
    "company_name": "CyberCoders",
    "skills": "excel"
  },
  {
    "job_id": 243487,
    "job_title": "Survey Data Analyst",
    "salary_year_avg": "67500.0",
    "company_name": "CyberCoders",
    "skills": "tableau"
  },
  {
    "job_id": 618426,
    "job_title": "Research/Data Analyst",
    "salary_year_avg": "67500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "ms access"
  },
  {
    "job_id": 605922,
    "job_title": "Data Analyst for Democratic Attorneys General and AG Candidates",
    "salary_year_avg": "67500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 605922,
    "job_title": "Data Analyst for Democratic Attorneys General and AG Candidates",
    "salary_year_avg": "67500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 605922,
    "job_title": "Data Analyst for Democratic Attorneys General and AG Candidates",
    "salary_year_avg": "67500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 605922,
    "job_title": "Data Analyst for Democratic Attorneys General and AG Candidates",
    "salary_year_avg": "67500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 60732,
    "job_title": "Data Analyst (SQL) :Role 3354",
    "salary_year_avg": "67500.0",
    "company_name": "iTalent Digital",
    "skills": "sql"
  },
  {
    "job_id": 60732,
    "job_title": "Data Analyst (SQL) :Role 3354",
    "salary_year_avg": "67500.0",
    "company_name": "iTalent Digital",
    "skills": "python"
  },
  {
    "job_id": 60732,
    "job_title": "Data Analyst (SQL) :Role 3354",
    "salary_year_avg": "67500.0",
    "company_name": "iTalent Digital",
    "skills": "express"
  },
  {
    "job_id": 60732,
    "job_title": "Data Analyst (SQL) :Role 3354",
    "salary_year_avg": "67500.0",
    "company_name": "iTalent Digital",
    "skills": "excel"
  },
  {
    "job_id": 60732,
    "job_title": "Data Analyst (SQL) :Role 3354",
    "salary_year_avg": "67500.0",
    "company_name": "iTalent Digital",
    "skills": "tableau"
  },
  {
    "job_id": 38696,
    "job_title": "Data Analyst",
    "salary_year_avg": "67500.0",
    "company_name": "Insight Global",
    "skills": "colocation"
  },
  {
    "job_id": 1010619,
    "job_title": "Community Data Analyst",
    "salary_year_avg": "66500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1010619,
    "job_title": "Community Data Analyst",
    "salary_year_avg": "66500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 1010619,
    "job_title": "Community Data Analyst",
    "salary_year_avg": "66500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "spss"
  },
  {
    "job_id": 1010619,
    "job_title": "Community Data Analyst",
    "salary_year_avg": "66500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "planner"
  },
  {
    "job_id": 871527,
    "job_title": "Analyst, Master Data Management",
    "salary_year_avg": "65062.3984375",
    "company_name": "Ascension",
    "skills": "excel"
  },
  {
    "job_id": 871527,
    "job_title": "Analyst, Master Data Management",
    "salary_year_avg": "65062.3984375",
    "company_name": "Ascension",
    "skills": "sheets"
  },
  {
    "job_id": 450752,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Mothership Strategies, LLC",
    "skills": "sql"
  },
  {
    "job_id": 450752,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Mothership Strategies, LLC",
    "skills": "python"
  },
  {
    "job_id": 450752,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Mothership Strategies, LLC",
    "skills": "r"
  },
  {
    "job_id": 450752,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Mothership Strategies, LLC",
    "skills": "spark"
  },
  {
    "job_id": 384112,
    "job_title": "Data BI Analyst (Entry Level) - US/Canada",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "sql"
  },
  {
    "job_id": 384112,
    "job_title": "Data BI Analyst (Entry Level) - US/Canada",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "nosql"
  },
  {
    "job_id": 384112,
    "job_title": "Data BI Analyst (Entry Level) - US/Canada",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "vba"
  },
  {
    "job_id": 384112,
    "job_title": "Data BI Analyst (Entry Level) - US/Canada",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "oracle"
  },
  {
    "job_id": 384112,
    "job_title": "Data BI Analyst (Entry Level) - US/Canada",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "hadoop"
  },
  {
    "job_id": 384112,
    "job_title": "Data BI Analyst (Entry Level) - US/Canada",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "excel"
  },
  {
    "job_id": 384112,
    "job_title": "Data BI Analyst (Entry Level) - US/Canada",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "tableau"
  },
  {
    "job_id": 1334734,
    "job_title": "Data Analyst (Entry Level)",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "sql"
  },
  {
    "job_id": 1334734,
    "job_title": "Data Analyst (Entry Level)",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "excel"
  },
  {
    "job_id": 1334734,
    "job_title": "Data Analyst (Entry Level)",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "sheets"
  },
  {
    "job_id": 1812494,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Bright Power",
    "skills": "sql"
  },
  {
    "job_id": 1812494,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Bright Power",
    "skills": "python"
  },
  {
    "job_id": 1812494,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Bright Power",
    "skills": "mysql"
  },
  {
    "job_id": 1812494,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Bright Power",
    "skills": "excel"
  },
  {
    "job_id": 1812494,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Bright Power",
    "skills": "tableau"
  },
  {
    "job_id": 1812494,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Bright Power",
    "skills": "flow"
  },
  {
    "job_id": 1812494,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Bright Power",
    "skills": "jira"
  },
  {
    "job_id": 1403912,
    "job_title": "Data BI Analyst (Entry Level) - US/Canada",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "sql"
  },
  {
    "job_id": 1403912,
    "job_title": "Data BI Analyst (Entry Level) - US/Canada",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "nosql"
  },
  {
    "job_id": 1403912,
    "job_title": "Data BI Analyst (Entry Level) - US/Canada",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "vba"
  },
  {
    "job_id": 1403912,
    "job_title": "Data BI Analyst (Entry Level) - US/Canada",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "oracle"
  },
  {
    "job_id": 1403912,
    "job_title": "Data BI Analyst (Entry Level) - US/Canada",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "hadoop"
  },
  {
    "job_id": 1403912,
    "job_title": "Data BI Analyst (Entry Level) - US/Canada",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "excel"
  },
  {
    "job_id": 1403912,
    "job_title": "Data BI Analyst (Entry Level) - US/Canada",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "tableau"
  },
  {
    "job_id": 1785615,
    "job_title": "Data Analyst (Entry Level) - US/Canada",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "sql"
  },
  {
    "job_id": 1785615,
    "job_title": "Data Analyst (Entry Level) - US/Canada",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "excel"
  },
  {
    "job_id": 1785615,
    "job_title": "Data Analyst (Entry Level) - US/Canada",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "sheets"
  },
  {
    "job_id": 1463732,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Insight Global",
    "skills": "excel"
  },
  {
    "job_id": 466817,
    "job_title": "Jr. Marketing Data Analyst- Ecommerce",
    "salary_year_avg": "65000.0",
    "company_name": "Aquent Studios",
    "skills": "sql"
  },
  {
    "job_id": 466817,
    "job_title": "Jr. Marketing Data Analyst- Ecommerce",
    "salary_year_avg": "65000.0",
    "company_name": "Aquent Studios",
    "skills": "excel"
  },
  {
    "job_id": 466817,
    "job_title": "Jr. Marketing Data Analyst- Ecommerce",
    "salary_year_avg": "65000.0",
    "company_name": "Aquent Studios",
    "skills": "tableau"
  },
  {
    "job_id": 1441940,
    "job_title": "Junior Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1441940,
    "job_title": "Junior Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "visual basic"
  },
  {
    "job_id": 1441940,
    "job_title": "Junior Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "vba"
  },
  {
    "job_id": 1441940,
    "job_title": "Junior Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 1441940,
    "job_title": "Junior Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 1441940,
    "job_title": "Junior Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "power bi"
  },
  {
    "job_id": 1441940,
    "job_title": "Junior Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "word"
  },
  {
    "job_id": 1441940,
    "job_title": "Junior Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "powerpoint"
  },
  {
    "job_id": 1441940,
    "job_title": "Junior Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "ms access"
  },
  {
    "job_id": 549336,
    "job_title": "HR Reporting & Analytics Manager",
    "salary_year_avg": "65000.0",
    "company_name": "Get It Recruit - Administrative",
    "skills": "flow"
  },
  {
    "job_id": 1596146,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Insight Global",
    "skills": "sql"
  },
  {
    "job_id": 1596146,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Insight Global",
    "skills": "oracle"
  },
  {
    "job_id": 1596146,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Insight Global",
    "skills": "excel"
  },
  {
    "job_id": 1596146,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Insight Global",
    "skills": "tableau"
  },
  {
    "job_id": 1596146,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Insight Global",
    "skills": "power bi"
  },
  {
    "job_id": 1596146,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Insight Global",
    "skills": "alteryx"
  },
  {
    "job_id": 946898,
    "job_title": "Data BI Analyst (Entry Level) - US",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "sql"
  },
  {
    "job_id": 946898,
    "job_title": "Data BI Analyst (Entry Level) - US",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "nosql"
  },
  {
    "job_id": 946898,
    "job_title": "Data BI Analyst (Entry Level) - US",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "vba"
  },
  {
    "job_id": 946898,
    "job_title": "Data BI Analyst (Entry Level) - US",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "oracle"
  },
  {
    "job_id": 946898,
    "job_title": "Data BI Analyst (Entry Level) - US",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "hadoop"
  },
  {
    "job_id": 946898,
    "job_title": "Data BI Analyst (Entry Level) - US",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "excel"
  },
  {
    "job_id": 946898,
    "job_title": "Data BI Analyst (Entry Level) - US",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "tableau"
  },
  {
    "job_id": 262937,
    "job_title": "SQL Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Citron IT, Inc.",
    "skills": "sql"
  },
  {
    "job_id": 262937,
    "job_title": "SQL Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Citron IT, Inc.",
    "skills": "python"
  },
  {
    "job_id": 262937,
    "job_title": "SQL Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Citron IT, Inc.",
    "skills": "r"
  },
  {
    "job_id": 262937,
    "job_title": "SQL Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Citron IT, Inc.",
    "skills": "azure"
  },
  {
    "job_id": 262937,
    "job_title": "SQL Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Citron IT, Inc.",
    "skills": "tableau"
  },
  {
    "job_id": 262937,
    "job_title": "SQL Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Citron IT, Inc.",
    "skills": "power bi"
  },
  {
    "job_id": 1705282,
    "job_title": "Electronic Data Interchange Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Insight Global",
    "skills": "excel"
  },
  {
    "job_id": 179983,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "24 Seven Talent",
    "skills": "sql"
  },
  {
    "job_id": 179983,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "24 Seven Talent",
    "skills": "python"
  },
  {
    "job_id": 179983,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "24 Seven Talent",
    "skills": "r"
  },
  {
    "job_id": 179983,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "24 Seven Talent",
    "skills": "bigquery"
  },
  {
    "job_id": 179983,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "24 Seven Talent",
    "skills": "airflow"
  },
  {
    "job_id": 179983,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "24 Seven Talent",
    "skills": "excel"
  },
  {
    "job_id": 179983,
    "job_title": "Data Analyst",
    "salary_year_avg": "65000.0",
    "company_name": "24 Seven Talent",
    "skills": "git"
  },
  {
    "job_id": 604011,
    "job_title": "Data BI Analyst (Entry Level)",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "sql"
  },
  {
    "job_id": 604011,
    "job_title": "Data BI Analyst (Entry Level)",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "nosql"
  },
  {
    "job_id": 604011,
    "job_title": "Data BI Analyst (Entry Level)",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "vba"
  },
  {
    "job_id": 604011,
    "job_title": "Data BI Analyst (Entry Level)",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "oracle"
  },
  {
    "job_id": 604011,
    "job_title": "Data BI Analyst (Entry Level)",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "hadoop"
  },
  {
    "job_id": 604011,
    "job_title": "Data BI Analyst (Entry Level)",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "excel"
  },
  {
    "job_id": 604011,
    "job_title": "Data BI Analyst (Entry Level)",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "tableau"
  },
  {
    "job_id": 394469,
    "job_title": "Data Analyst (Entry Level) - US/Canada",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "sql"
  },
  {
    "job_id": 394469,
    "job_title": "Data Analyst (Entry Level) - US/Canada",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "excel"
  },
  {
    "job_id": 394469,
    "job_title": "Data Analyst (Entry Level) - US/Canada",
    "salary_year_avg": "65000.0",
    "company_name": "Patterned Learning AI",
    "skills": "sheets"
  },
  {
    "job_id": 1566988,
    "job_title": "Data Analyst - Bargersville, IN",
    "salary_year_avg": "63000.0",
    "company_name": "VetJobs & Military Spouse Jobs",
    "skills": "sql"
  },
  {
    "job_id": 1566988,
    "job_title": "Data Analyst - Bargersville, IN",
    "salary_year_avg": "63000.0",
    "company_name": "VetJobs & Military Spouse Jobs",
    "skills": "excel"
  },
  {
    "job_id": 1301761,
    "job_title": "Business Data Analyst",
    "salary_year_avg": "62500.0",
    "company_name": "Kaye/Bassman International",
    "skills": "sql"
  },
  {
    "job_id": 1301761,
    "job_title": "Business Data Analyst",
    "salary_year_avg": "62500.0",
    "company_name": "Kaye/Bassman International",
    "skills": "excel"
  },
  {
    "job_id": 1301761,
    "job_title": "Business Data Analyst",
    "salary_year_avg": "62500.0",
    "company_name": "Kaye/Bassman International",
    "skills": "sheets"
  },
  {
    "job_id": 1301761,
    "job_title": "Business Data Analyst",
    "salary_year_avg": "62500.0",
    "company_name": "Kaye/Bassman International",
    "skills": "github"
  },
  {
    "job_id": 1301761,
    "job_title": "Business Data Analyst",
    "salary_year_avg": "62500.0",
    "company_name": "Kaye/Bassman International",
    "skills": "smartsheet"
  },
  {
    "job_id": 1513216,
    "job_title": "HR Report Writer and Data Analyst- REMOTE",
    "salary_year_avg": "62500.0",
    "company_name": "Ryder System",
    "skills": "excel"
  },
  {
    "job_id": 1513216,
    "job_title": "HR Report Writer and Data Analyst- REMOTE",
    "salary_year_avg": "62500.0",
    "company_name": "Ryder System",
    "skills": "tableau"
  },
  {
    "job_id": 1513216,
    "job_title": "HR Report Writer and Data Analyst- REMOTE",
    "salary_year_avg": "62500.0",
    "company_name": "Ryder System",
    "skills": "word"
  },
  {
    "job_id": 1513216,
    "job_title": "HR Report Writer and Data Analyst- REMOTE",
    "salary_year_avg": "62500.0",
    "company_name": "Ryder System",
    "skills": "sharepoint"
  },
  {
    "job_id": 329855,
    "job_title": "Internal Audit Data Analyst",
    "salary_year_avg": "62500.0",
    "company_name": "Aegon",
    "skills": "sql"
  },
  {
    "job_id": 329855,
    "job_title": "Internal Audit Data Analyst",
    "salary_year_avg": "62500.0",
    "company_name": "Aegon",
    "skills": "python"
  },
  {
    "job_id": 329855,
    "job_title": "Internal Audit Data Analyst",
    "salary_year_avg": "62500.0",
    "company_name": "Aegon",
    "skills": "excel"
  },
  {
    "job_id": 329855,
    "job_title": "Internal Audit Data Analyst",
    "salary_year_avg": "62500.0",
    "company_name": "Aegon",
    "skills": "tableau"
  },
  {
    "job_id": 329855,
    "job_title": "Internal Audit Data Analyst",
    "salary_year_avg": "62500.0",
    "company_name": "Aegon",
    "skills": "power bi"
  },
  {
    "job_id": 215071,
    "job_title": "Data Analyst",
    "salary_year_avg": "62500.0",
    "company_name": "OZ",
    "skills": "sql"
  },
  {
    "job_id": 215071,
    "job_title": "Data Analyst",
    "salary_year_avg": "62500.0",
    "company_name": "OZ",
    "skills": "python"
  },
  {
    "job_id": 215071,
    "job_title": "Data Analyst",
    "salary_year_avg": "62500.0",
    "company_name": "OZ",
    "skills": "bash"
  },
  {
    "job_id": 215071,
    "job_title": "Data Analyst",
    "salary_year_avg": "62500.0",
    "company_name": "OZ",
    "skills": "aws"
  },
  {
    "job_id": 215071,
    "job_title": "Data Analyst",
    "salary_year_avg": "62500.0",
    "company_name": "OZ",
    "skills": "redshift"
  },
  {
    "job_id": 215071,
    "job_title": "Data Analyst",
    "salary_year_avg": "62500.0",
    "company_name": "OZ",
    "skills": "spark"
  },
  {
    "job_id": 376277,
    "job_title": "Operations Reporting and Data Analyst - Boston, MA",
    "salary_year_avg": "62500.0",
    "company_name": "Crescentia GTS",
    "skills": "sql"
  },
  {
    "job_id": 376277,
    "job_title": "Operations Reporting and Data Analyst - Boston, MA",
    "salary_year_avg": "62500.0",
    "company_name": "Crescentia GTS",
    "skills": "sas"
  },
  {
    "job_id": 376277,
    "job_title": "Operations Reporting and Data Analyst - Boston, MA",
    "salary_year_avg": "62500.0",
    "company_name": "Crescentia GTS",
    "skills": "windows"
  },
  {
    "job_id": 376277,
    "job_title": "Operations Reporting and Data Analyst - Boston, MA",
    "salary_year_avg": "62500.0",
    "company_name": "Crescentia GTS",
    "skills": "excel"
  },
  {
    "job_id": 376277,
    "job_title": "Operations Reporting and Data Analyst - Boston, MA",
    "salary_year_avg": "62500.0",
    "company_name": "Crescentia GTS",
    "skills": "sas"
  },
  {
    "job_id": 43776,
    "job_title": "Data Analyst",
    "salary_year_avg": "62500.0",
    "company_name": "Kaye/Bassman International",
    "skills": "sql"
  },
  {
    "job_id": 43776,
    "job_title": "Data Analyst",
    "salary_year_avg": "62500.0",
    "company_name": "Kaye/Bassman International",
    "skills": "excel"
  },
  {
    "job_id": 43776,
    "job_title": "Data Analyst",
    "salary_year_avg": "62500.0",
    "company_name": "Kaye/Bassman International",
    "skills": "sheets"
  },
  {
    "job_id": 43776,
    "job_title": "Data Analyst",
    "salary_year_avg": "62500.0",
    "company_name": "Kaye/Bassman International",
    "skills": "github"
  },
  {
    "job_id": 43776,
    "job_title": "Data Analyst",
    "salary_year_avg": "62500.0",
    "company_name": "Kaye/Bassman International",
    "skills": "smartsheet"
  },
  {
    "job_id": 1650439,
    "job_title": "Technology and Data Analyst",
    "salary_year_avg": "62500.0",
    "company_name": "McAllister & Quinn, LLC",
    "skills": "excel"
  },
  {
    "job_id": 553921,
    "job_title": "Supply Chain Data Integrity Analyst",
    "salary_year_avg": "62500.0",
    "company_name": "Get It Recruit - Transportation",
    "skills": "excel"
  },
  {
    "job_id": 634102,
    "job_title": "Data Processing and Reporting Analyst",
    "salary_year_avg": "62000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 272662,
    "job_title": "Business Intelligence Engineer",
    "salary_year_avg": "62000.0",
    "company_name": "Neurons Lab",
    "skills": "sql"
  },
  {
    "job_id": 272662,
    "job_title": "Business Intelligence Engineer",
    "salary_year_avg": "62000.0",
    "company_name": "Neurons Lab",
    "skills": "aws"
  },
  {
    "job_id": 272662,
    "job_title": "Business Intelligence Engineer",
    "salary_year_avg": "62000.0",
    "company_name": "Neurons Lab",
    "skills": "redshift"
  },
  {
    "job_id": 272662,
    "job_title": "Business Intelligence Engineer",
    "salary_year_avg": "62000.0",
    "company_name": "Neurons Lab",
    "skills": "tableau"
  },
  {
    "job_id": 272662,
    "job_title": "Business Intelligence Engineer",
    "salary_year_avg": "62000.0",
    "company_name": "Neurons Lab",
    "skills": "power bi"
  },
  {
    "job_id": 286007,
    "job_title": "Data Analyst",
    "salary_year_avg": "60000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sheets"
  },
  {
    "job_id": 616124,
    "job_title": "Junior Data Analyst",
    "salary_year_avg": "60000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "sql"
  },
  {
    "job_id": 616124,
    "job_title": "Junior Data Analyst",
    "salary_year_avg": "60000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "excel"
  },
  {
    "job_id": 616124,
    "job_title": "Junior Data Analyst",
    "salary_year_avg": "60000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "tableau"
  },
  {
    "job_id": 616124,
    "job_title": "Junior Data Analyst",
    "salary_year_avg": "60000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "power bi"
  },
  {
    "job_id": 1138427,
    "job_title": "Data Science Analyst I",
    "salary_year_avg": "60000.0",
    "company_name": "Aflac, Incorporated",
    "skills": "sql"
  },
  {
    "job_id": 1138427,
    "job_title": "Data Science Analyst I",
    "salary_year_avg": "60000.0",
    "company_name": "Aflac, Incorporated",
    "skills": "python"
  },
  {
    "job_id": 1138427,
    "job_title": "Data Science Analyst I",
    "salary_year_avg": "60000.0",
    "company_name": "Aflac, Incorporated",
    "skills": "r"
  },
  {
    "job_id": 1138427,
    "job_title": "Data Science Analyst I",
    "salary_year_avg": "60000.0",
    "company_name": "Aflac, Incorporated",
    "skills": "excel"
  },
  {
    "job_id": 1138427,
    "job_title": "Data Science Analyst I",
    "salary_year_avg": "60000.0",
    "company_name": "Aflac, Incorporated",
    "skills": "word"
  },
  {
    "job_id": 1138427,
    "job_title": "Data Science Analyst I",
    "salary_year_avg": "60000.0",
    "company_name": "Aflac, Incorporated",
    "skills": "powerpoint"
  },
  {
    "job_id": 163009,
    "job_title": "Social Media Data Analyst",
    "salary_year_avg": "60000.0",
    "company_name": "Get It Recruit - Marketing",
    "skills": "sheets"
  },
  {
    "job_id": 697068,
    "job_title": "Remote Data Analyst",
    "salary_year_avg": "60000.0",
    "company_name": "Kaye/Bassman International, Corp.",
    "skills": "sql"
  },
  {
    "job_id": 697068,
    "job_title": "Remote Data Analyst",
    "salary_year_avg": "60000.0",
    "company_name": "Kaye/Bassman International, Corp.",
    "skills": "excel"
  },
  {
    "job_id": 697068,
    "job_title": "Remote Data Analyst",
    "salary_year_avg": "60000.0",
    "company_name": "Kaye/Bassman International, Corp.",
    "skills": "sheets"
  },
  {
    "job_id": 697068,
    "job_title": "Remote Data Analyst",
    "salary_year_avg": "60000.0",
    "company_name": "Kaye/Bassman International, Corp.",
    "skills": "smartsheet"
  },
  {
    "job_id": 1424729,
    "job_title": "Atmospheric Scientist/Data Analyst",
    "salary_year_avg": "60000.0",
    "company_name": "BLUE STORM ASSOCIATES INC",
    "skills": "python"
  },
  {
    "job_id": 1424729,
    "job_title": "Atmospheric Scientist/Data Analyst",
    "salary_year_avg": "60000.0",
    "company_name": "BLUE STORM ASSOCIATES INC",
    "skills": "matlab"
  },
  {
    "job_id": 758435,
    "job_title": "HR Data Analyst",
    "salary_year_avg": "60000.0",
    "company_name": "SHI International Corp.",
    "skills": "visual basic"
  },
  {
    "job_id": 758435,
    "job_title": "HR Data Analyst",
    "salary_year_avg": "60000.0",
    "company_name": "SHI International Corp.",
    "skills": "vba"
  },
  {
    "job_id": 758435,
    "job_title": "HR Data Analyst",
    "salary_year_avg": "60000.0",
    "company_name": "SHI International Corp.",
    "skills": "excel"
  },
  {
    "job_id": 758435,
    "job_title": "HR Data Analyst",
    "salary_year_avg": "60000.0",
    "company_name": "SHI International Corp.",
    "skills": "power bi"
  },
  {
    "job_id": 758435,
    "job_title": "HR Data Analyst",
    "salary_year_avg": "60000.0",
    "company_name": "SHI International Corp.",
    "skills": "sharepoint"
  },
  {
    "job_id": 1431520,
    "job_title": "Entry Level Data Analyst",
    "salary_year_avg": "60000.0",
    "company_name": "Jumpvine",
    "skills": "go"
  },
  {
    "job_id": 212308,
    "job_title": "Data Analyst",
    "salary_year_avg": "60000.0",
    "company_name": "El Buen Samaritano",
    "skills": "sql"
  },
  {
    "job_id": 212308,
    "job_title": "Data Analyst",
    "salary_year_avg": "60000.0",
    "company_name": "El Buen Samaritano",
    "skills": "t-sql"
  },
  {
    "job_id": 212308,
    "job_title": "Data Analyst",
    "salary_year_avg": "60000.0",
    "company_name": "El Buen Samaritano",
    "skills": "mysql"
  },
  {
    "job_id": 212308,
    "job_title": "Data Analyst",
    "salary_year_avg": "60000.0",
    "company_name": "El Buen Samaritano",
    "skills": "excel"
  },
  {
    "job_id": 212308,
    "job_title": "Data Analyst",
    "salary_year_avg": "60000.0",
    "company_name": "El Buen Samaritano",
    "skills": "tableau"
  },
  {
    "job_id": 212308,
    "job_title": "Data Analyst",
    "salary_year_avg": "60000.0",
    "company_name": "El Buen Samaritano",
    "skills": "power bi"
  },
  {
    "job_id": 212308,
    "job_title": "Data Analyst",
    "salary_year_avg": "60000.0",
    "company_name": "El Buen Samaritano",
    "skills": "spss"
  },
  {
    "job_id": 179907,
    "job_title": "Data Analyst - Payroll Operations",
    "salary_year_avg": "60000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 719006,
    "job_title": "Data Analyst - Call Center",
    "salary_year_avg": "59500.0",
    "company_name": "Suncoast Credit Union",
    "skills": "sql"
  },
  {
    "job_id": 719006,
    "job_title": "Data Analyst - Call Center",
    "salary_year_avg": "59500.0",
    "company_name": "Suncoast Credit Union",
    "skills": "python"
  },
  {
    "job_id": 719006,
    "job_title": "Data Analyst - Call Center",
    "salary_year_avg": "59500.0",
    "company_name": "Suncoast Credit Union",
    "skills": "excel"
  },
  {
    "job_id": 1117967,
    "job_title": "HR Data Analyst- REMOTE",
    "salary_year_avg": "59000.0",
    "company_name": "Ryder System",
    "skills": "excel"
  },
  {
    "job_id": 1117967,
    "job_title": "HR Data Analyst- REMOTE",
    "salary_year_avg": "59000.0",
    "company_name": "Ryder System",
    "skills": "tableau"
  },
  {
    "job_id": 1117967,
    "job_title": "HR Data Analyst- REMOTE",
    "salary_year_avg": "59000.0",
    "company_name": "Ryder System",
    "skills": "word"
  },
  {
    "job_id": 1117967,
    "job_title": "HR Data Analyst- REMOTE",
    "salary_year_avg": "59000.0",
    "company_name": "Ryder System",
    "skills": "sharepoint"
  },
  {
    "job_id": 489565,
    "job_title": "HR Data Analyst- REMOTE",
    "salary_year_avg": "59000.0",
    "company_name": "Ryder System",
    "skills": "excel"
  },
  {
    "job_id": 489565,
    "job_title": "HR Data Analyst- REMOTE",
    "salary_year_avg": "59000.0",
    "company_name": "Ryder System",
    "skills": "tableau"
  },
  {
    "job_id": 489565,
    "job_title": "HR Data Analyst- REMOTE",
    "salary_year_avg": "59000.0",
    "company_name": "Ryder System",
    "skills": "word"
  },
  {
    "job_id": 489565,
    "job_title": "HR Data Analyst- REMOTE",
    "salary_year_avg": "59000.0",
    "company_name": "Ryder System",
    "skills": "sharepoint"
  },
  {
    "job_id": 1091264,
    "job_title": "Logistics Data Analyst (Remote Friendly)",
    "salary_year_avg": "58000.0",
    "company_name": "Webstaurant Store",
    "skills": "sql"
  },
  {
    "job_id": 1091264,
    "job_title": "Logistics Data Analyst (Remote Friendly)",
    "salary_year_avg": "58000.0",
    "company_name": "Webstaurant Store",
    "skills": "excel"
  },
  {
    "job_id": 346462,
    "job_title": "Remote Data Analyst II",
    "salary_year_avg": "57500.0",
    "company_name": "The Difference Card",
    "skills": "sql"
  },
  {
    "job_id": 346462,
    "job_title": "Remote Data Analyst II",
    "salary_year_avg": "57500.0",
    "company_name": "The Difference Card",
    "skills": "sql server"
  },
  {
    "job_id": 346462,
    "job_title": "Remote Data Analyst II",
    "salary_year_avg": "57500.0",
    "company_name": "The Difference Card",
    "skills": "excel"
  },
  {
    "job_id": 346462,
    "job_title": "Remote Data Analyst II",
    "salary_year_avg": "57500.0",
    "company_name": "The Difference Card",
    "skills": "power bi"
  },
  {
    "job_id": 346462,
    "job_title": "Remote Data Analyst II",
    "salary_year_avg": "57500.0",
    "company_name": "The Difference Card",
    "skills": "word"
  },
  {
    "job_id": 346462,
    "job_title": "Remote Data Analyst II",
    "salary_year_avg": "57500.0",
    "company_name": "The Difference Card",
    "skills": "powerpoint"
  },
  {
    "job_id": 346462,
    "job_title": "Remote Data Analyst II",
    "salary_year_avg": "57500.0",
    "company_name": "The Difference Card",
    "skills": "visio"
  },
  {
    "job_id": 1635949,
    "job_title": "Remote Data Analyst II",
    "salary_year_avg": "57500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1635949,
    "job_title": "Remote Data Analyst II",
    "salary_year_avg": "57500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql server"
  },
  {
    "job_id": 1635949,
    "job_title": "Remote Data Analyst II",
    "salary_year_avg": "57500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "power bi"
  },
  {
    "job_id": 1635949,
    "job_title": "Remote Data Analyst II",
    "salary_year_avg": "57500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "word"
  },
  {
    "job_id": 1635949,
    "job_title": "Remote Data Analyst II",
    "salary_year_avg": "57500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "powerpoint"
  },
  {
    "job_id": 1635949,
    "job_title": "Remote Data Analyst II",
    "salary_year_avg": "57500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "visio"
  },
  {
    "job_id": 441975,
    "job_title": "Data Analyst I",
    "salary_year_avg": "57500.0",
    "company_name": "FiberFirst",
    "skills": "sql"
  },
  {
    "job_id": 441975,
    "job_title": "Data Analyst I",
    "salary_year_avg": "57500.0",
    "company_name": "FiberFirst",
    "skills": "excel"
  },
  {
    "job_id": 441975,
    "job_title": "Data Analyst I",
    "salary_year_avg": "57500.0",
    "company_name": "FiberFirst",
    "skills": "word"
  },
  {
    "job_id": 441975,
    "job_title": "Data Analyst I",
    "salary_year_avg": "57500.0",
    "company_name": "FiberFirst",
    "skills": "powerpoint"
  },
  {
    "job_id": 441975,
    "job_title": "Data Analyst I",
    "salary_year_avg": "57500.0",
    "company_name": "FiberFirst",
    "skills": "outlook"
  },
  {
    "job_id": 441975,
    "job_title": "Data Analyst I",
    "salary_year_avg": "57500.0",
    "company_name": "FiberFirst",
    "skills": "visio"
  },
  {
    "job_id": 785489,
    "job_title": "Data Management Analyst- Remote",
    "salary_year_avg": "57500.0",
    "company_name": "Stafford Consulting Company, Inc.",
    "skills": "powerpoint"
  },
  {
    "job_id": 785489,
    "job_title": "Data Management Analyst- Remote",
    "salary_year_avg": "57500.0",
    "company_name": "Stafford Consulting Company, Inc.",
    "skills": "microsoft teams"
  },
  {
    "job_id": 739541,
    "job_title": "Healthcare Data SAS Analyst I",
    "salary_year_avg": "57300.0",
    "company_name": "Ascendo Resources",
    "skills": "sas"
  },
  {
    "job_id": 739541,
    "job_title": "Healthcare Data SAS Analyst I",
    "salary_year_avg": "57300.0",
    "company_name": "Ascendo Resources",
    "skills": "excel"
  },
  {
    "job_id": 739541,
    "job_title": "Healthcare Data SAS Analyst I",
    "salary_year_avg": "57300.0",
    "company_name": "Ascendo Resources",
    "skills": "sas"
  },
  {
    "job_id": 739541,
    "job_title": "Healthcare Data SAS Analyst I",
    "salary_year_avg": "57300.0",
    "company_name": "Ascendo Resources",
    "skills": "word"
  },
  {
    "job_id": 1598725,
    "job_title": "Lead Data Analyst/Data Architect",
    "salary_year_avg": "55500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "aws"
  },
  {
    "job_id": 1598725,
    "job_title": "Lead Data Analyst/Data Architect",
    "salary_year_avg": "55500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "snowflake"
  },
  {
    "job_id": 562116,
    "job_title": "Environmental Data Analyst",
    "salary_year_avg": "55000.0",
    "company_name": "JARBO Employment Group",
    "skills": "word"
  },
  {
    "job_id": 562116,
    "job_title": "Environmental Data Analyst",
    "salary_year_avg": "55000.0",
    "company_name": "JARBO Employment Group",
    "skills": "flow"
  },
  {
    "job_id": 837423,
    "job_title": "CCBHC Data Analyst (Grant Funded Position)",
    "salary_year_avg": "55000.0",
    "company_name": "State of Georgia",
    "skills": "sql"
  },
  {
    "job_id": 837423,
    "job_title": "CCBHC Data Analyst (Grant Funded Position)",
    "salary_year_avg": "55000.0",
    "company_name": "State of Georgia",
    "skills": "html"
  },
  {
    "job_id": 837423,
    "job_title": "CCBHC Data Analyst (Grant Funded Position)",
    "salary_year_avg": "55000.0",
    "company_name": "State of Georgia",
    "skills": "crystal"
  },
  {
    "job_id": 837423,
    "job_title": "CCBHC Data Analyst (Grant Funded Position)",
    "salary_year_avg": "55000.0",
    "company_name": "State of Georgia",
    "skills": "excel"
  },
  {
    "job_id": 486466,
    "job_title": "Data Analyst - US Healthcare (REMOTE)",
    "salary_year_avg": "54540.0",
    "company_name": "WALGREENS",
    "skills": "sql"
  },
  {
    "job_id": 486466,
    "job_title": "Data Analyst - US Healthcare (REMOTE)",
    "salary_year_avg": "54540.0",
    "company_name": "WALGREENS",
    "skills": "sas"
  },
  {
    "job_id": 486466,
    "job_title": "Data Analyst - US Healthcare (REMOTE)",
    "salary_year_avg": "54540.0",
    "company_name": "WALGREENS",
    "skills": "c++"
  },
  {
    "job_id": 486466,
    "job_title": "Data Analyst - US Healthcare (REMOTE)",
    "salary_year_avg": "54540.0",
    "company_name": "WALGREENS",
    "skills": "excel"
  },
  {
    "job_id": 486466,
    "job_title": "Data Analyst - US Healthcare (REMOTE)",
    "salary_year_avg": "54540.0",
    "company_name": "WALGREENS",
    "skills": "tableau"
  },
  {
    "job_id": 486466,
    "job_title": "Data Analyst - US Healthcare (REMOTE)",
    "salary_year_avg": "54540.0",
    "company_name": "WALGREENS",
    "skills": "sas"
  },
  {
    "job_id": 486466,
    "job_title": "Data Analyst - US Healthcare (REMOTE)",
    "salary_year_avg": "54540.0",
    "company_name": "WALGREENS",
    "skills": "word"
  },
  {
    "job_id": 486466,
    "job_title": "Data Analyst - US Healthcare (REMOTE)",
    "salary_year_avg": "54540.0",
    "company_name": "WALGREENS",
    "skills": "sharepoint"
  },
  {
    "job_id": 486466,
    "job_title": "Data Analyst - US Healthcare (REMOTE)",
    "salary_year_avg": "54540.0",
    "company_name": "WALGREENS",
    "skills": "powerpoint"
  },
  {
    "job_id": 486466,
    "job_title": "Data Analyst - US Healthcare (REMOTE)",
    "salary_year_avg": "54540.0",
    "company_name": "WALGREENS",
    "skills": "cognos"
  },
  {
    "job_id": 198826,
    "job_title": "Statistical Data Analyst (Buyer Engagement Strategist)",
    "salary_year_avg": "53000.0",
    "company_name": "University of South Florida",
    "skills": "excel"
  },
  {
    "job_id": 198826,
    "job_title": "Statistical Data Analyst (Buyer Engagement Strategist)",
    "salary_year_avg": "53000.0",
    "company_name": "University of South Florida",
    "skills": "word"
  },
  {
    "job_id": 198826,
    "job_title": "Statistical Data Analyst (Buyer Engagement Strategist)",
    "salary_year_avg": "53000.0",
    "company_name": "University of South Florida",
    "skills": "powerpoint"
  },
  {
    "job_id": 198826,
    "job_title": "Statistical Data Analyst (Buyer Engagement Strategist)",
    "salary_year_avg": "53000.0",
    "company_name": "University of South Florida",
    "skills": "outlook"
  },
  {
    "job_id": 862094,
    "job_title": "Data Analyst",
    "salary_year_avg": "52500.0",
    "company_name": "Kaye/Bassman International",
    "skills": "sql"
  },
  {
    "job_id": 862094,
    "job_title": "Data Analyst",
    "salary_year_avg": "52500.0",
    "company_name": "Kaye/Bassman International",
    "skills": "excel"
  },
  {
    "job_id": 862094,
    "job_title": "Data Analyst",
    "salary_year_avg": "52500.0",
    "company_name": "Kaye/Bassman International",
    "skills": "sheets"
  },
  {
    "job_id": 862094,
    "job_title": "Data Analyst",
    "salary_year_avg": "52500.0",
    "company_name": "Kaye/Bassman International",
    "skills": "smartsheet"
  },
  {
    "job_id": 1203514,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "52500.0",
    "company_name": "Acosta, Inc.",
    "skills": "windows"
  },
  {
    "job_id": 1203514,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "52500.0",
    "company_name": "Acosta, Inc.",
    "skills": "excel"
  },
  {
    "job_id": 1203514,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "52500.0",
    "company_name": "Acosta, Inc.",
    "skills": "power bi"
  },
  {
    "job_id": 1203514,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "52500.0",
    "company_name": "Acosta, Inc.",
    "skills": "word"
  },
  {
    "job_id": 1203514,
    "job_title": "Data Analyst (Remote)",
    "salary_year_avg": "52500.0",
    "company_name": "Acosta, Inc.",
    "skills": "powerpoint"
  },
  {
    "job_id": 902110,
    "job_title": "Junior Data Analyst",
    "salary_year_avg": "52500.0",
    "company_name": "Phoenix Capital Group Holdings LLC",
    "skills": "julia"
  },
  {
    "job_id": 902110,
    "job_title": "Junior Data Analyst",
    "salary_year_avg": "52500.0",
    "company_name": "Phoenix Capital Group Holdings LLC",
    "skills": "phoenix"
  },
  {
    "job_id": 902110,
    "job_title": "Junior Data Analyst",
    "salary_year_avg": "52500.0",
    "company_name": "Phoenix Capital Group Holdings LLC",
    "skills": "excel"
  },
  {
    "job_id": 667237,
    "job_title": "E-Commerce Digital Analyst",
    "salary_year_avg": "52500.0",
    "company_name": "Fitsoftware OU",
    "skills": "sql"
  },
  {
    "job_id": 667237,
    "job_title": "E-Commerce Digital Analyst",
    "salary_year_avg": "52500.0",
    "company_name": "Fitsoftware OU",
    "skills": "javascript"
  },
  {
    "job_id": 667237,
    "job_title": "E-Commerce Digital Analyst",
    "salary_year_avg": "52500.0",
    "company_name": "Fitsoftware OU",
    "skills": "html"
  },
  {
    "job_id": 667237,
    "job_title": "E-Commerce Digital Analyst",
    "salary_year_avg": "52500.0",
    "company_name": "Fitsoftware OU",
    "skills": "css"
  },
  {
    "job_id": 667237,
    "job_title": "E-Commerce Digital Analyst",
    "salary_year_avg": "52500.0",
    "company_name": "Fitsoftware OU",
    "skills": "excel"
  },
  {
    "job_id": 667237,
    "job_title": "E-Commerce Digital Analyst",
    "salary_year_avg": "52500.0",
    "company_name": "Fitsoftware OU",
    "skills": "qlik"
  },
  {
    "job_id": 74841,
    "job_title": "Data Quality Analyst",
    "salary_year_avg": "52500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 74841,
    "job_title": "Data Quality Analyst",
    "salary_year_avg": "52500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 74841,
    "job_title": "Data Quality Analyst",
    "salary_year_avg": "52500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "spreadsheet"
  },
  {
    "job_id": 1049427,
    "job_title": "Data Analyst",
    "salary_year_avg": "52000.0",
    "company_name": "Spark451 Inc.",
    "skills": "sql"
  },
  {
    "job_id": 1049427,
    "job_title": "Data Analyst",
    "salary_year_avg": "52000.0",
    "company_name": "Spark451 Inc.",
    "skills": "mongodb"
  },
  {
    "job_id": 1049427,
    "job_title": "Data Analyst",
    "salary_year_avg": "52000.0",
    "company_name": "Spark451 Inc.",
    "skills": "mongodb"
  },
  {
    "job_id": 1049427,
    "job_title": "Data Analyst",
    "salary_year_avg": "52000.0",
    "company_name": "Spark451 Inc.",
    "skills": "tableau"
  },
  {
    "job_id": 1049427,
    "job_title": "Data Analyst",
    "salary_year_avg": "52000.0",
    "company_name": "Spark451 Inc.",
    "skills": "word"
  },
  {
    "job_id": 1049427,
    "job_title": "Data Analyst",
    "salary_year_avg": "52000.0",
    "company_name": "Spark451 Inc.",
    "skills": "powerpoint"
  },
  {
    "job_id": 642310,
    "job_title": "OPEN RANK: Qualitative Research Data Analyst or Senior Research...",
    "salary_year_avg": "51500.0",
    "company_name": "University of Maryland, Baltimore",
    "skills": "sas"
  },
  {
    "job_id": 642310,
    "job_title": "OPEN RANK: Qualitative Research Data Analyst or Senior Research...",
    "salary_year_avg": "51500.0",
    "company_name": "University of Maryland, Baltimore",
    "skills": "excel"
  },
  {
    "job_id": 642310,
    "job_title": "OPEN RANK: Qualitative Research Data Analyst or Senior Research...",
    "salary_year_avg": "51500.0",
    "company_name": "University of Maryland, Baltimore",
    "skills": "sas"
  },
  {
    "job_id": 642310,
    "job_title": "OPEN RANK: Qualitative Research Data Analyst or Senior Research...",
    "salary_year_avg": "51500.0",
    "company_name": "University of Maryland, Baltimore",
    "skills": "spss"
  },
  {
    "job_id": 1073885,
    "job_title": "Sr. Data Analyst",
    "salary_year_avg": "51059.0",
    "company_name": "Jacksonville",
    "skills": "python"
  },
  {
    "job_id": 1073885,
    "job_title": "Sr. Data Analyst",
    "salary_year_avg": "51059.0",
    "company_name": "Jacksonville",
    "skills": "java"
  },
  {
    "job_id": 1073885,
    "job_title": "Sr. Data Analyst",
    "salary_year_avg": "51059.0",
    "company_name": "Jacksonville",
    "skills": "mongodb"
  },
  {
    "job_id": 1073885,
    "job_title": "Sr. Data Analyst",
    "salary_year_avg": "51059.0",
    "company_name": "Jacksonville",
    "skills": "ruby"
  },
  {
    "job_id": 1073885,
    "job_title": "Sr. Data Analyst",
    "salary_year_avg": "51059.0",
    "company_name": "Jacksonville",
    "skills": "mongodb"
  },
  {
    "job_id": 1073885,
    "job_title": "Sr. Data Analyst",
    "salary_year_avg": "51059.0",
    "company_name": "Jacksonville",
    "skills": "ruby"
  },
  {
    "job_id": 1073885,
    "job_title": "Sr. Data Analyst",
    "salary_year_avg": "51059.0",
    "company_name": "Jacksonville",
    "skills": "ruby on rails"
  },
  {
    "job_id": 44448,
    "job_title": "Data Quality Analyst",
    "salary_year_avg": "51000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 44448,
    "job_title": "Data Quality Analyst",
    "salary_year_avg": "51000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 44448,
    "job_title": "Data Quality Analyst",
    "salary_year_avg": "51000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "ssis"
  },
  {
    "job_id": 1086455,
    "job_title": "Data Analysis & Reporting Specialist",
    "salary_year_avg": "50500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 1086455,
    "job_title": "Data Analysis & Reporting Specialist",
    "salary_year_avg": "50500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 1278164,
    "job_title": "Data Analyst",
    "salary_year_avg": "50000.0",
    "company_name": "Get It Recruit - Transportation",
    "skills": "python"
  },
  {
    "job_id": 1278164,
    "job_title": "Data Analyst",
    "salary_year_avg": "50000.0",
    "company_name": "Get It Recruit - Transportation",
    "skills": "r"
  },
  {
    "job_id": 1278164,
    "job_title": "Data Analyst",
    "salary_year_avg": "50000.0",
    "company_name": "Get It Recruit - Transportation",
    "skills": "excel"
  },
  {
    "job_id": 1278164,
    "job_title": "Data Analyst",
    "salary_year_avg": "50000.0",
    "company_name": "Get It Recruit - Transportation",
    "skills": "tableau"
  },
  {
    "job_id": 1278164,
    "job_title": "Data Analyst",
    "salary_year_avg": "50000.0",
    "company_name": "Get It Recruit - Transportation",
    "skills": "power bi"
  },
  {
    "job_id": 1672776,
    "job_title": "Data Entry Analyst",
    "salary_year_avg": "50000.0",
    "company_name": "Get It Recruit - Administrative",
    "skills": "excel"
  },
  {
    "job_id": 269335,
    "job_title": "Data Analyst I - Healthcare Analytics",
    "salary_year_avg": "50000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 269335,
    "job_title": "Data Analyst I - Healthcare Analytics",
    "salary_year_avg": "50000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 1605573,
    "job_title": "Clinical Data Analyst (Entry to Mid Level)",
    "salary_year_avg": "48500.0",
    "company_name": "Allied Technologies & Consulting",
    "skills": "excel"
  },
  {
    "job_id": 1262617,
    "job_title": "Financial Data Analyst",
    "salary_year_avg": "47500.0",
    "company_name": "Ali Awad Law, P.C.",
    "skills": "sql"
  },
  {
    "job_id": 1262617,
    "job_title": "Financial Data Analyst",
    "salary_year_avg": "47500.0",
    "company_name": "Ali Awad Law, P.C.",
    "skills": "excel"
  },
  {
    "job_id": 229128,
    "job_title": "Data Analyst / Engineer",
    "salary_year_avg": "47500.0",
    "company_name": "Men's Health Clinic (MHC)",
    "skills": "sql"
  },
  {
    "job_id": 229128,
    "job_title": "Data Analyst / Engineer",
    "salary_year_avg": "47500.0",
    "company_name": "Men's Health Clinic (MHC)",
    "skills": "python"
  },
  {
    "job_id": 229128,
    "job_title": "Data Analyst / Engineer",
    "salary_year_avg": "47500.0",
    "company_name": "Men's Health Clinic (MHC)",
    "skills": "r"
  },
  {
    "job_id": 229128,
    "job_title": "Data Analyst / Engineer",
    "salary_year_avg": "47500.0",
    "company_name": "Men's Health Clinic (MHC)",
    "skills": "c++"
  },
  {
    "job_id": 229128,
    "job_title": "Data Analyst / Engineer",
    "salary_year_avg": "47500.0",
    "company_name": "Men's Health Clinic (MHC)",
    "skills": "c"
  },
  {
    "job_id": 229128,
    "job_title": "Data Analyst / Engineer",
    "salary_year_avg": "47500.0",
    "company_name": "Men's Health Clinic (MHC)",
    "skills": "aws"
  },
  {
    "job_id": 229128,
    "job_title": "Data Analyst / Engineer",
    "salary_year_avg": "47500.0",
    "company_name": "Men's Health Clinic (MHC)",
    "skills": "excel"
  },
  {
    "job_id": 229128,
    "job_title": "Data Analyst / Engineer",
    "salary_year_avg": "47500.0",
    "company_name": "Men's Health Clinic (MHC)",
    "skills": "power bi"
  },
  {
    "job_id": 229128,
    "job_title": "Data Analyst / Engineer",
    "salary_year_avg": "47500.0",
    "company_name": "Men's Health Clinic (MHC)",
    "skills": "powerpoint"
  },
  {
    "job_id": 229128,
    "job_title": "Data Analyst / Engineer",
    "salary_year_avg": "47500.0",
    "company_name": "Men's Health Clinic (MHC)",
    "skills": "flow"
  },
  {
    "job_id": 1619146,
    "job_title": "Data Analyst",
    "salary_year_avg": "46500.0",
    "company_name": "Get It Recruit - Administrative",
    "skills": "sql"
  },
  {
    "job_id": 1619146,
    "job_title": "Data Analyst",
    "salary_year_avg": "46500.0",
    "company_name": "Get It Recruit - Administrative",
    "skills": "sas"
  },
  {
    "job_id": 1619146,
    "job_title": "Data Analyst",
    "salary_year_avg": "46500.0",
    "company_name": "Get It Recruit - Administrative",
    "skills": "oracle"
  },
  {
    "job_id": 1619146,
    "job_title": "Data Analyst",
    "salary_year_avg": "46500.0",
    "company_name": "Get It Recruit - Administrative",
    "skills": "excel"
  },
  {
    "job_id": 1619146,
    "job_title": "Data Analyst",
    "salary_year_avg": "46500.0",
    "company_name": "Get It Recruit - Administrative",
    "skills": "sas"
  },
  {
    "job_id": 1619146,
    "job_title": "Data Analyst",
    "salary_year_avg": "46500.0",
    "company_name": "Get It Recruit - Administrative",
    "skills": "sharepoint"
  },
  {
    "job_id": 473213,
    "job_title": "Data Analyst-Operations",
    "salary_year_avg": "42500.0",
    "company_name": "U.S. Wire and Cable Company/ Flexon Industries",
    "skills": "windows"
  },
  {
    "job_id": 473213,
    "job_title": "Data Analyst-Operations",
    "salary_year_avg": "42500.0",
    "company_name": "U.S. Wire and Cable Company/ Flexon Industries",
    "skills": "excel"
  },
  {
    "job_id": 473213,
    "job_title": "Data Analyst-Operations",
    "salary_year_avg": "42500.0",
    "company_name": "U.S. Wire and Cable Company/ Flexon Industries",
    "skills": "wire"
  },
  {
    "job_id": 512966,
    "job_title": "Ecommerce Business Analyst/Data Analyst with Good exp with SQL",
    "salary_year_avg": "41000.0",
    "company_name": "BayOne Solutions",
    "skills": "sql"
  },
  {
    "job_id": 512966,
    "job_title": "Ecommerce Business Analyst/Data Analyst with Good exp with SQL",
    "salary_year_avg": "41000.0",
    "company_name": "BayOne Solutions",
    "skills": "tableau"
  },
  {
    "job_id": 994565,
    "job_title": "Remote Data Analyst",
    "salary_year_avg": "39000.0",
    "company_name": "Get It Recruit - Administrative",
    "skills": "excel"
  },
  {
    "job_id": 1349849,
    "job_title": "Financial Data Analyst",
    "salary_year_avg": "36000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1349849,
    "job_title": "Financial Data Analyst",
    "salary_year_avg": "36000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 1178688,
    "job_title": "Data Analyst",
    "salary_year_avg": "35000.0",
    "company_name": "Jobmatchingpartner Ltd",
    "skills": "sql"
  },
  {
    "job_id": 1178688,
    "job_title": "Data Analyst",
    "salary_year_avg": "35000.0",
    "company_name": "Jobmatchingpartner Ltd",
    "skills": "python"
  },
  {
    "job_id": 1178688,
    "job_title": "Data Analyst",
    "salary_year_avg": "35000.0",
    "company_name": "Jobmatchingpartner Ltd",
    "skills": "r"
  },
  {
    "job_id": 1178688,
    "job_title": "Data Analyst",
    "salary_year_avg": "35000.0",
    "company_name": "Jobmatchingpartner Ltd",
    "skills": "spark"
  },
  {
    "job_id": 1178688,
    "job_title": "Data Analyst",
    "salary_year_avg": "35000.0",
    "company_name": "Jobmatchingpartner Ltd",
    "skills": "hadoop"
  },
  {
    "job_id": 1178688,
    "job_title": "Data Analyst",
    "salary_year_avg": "35000.0",
    "company_name": "Jobmatchingpartner Ltd",
    "skills": "looker"
  }
]
*/