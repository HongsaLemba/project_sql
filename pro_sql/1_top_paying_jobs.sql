/*
Question: What are the top-paying data analyst jobs?
- Identify the top 10 highest-paying Data Analyst roles that are available remotely 
- Focuses on jobs postings with specified salaries (remove null).
- Why? Highlight the top-paying opportunities for Data Analysts, offering insights into employee
*/

SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
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
LIMIT 10;

/*
An analysis of the top 10 highest-paying data analyst job postings in 2023 shows strong patterns regarding seniority, 
compensation tiers, and remote work flexibility. 

Key Insights:-

Seniority & Leadership Premium: 60% of the top postings are for advanced or leadership tiers 
(Director, Associate Director, and Principal Data Analyst),
 showing that compensation past the $185k mark heavily rewards strategic and architectural ownership.

Remote & Location Independence: Every role is listed with a location of "Anywhere", 
showing that the highest compensation packages are distributed across global remote and flexible hybrid setups 
rather than being strictly confined to physical office locations.

Top-End Outlier: The Mantys Data Analyst role ($650,000) is a significant outlier, 
exceeding the #2 position (Meta at $336,500) by nearly double.

Domain Specialization: Beyond general analytics, the highest earners are tied to specialized domains: 
Marketing Analytics (Pinterest), Autonomous Vehicles / Robotics (Motional), and Healthcare / Risk Management (UCLA Health / ERM).
*/