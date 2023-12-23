SET SQL_SAFE_UPDATES=0; -- disable safe update mode
SET SQL_SAFE_UPDATES=1; -- enable safe update mode

create database parijat;
use parijat;
create table parijat.room
(
r_id int,
r_fname varchar(10),
r_lname varchar(10),
r_contact numeric(10),
r_salary numeric(10),
r_dep varchar(10),
r_dob date
);

desc parijat.room; -- shows the structure of the table

insert into parijat.room(r_id, r_fname, r_lname, r_contact, r_salary, r_dep, r_dob) values (1, "Vishal", "Trivedi", 12345, 98753190, "IT", 19961222);
insert into parijat.room(r_id, r_fname, r_lname, r_contact, r_salary, r_dep, r_dob) values (2, "Sachin K", "Kumawat", 23456, 875430, "Accounts", 19950129);
insert into parijat.room(r_id, r_fname, r_lname, r_contact, r_salary, r_dep, r_dob) values (3, "Piyush", "Roongta", 34567, 43345, "Sales", 19961108);
insert into parijat.room(r_id, r_fname, r_lname, r_contact, r_salary, r_dep, r_dob) values (4, "Ramu", "Surekha", 456723, 5634, "IT", 19940711);
insert into parijat.room(r_id, r_fname, r_lname, r_contact, r_salary, r_dep, r_dob) values (5, "Sachin H", "Hissaria", 567834, 48768, "Finance", 19961129);
insert into parijat.room(r_id, r_fname, r_lname, r_contact, r_salary, r_dep, r_dob) values (6, "Ashok", "Bhaiji", 67845, 5877, "Sales", 19930506);
insert into parijat.room(r_id, r_fname, r_lname, r_contact, r_salary, r_dep, r_dob) values (7, "Bhargav", "Trivedi", 678, 58583, "Finance", 19981025);
insert into parijat.room(r_id, r_fname, r_lname, r_contact, r_salary, r_dep, r_dob) values (8, "Vinod", "karma", 124765, 5776, "IT", 19950512);
insert into parijat.room(r_id, r_fname, r_lname, r_contact, r_salary, r_dep, r_dob) values (9, "Charul", "Alsi", 1796567, 96596, "Finance", 19950126);
insert into parijat.room(r_id, r_fname, r_lname, r_contact, r_salary, r_dep, r_dob) values (10, "Jhanvi", "Rathod", 466843, 46894, "Sales", 20000103);
insert into parijat.room(r_id, r_fname, r_lname, r_contact, r_salary, r_dep, r_dob) values (11, "Jil", "Bhatt", 23567, 57562, "IT", 20000103);
insert into parijat.room(r_id, r_fname, r_lname, r_contact, r_salary, r_dep, r_dob) values (12, "Mansi", "Chavda", 12433, 563657, "Accounts", 20070730);

select * from parijat.room; -- Show the data in table

drop table parijat.room; -- Delete thetable permanently

create table parijat.personal
(
r_id int,
pincode int,
location varchar(15),
expense int,
bank_acc_name varchar(15)
);

drop table parijat.personal;

insert into parijat.personal (r_id, pincode, location, expense, bank_acc_name) values (1, 123456, "Mumbai", 10000, "JP");
insert into parijat.personal (r_id, pincode, location, expense, bank_acc_name) values (2, 234561, "Surat", 5000, "BOA");
insert into parijat.personal (r_id, pincode, location, expense, bank_acc_name) values (3, 345612, "Pune", 6500, "SBI");
insert into parijat.personal (r_id, pincode, location, expense, bank_acc_name) values (4, 456123, "Banglore", 395, "HDFC");
insert into parijat.personal (r_id, pincode, location, expense, bank_acc_name) values (5, 561234, "Jaipur", 1800, "BNP");
insert into parijat.personal (r_id, pincode, location, expense, bank_acc_name) values (6, 612345, "Goa", 4700, "Axis");
insert into parijat.personal (r_id, pincode, location, expense, bank_acc_name) values (7, 123121, "Varanasi", 1500, "Kotak");
insert into parijat.personal (r_id, pincode, location, expense, bank_acc_name) values (8, 146421, "Bhopal", 200, "PNB");
insert into parijat.personal (r_id, pincode, location, expense, bank_acc_name) values (9, 563124, "Chennai", 2300, "ICICI");
insert into parijat.personal (r_id, pincode, location, expense, bank_acc_name) values (10, 797612, "Jarkhand", 3200, "AU");

desc parijat.room; -- shows the structure of the table

select * from parijat.personal;

update parijat.room -- Update exsiting record
set r_fname = 'Bhargav'
where r_id = 6;

delete from parijat.personal -- Delete particular record
where r_id = 10;

alter table parijat.room -- Add column syntax
add column r_salary int;

alter table parijat.room -- Delete column syntax
drop column r_salary;

alter table parijat.room -- Modify column syntax alter column column_name datatype;

drop table table_name; -- Delete table in the Database

