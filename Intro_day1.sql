-- (-- is used for the single line commenting where as /*-----*/ is used as the multi line commenting)

-- creating the database
create database SqlPractise;
-- activating the database
use SqlPractise;
-- creating database objects(tables)
/* syntax:
create table tablename( colname1 datatype1 constraints1,
						colname2 datatype2 constraints2,
                        colname3 datatype3 constraints3);
                        */

-- student --> id, name, age, gender location

create table Students(
student_id int ,
student_name varchar(50),
age int,
gender varchar(1),
location varchar(100)
);   

-- to see the table
select * from  Students; 

-- to insert data into the table 
insert into Students values (1,"Ramesh", 23, "M", "vishakapatnam" );     

insert into Students values (1,"Ramesh", 23, "M", "vishakapatnam" );  

select * from  Students;  -- if you execute the above two lines then we can see the duplicate values which is bad for data.
-- so we recreate the table using the constraint to avoid some duplicate data. first of all we drop the table and recreate with same structure
drop table Students;

-- recreating the table with constraints.
create table Students(
student_id int unique,
student_name varchar(50) not null,
age int,
gender varchar(1),
location varchar(100)
); 
		
insert into Students values (1,"Ramesh", 23, "M", "vishakapatnam" );
insert into Students values (1,"Ramesh", 23, "M", "vishakapatnam" ); -- if you re run this you can see the error called duplicate entry in the console.
insert into Students values (2, null, 23, "F", "srikakulam" );   -- you cant run this as well because we have used the not null constraint on the name column
insert into Students values (2,"srija", 23, "F", "sklm" );    

/*
===============================================================================
                        MYSQL CONSTRAINTS - QUICK REFERENCE
===============================================================================

1. PRIMARY KEY
   Usage: CONSTRAINT pk_name PRIMARY KEY (column)
   Meaning: Uniquely identifies each row. No NULLs, only one per table.

2. FOREIGN KEY
   Usage: CONSTRAINT fk_name FOREIGN KEY (column) REFERENCES parent(col)
   Meaning: Links tables. Ensures child value exists in parent table.

3. UNIQUE
   Usage: CONSTRAINT uq_name UNIQUE (column)
   Meaning: Ensures all values are distinct. Allows one NULL.

4. CHECK
   Usage: CONSTRAINT chk_name CHECK (condition)
   Meaning: Validates data against a condition (e.g., price > 0).

5. NOT NULL
   Usage: column_name datatype NOT NULL
   Meaning: Prevents NULL values. Column must have a value.

6. DEFAULT
   Usage: column_name datatype DEFAULT default_value
   Meaning: Sets a default value when no value is provided.

7. INDEX (not a constraint but useful)
   Usage: CREATE INDEX idx_name ON table (column)
   Meaning: Improves query performance. Does not enforce rules.

===============================================================================
                         ADD TO EXISTING TABLE
===============================================================================

ALTER TABLE table_name ADD CONSTRAINT name PRIMARY KEY (col);
ALTER TABLE table_name ADD CONSTRAINT name FOREIGN KEY (col) REFERENCES parent(col);
ALTER TABLE table_name ADD CONSTRAINT name UNIQUE (col);
ALTER TABLE table_name ADD CONSTRAINT name CHECK (condition);
ALTER TABLE table_name MODIFY col datatype NOT NULL;
ALTER TABLE table_name ALTER col SET DEFAULT value;

===============================================================================
                         DROP CONSTRAINTS
===============================================================================

ALTER TABLE table_name DROP PRIMARY KEY;
ALTER TABLE table_name DROP FOREIGN KEY name;
ALTER TABLE table_name DROP INDEX name;          -- For UNIQUE
ALTER TABLE table_name DROP CHECK name;          -- For CHECK
ALTER TABLE table_name MODIFY col datatype NULL; -- Remove NOT NULL
ALTER TABLE table_name ALTER col DROP DEFAULT;   -- Remove DEFAULT

===============================================================================
*/

SELECT * FROM Students;
