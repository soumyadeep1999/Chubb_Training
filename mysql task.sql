create database chubb;
use chubb;

#Q1
create table chubb (id int, users varchar(20),codekata varchar(20),attandance varchar(20),topics varchar(20),tasks varchar(20),company_drives varchar(20),mentors varchar(20),students_activated_courses varchar(20),courses varchar(20));
#Q2
insert into chubb (id,users,codekata,attandance,topics,tasks,company_drives,mentors,students_activated_courses,courses) values
(1,"aman","solved","present","array","sort","chubb","xyz","java_script","java"),
(2,"arun","unsolved","present","array","search","delloite","abc","node","java"),
(3,"rohit","solved","absent","tree","binary_search_tree","capegemini","pqr","django","python");
insert into chubb values (4,"mayank","unsolved","absent","linked_list","traverse","amazon",NULL,"flask","python"),
(5,"ayush","solved","present","graph","bfs","walmart",NULL,"stl","cpp");
select * from chubb;
#Q3
select topics,tasks from chubb where codekata="solved";
select count(tasks) from chubb where codekata="solved";
#Q4
select company_drives from chubb where attandance="present";
select count(company_drives) from chubb where attandance="present";
#Q5
SELECT COUNT(students_activated_courses), courses,students_activated_courses
FROM chubb
GROUP BY courses;

#Q6
select mentors from chubb where mentors is not null;
#Q7
select users from chubb where mentors is not null;
select count(users) from chubb where mentors is not null;

#Q5(Method 2 using join)
create table courses (c_id int,courses varchar(20));
insert into courses (c_id,courses) values (1,"python"),(2,"cpp"),(3,"java"),(4,"ruby"),(5,"php");
create table students_activated_courses (student_id int,c_id int, student_name varchar(20));
insert into students_activated_courses (student_id,c_id,student_name) values (1,3,"abc"),(2,8,"def"),(3,4,"efg"),(4,5,"pqr"),(5,10,"xyz");

SELECT courses.courses,students_activated_courses.student_name
       FROM courses
         JOIN students_activated_courses
            ON courses.c_id = students_activated_courses.c_id;