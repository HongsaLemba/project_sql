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
    job_posted_date
FROM
    job_postings_fact