use jobs;
/*
Tier 1: Basic (SELECT, WHERE, ORDER BY)
List all job titles and salaries where salary_usd > 100000.
Find all jobs with experience_level = 'Senior' and remote_type = 'Remote'.
List all distinct job titles in the ds_jobs table.
Find the top 10 highest paying jobs (just ds_jobs, no joins), sorted descending.
Find all jobs where joining_year is between 2021 and 2023.
*/
-- 1.List all job titles and salaries where salary_usd > 100000.

select * from ds_jobs;
select job_title,salary_usd from ds_jobs where salary_usd>100000;

-- 2.Find all jobs with experience_level = 'Senior' and remote_type = 'Remote'.

select * from ds_jobs where experience_level = "Senior" and remote_type = "Remote";
-- 3.List all distinct job titles in the ds_jobs table.
select distinct job_title from ds_jobs;
-- 4. Find the top 10 highest paying jobs (just ds_jobs, no joins), sorted descending.
select * from ds_jobs order by salary_usd desc limit 10;
-- 5.Find all jobs where joining_year is between 2021 and 2023.

select * from ds_jobs where joining_year between 2021 and 2023 order by joining_year asc;

/*
Tier 2: Aggregates + GROUP BY + HAVING
Find the average salary per experience_level.
Find the number of jobs per remote_type.
Find countries (by country_id) with more than 30 job postings.
Find the average years_experience per job_title.
Find experience_levels where the average salary exceeds 90000.*/
-- 1. Find the average salary per experience_level.
select experience_level, avg(salary_usd) as Avg_salary_per_exp_level 
from ds_jobs
group by experience_level;
select * from ds_jobs;
-- 2.Find the number of jobs per remote_type.
select remote_type, count(*) as no_of_jobs_Per_remoteType 
from ds_jobs group by remote_type;
-- 3. Find countries (by country_id) with more than 30 job postings.
select country_id, count(*) as count_of_job_postings 
from ds_jobs 
group by country_id 
having count_of_job_postings>30 ;
-- 4.Find the average years_experience per job_title.
select job_title, round(avg(years_experience),1) as avg_ys_exp 
from ds_jobs group by job_title;

-- 5. Find experience_levels where the average salary exceeds 90000.*/
select avg(salary_usd) from ds_jobs;
select experience_level, avg(salary_usd) as Avg_sal from ds_jobs group by experience_level having Avg_sal>90000;
/*

Tier 3: JOINs (2-table and 3-table)*/

/*
List job title, company name, and salary for all jobs at companies in the 'Tech' industry.*/


/*
List job title, country name, and salary for all 'Senior' jobs in 'Germany'.
Find the average salary per country_name (join ds_jobs + countries).
Find the number of job postings per industry (join ds_jobs + companies).
List all companies that have zero job postings. (hint: this needs a LEFT JOIN — new concept, I'll explain below)*/



/*

Tier 4: Subqueries
Find all jobs where salary_usd is above the overall average salary (needs a subquery in WHERE).
Find the company(s) with the highest average salary (subquery in HAVING or a nested query).
Find countries where the average salary is higher than the average salary in 'India'.
For each job, show how much more/less its salary is than the average salary of its own experience_level. (correlated subquery — trickier)

Tier 5: Window Functions (advanced)
Rank jobs within each country_name by salary_usd (highest = rank 1), using RANK().
Find the top 3 highest paying jobs per experience_level using ROW_NUMBER().
Calculate a running total of job postings ordered by joining_year.
For each job, show the difference between its salary and the average salary of its country — without using GROUP BY (window function version of Q19-style logic).

Tier 6: Real-world Analysis Style (interview-favorite phrasing)
Which industry pays the highest average salary for 'Senior' level roles specifically?
Which country has the best "value" — highest average salary but also more than 20 postings (avoid one-off outliers)?
Find the year-over-year change in average salary (using joining_year).
Identify the single highest-paid job per company (this is the classic "top-N-per-group" interview question).*/
