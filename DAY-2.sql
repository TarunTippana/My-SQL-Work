use sqlpractise;

-- creating another table
create table employees
(
emp_name varchar(50) not null,
emp_id int not null,
managaer_name varchar(50),
division int,
primary key(emp_id)
);

show tables;
desc employees;

/*
Create Table Exercise

You have just started a new company. It is time to hire some employees. 
You will need to create a table that will contain the following information about your new employees:

firstname
last name
title
age
salary

After you create the table, you should receive a small form on the screen with the appropriate column names. 
If you are missing any columns, you need to double check your SQL statement and recreate the table.
 Once it's created successfully, go to the "Insert" lesson.

IMPORTANT: When selecting a table name, 
it is important to select a unique name that no one else will use or guess. 
Your table names should have an underscore followed by your initials and the digits of your birthday and month.

For example, Tom Smith, who was born on November 2nd, would name his table myemployees_ts1102.
 Use this naming convention for all of the tables you create.
 Your tables will remain on a shared database until they are cleaned up if they aren't accessed in 4–5 days.
*/

create database company;
use company;

create table emp_hires(
firstname varchar(50),
lastname varchar(50),
title varchar(25),
age int check (age >= 19),
salary int 
);
desc emp_hires;

-- values insertion
INSERT INTO emp_hires (firstname, lastname, title, age, salary) VALUES
('John', 'Smith', 'Manager', 35, 75000),
('Emma', 'Johnson', 'Software Engineer', 28, 68000),
('Liam', 'Williams', 'Data Analyst', 26, 60000),
('Olivia', 'Brown', 'HR Executive', 31, 55000),
('Noah', 'Jones', 'Sales Executive', 29, 50000),
('Ava', 'Garcia', 'Marketing Manager', 34, 72000),
('William', 'Miller', 'Business Analyst', 30, 65000),
('Sophia', 'Davis', 'Accountant', 32, 58000),
('James', 'Rodriguez', 'Network Engineer', 27, 62000),
('Isabella', 'Martinez', 'UI Designer', 25, 54000),
('Benjamin', 'Hernandez', 'DevOps Engineer', 33, 76000),
('Mia', 'Lopez', 'Recruiter', 29, 49000),
('Lucas', 'Gonzalez', 'QA Engineer', 26, 52000),
('Charlotte', 'Wilson', 'Product Manager', 36, 85000),
('Henry', 'Anderson', 'System Administrator', 31, 61000),
('Amelia', 'Thomas', 'Content Writer', 24, 45000),
('Alexander', 'Taylor', 'Data Scientist', 29, 90000),
('Harper', 'Moore', 'Graphic Designer', 27, 51000),
('Daniel', 'Jackson', 'Support Engineer', 28, 48000),
('Evelyn', 'Martin', 'Operations Manager', 38, 82000),
('Matthew', 'Lee', 'Database Administrator', 34, 79000),
('Abigail', 'Perez', 'Financial Analyst', 30, 70000),
('Joseph', 'Thompson', 'Cybersecurity Analyst', 29, 87000),
('Emily', 'White', 'Office Administrator', 26, 46000),
('David', 'Harris', 'Project Manager', 40, 95000),
('Ella', 'Sanchez', 'Customer Support', 23, 40000),
('Michael', 'Clark', 'Machine Learning Engineer', 32, 98000),
('Scarlett', 'Ramirez', 'SEO Specialist', 27, 53000),
('Ethan', 'Lewis', 'Cloud Engineer', 31, 88000),
('Grace', 'Robinson', 'Legal Advisor', 37, 91000),
('Samuel', 'Walker', 'Procurement Officer', 33, 64000),
('Chloe', 'Young', 'Business Consultant', 35, 86000),
('Logan', 'Allen', 'Frontend Developer', 25, 61000),
('Victoria', 'King', 'Backend Developer', 28, 69000),
('Sebastian', 'Wright', 'Full Stack Developer', 30, 81000),
('Lily', 'Scott', 'Technical Writer', 29, 56000),
('Jack', 'Torres', 'Research Analyst', 27, 62000),
('Hannah', 'Nguyen', 'Training Coordinator', 34, 59000),
('Owen', 'Hill', 'IT Manager', 39, 92000),
('Zoe', 'Flores', 'Receptionist', 22, 38000),
('Aiden', 'Green', 'Security Officer', 36, 47000),
('Natalie', 'Adams', 'Supply Chain Manager', 35, 83000),
('Gabriel', 'Nelson', 'Mobile Developer', 28, 74000),
('Aria', 'Baker', 'AI Engineer', 30, 105000),
('Carter', 'Hall', 'Data Engineer', 31, 89000),
('Layla', 'Rivera', 'UX Researcher', 27, 66000),
('Julian', 'Campbell', 'Solutions Architect', 41, 115000),
('Nora', 'Mitchell', 'Executive Assistant', 29, 57000),
('Leo', 'Roberts', 'Technical Lead', 38, 110000),
('Aurora', 'Carter', 'Chief Accountant', 42, 99000);


select * from emp_hires;


-- alter table  add column;
alter table emp_hires 
add gender varchar(1);
select * from emp_hires;

-- alter table drop column;
alter table emp_hires
drop column gender;

alter table emp_hires
drop column emp_id;

select * from emp_hires;

-- creating and using different constraints and alters together.
alter table emp_hires
add column emp_id int auto_increment primary key first;

alter table emp_hires 
add column email varchar(100) unique after lastname;

select * from emp_hires;

SET SQL_SAFE_UPDATES = 0;

UPDATE emp_hires
SET emp_id = emp_id + 4999;


alter table emp_hires
auto_increment = 5050;

select * from emp_hires;

UPDATE emp_hires
SET email = CONCAT(
    LOWER(firstname),
    '.',
    LOWER(lastname),
    '@gmail.com'
);