truncate table table_name; -- Delete whole records in the table expect table

-- Select Statements
-- 1. Syntax
select column_name from table_name; -- This statement is used to display particular columns of data
select r_fname, r_contact from parijat.room;

-- 2. Syatax
select * from table_name; -- This statement is used to display all records in the table
select * from parijat.room;

-- 3. Syntax
select distinct column_name from table_name; -- This statement is used to display unique records from table
select distinct r_fname from parijat.room;

-- Where Clause Where clause is used to filter recors. It is used to extract only those records that fulfil a specified condition
-- Syntax Select column_name from table_name where condition;
select r_fname from parijat.room where r_fname = "Vishal";

-- Operators
-- 1. Arithmetic Operators:=> +, -, *, /, %
-- 2. Comparison Operators:=> =, =!, >, <, =>, <=
-- 3. Logical Operators:=> All, In, Between, Like, And, Or, Not, Any
-- 4. Bitwise Operators:=> Bitwise And (&), Bitwise Or (|)

select * from parijat.room
where r_contact > '60000'and r_fname = 'Bhargav';

-- Limit Clause [Is used to set an upper limit on the number of tuples returned by SQL]
select column_name from table_name limit 3; -- Output will be returns 5 rows of data
select r_fname from parijat.room limit 3;

-- Order by Clause [Is used to sort the result-set in Ascending (ASC) or Descending (DESC) order]
select column_name from table_name order by column_name asc;
select * from parijat.room order by r_fname asc;
select * from parijat.room order by r_fname desc;

select room.r_id, room.r_fname, personal.r_id, personal.expense, personal.bank_acc_name from parijat.room inner join parijat.personal on room.r_id = personal.r_id;

-- String Functions
select upper(r_fname), r_fname from parijat.room;
select lower(r_fname), r_fname from parijat.room;
select length(r_fname), r_fname from parijat.room;
select substring(r_fname, 1,4), r_fname from parijat.room;
select concat(r_fname," ", r_lname), r_fname, r_lname from parijat.room;
select replace(r_fname, "Vishal", "Charul"), r_fname, r_lname from parijat.room;
select replace(r_lname, "Trivedi", "Alshi"), r_fname, r_lname from parijat.room;

select * from parijat.room;
select * from parijat.personal;

-- Aggregate Functions are often used with group by and select statement
-- count(), sum(), avg(), max(), min(), round()

select count(r_fname) from parijat.room;
select sum(r_salary) from parijat.room;
select max(r_salary) from parijat.room;
select min(r_salary) from parijat.room;
select avg(r_salary) from parijat.room;
select round(avg(r_salary),2) from parijat.room;

/* Group By statement: It is often used with Aggregate Functions to group by the result-set by one or more columns
Syntax: 
select column_name()
from table_name
group by column_name() */

/* select r_dep, sum(r_salary) as total
from parijat.room
group by r_dep
order by total asc */

/* Having clause is used to apply fliter on the result of group by based on the specified condition
select column_name()
from table_name
where condition()
group by column_name()
having condition()

select bank_acc_name, sum(expense) as total
from parijat.personal
group by bank_acc_name
having sum(expense) > 1500
order by total asc */

/* -- Timesstamp Functions
show timezone
select now()
select timeofday()
select current_time
select current_date */

/* Extract Function:
   Extract Function extracts a part from a given date value. [Year, Month, Day, Week, DOW(Day Of Week)), DOY(Day Of Year), QUARTER, Hour, MINUTE]
   Syntax [select extract(month from date_field) from table]*/
-- select extract(year from r_dob) from parijat.room /  select extract(year from r_dob) AS Date_Of_Birth, r_dob from parijat.room
-- select extract(month from r_dob) from parijat.room /  select extract(month from r_dob) AS Date_Of_Birth, r_dob from parijat.room
-- select extract(day from r_dob) from parijat.room /  select extract(day from r_dob) AS Date_Of_Birth, r_dob from parijat.room
-- select extract(week from r_dob) from parijat.room /  select extract(week from r_dob) AS Date_Of_Birth, r_dob from parijat.room
-- select extract(dow from r_dob) from parijat.room /  select extract(dow from r_dob) AS Date_Of_Birth, r_dob from parijat.room
-- select extract(doy from r_dob) from parijat.room /  select extract(doy from r_dob) AS Date_Of_Birth, r_dob from parijat.room
-- select extract(quarter from r_dob) from parijat.room /  select extract(quarter from r_dob) AS Date_Of_Birth, r_dob from parijat.room
-- select extract(hour from r_dob) from parijat.room /  select extract(hour from r_dob) AS Date_Of_Birth, r_dob from parijat.room
-- select extract(minute from r_dob) from parijat.room /  select extract(minute from r_dob) AS Date_Of_Birth, r_dob from parijat.room

