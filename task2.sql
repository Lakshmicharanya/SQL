use school;
select std_name,gender from students;
-- Display all the records from the STUDENT table.
select * from students;
-- Display only STD_NAME and GENDER.
select std_name from students;
-- Display the names of all female students.
select std_name from students
where gender="female";
-- Display the names of all male students.
select std_name from students
where gender="male";
-- Display students who are studying in Class 6.
select * from students
where class=6;
-- Display students whose age is 22.
select * from students
where age=22;
-- Display the student whose STD_ID is 3.
select * from students
where std_id =3;
-- Display students whose age is greater than 18.
select * from students
where age>=18;
-- Display students whose class is less than 7.
select * from students
where class<7;
-- Display students whose name is RAMYA.
select * from students
where std_name="ramya";

-- Find female students studying in Class 6.
select * from students
where gender="female" and class=6;
-- Find male students studying in Class 5.
select * from students
where gender="male" and class=5;
-- Find students who are female AND studying in Class 7.
select * from students
where gender="female" and class=7;
-- Find students who are in Class 5 OR Class 6.
select * from students
where class=5 or class=6;
-- Find students whose age is greater than 0 AND gender is female.
select * from students
where age>0 and gender="female";

-- Display students ordered by age from lowest to highest.
select * from students
order by age asc;
-- Display students ordered by age from highest to lowest.
select * from students
order by age desc;
-- Display students ordered by their name alphabetically.
select * from students
order by std_name asc;
-- Display students ordered by class in descending order.
select * from students
order by class desc;

-- Find the total number of students.
select count(*) as total_num from students;
-- Find the number of female students.
select gender,count(*) from students
where gender="female";
-- Find the number of male students.
select gender,count(*) as total_num  from students
where gender="male";
-- Find the maximum age.
select max(age) from students;
-- Find the minimum age.
select min(age) from students;
-- Find the average age.
select avg(age) from students;
-- Find the total of all ages.
select sum(age) from students;

-- Count how many students are there in each class.
select class,count(*) from students
group by class;

-- Count the number of male and female students.
select gender,count(*) as total from students
group by gender;
-- Find the average age of students in each class.
select class,avg(age) as average from students
group by class;
-- Find the minmum age in each class.
select class,min(age) from students
group by class;