/* Joins
1. Inner Join / Join
select col_name() from table1_name Inner Join table2_name on table1.col_name = table2.col_name
select * from room as rm Inner Join personal as pl on rm.r_id = pl.r_id
select room.r_fname, personal.location from room Inner Join personal on room.r_id = personal.r_id
select rm.r_fname, pl.location from room as rm Inner Join personal as pl on rm.r_id = pl.r_id 

2. Left Join / Left Outer Join
select col_name() from table1_name Left Join table2_name on table1.col_name = table2.col_name
select * from room as rm Left Join personal as pl on rm.r_id = pl.r_id
select room.r_fname, room.r_lname, personal.bank_acc_name from room Left Join personal on room.r_id = personal.r_id
select rm.r_fname, rm.r_lname, pl.bank_acc_name from room as rm Left Join personal as pl on rm.r_id = pl.r_id 

3. Right Join / Right Outer Join
select col_name() from table1_name Left Join table2_name on table1.col_name = table2.col_name
select * from room as rm Left Join personal as pl on rm.r_id = pl.r_id
select room.r_fname, room.r_lname, personal.bank_acc_name from room Left Join personal on room.r_id = personal.r_id
select rm.r_fname, rm.r_lname, pl.bank_acc_name from room as rm Left Join personal as pl on rm.r_id = pl.r_id

4. Full Join / Full Outer Join
select col_name() from table1_name Full Join table2_name on table1.col_name = table2.col_name
select * from room as rm Full Outer Join personal as pl on rm.r_id = pl.r_id
select room.r_fname, room.r_lname, personal.bank_acc_name from room Full Join personal on room.r_id = personal.r_id
select rm.r_fname, rm.r_lname, pl.bank_acc_name from room as rm Full Join personal as pl on rm.r_id = pl.r_id 
-- select * from room full Join personal on parijat.room.r_id = parijat.personal.r_id

-- 5. Self Join A self join is a regular join in which a table is joined to itself. Self Joins are powerful for comparing values in a column of rows with the same table

select col_name() from table as T1 Join table as T2 on T1.col_name = T2.col_name


CREATE DATABASE employee.;
use employee;
CREATE TABLE emp
(
empid int,
empname varchar(10),
managerid int
);
desc employee.emp;
select * from emp;
insert into emp(empid, empname, managerid) values (1, "Vishal", 2); v vr
insert into emp(empid, empname, managerid) values (2, "Viral", 4); vr j
insert into emp(empid, empname, managerid) values (3, "Charul", 1); c v
insert into emp(empid, empname, managerid) values (4, "Jhanvi", 3); j c

select T2.empname, T1.empname from emp as T1 Join emp as T2 on T1.empid = T2.managerid; */

SELECT MAX(r_salary) AS second_highest_salary
FROM parijat.room
WHERE r_salary < (SELECT MAX(r_salary) FROM parijat.room);

SELECT MAX(r_salary) AS second_highest_salary
FROM parijat.room;

SELECT r_salary AS third_highest_salary
FROM parijat.room
ORDER BY r_salary DESC
LIMIT 1 OFFSET 2;

/* Subquery
-- Subquery or inner query or a Nested query allows to create complex query on the output of another query. Subquery syntax involves two select statements.
-- Syntax:
-- select column_name from table_name where column_name comparison_opreator (select column_name from table_name where column_name)

-- Subquery using Comparison Opreators: (>, <, >=, <=, etc.)
-- Ex.1 Find the details of roommates, whose expense more than average of total expense paid by all roommates
-- select avg(expense) from parijat.personal
-- select * from parijat.personal where expense > 3559 -- The output will come similar to the query given below but the difference is that the query given below will give the exact output because we have used subquery instead of average number.
-- select * from parijat.personal where expense > (select avg(expense) from parijat.personal)

-- Subquery using Logical Operators:
-- 1. IN:
-- select r_id, expense from parijat.personal where r_id in (select r_id from parijat.room)
-- 2. Exists: (Same results will be show using Joins but here we are use Subquery to get the same output) 
select r_fname, r_lname 
from parijat.room r 
where exists (	select r_id, expense 
				from parijat.personal p 
                where r.r_id = p.r_id
                and expense > 5000) */
                
/* Windows Functions:
-- Windows Functions applies aggregate, ranking and analytic funcations over a particular window (set of rows)
-- And OVER clause is used with the windows functions to define that window
Syntazx:
select column_name(s),
	fun() over( partition by clause
				order by clause
                row or range clause)
from table_name
-- In the above syntax fun() meanas we can use Aggregate, Ranking and Analytic funcations with Windows functions such as partition by, order by and rows using over clause
WINDOW FUNCTION TERMS
Let's look at some definitions:
● Window function applies aggregate, ranking and analytic functions
over a particular window; for example, sum, avg, or row_number
● Expression is the name of the column that we want the window
function operated on. This may not be necessary depending on what
window function is used
• OVER is just to signify that this is a window function
• PARTITION BY divides the rows into partitions so we can specify which
rows to use to compute the window function
● ORDER BY is used so that we can order the rows within ea
This is optional and does not have to be specified
• ROWS can be used if we want to further limit the rows wit
partition. This is optional and usually not used