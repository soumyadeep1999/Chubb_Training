use chubb;

create table users (user_id int,user_name varchar(20),codekata_prob varchar(20), company_name varchar(20),is_solvable int,m_id int);
insert into users (user_id,user_name,codekata_prob,company_name,is_solvable,m_id) values (1,"aman","array","chubb",0,1),(2,"ayush","dynamic","delloite",1,2),(3,"arun","strings","kpmg",0,3),(4,"soumya","dsa","accenture",1,NULL),(5,"pranav","graphs","capegemini",0,NULL);
select * from users;

create table codekata (name varchar(20),codekata_id int,question varchar(20),solve_status int,question_solved_out_of_10 int);
insert into codekata (name,codekata_id,question,solve_status,question_solved_out_of_10) values ("a",8,"oops",0,5),("b",1,"array",1,8),("c",7,"java",0,10),("d",3,"strings",1,4),("e",10,"python",0,7);
select * from codekata;


select distinct users.user_name from users join codekata on users.is_solvable=codekata.solve_status where codekata.solve_status>0;
select sum(question_solved_out_of_10) from codekata;


create table attandance1 (att_id int,att_status varchar(20));
insert into attandance1 (att_id,att_status) values (1,"Present"),(2,"Present"),(14,"Absent"),(15,"Absent"),(16,"Present");

create table company_drive (com_id int,com_name varchar(20),com_status varchar(20));
insert into company_drive (com_id,com_name,com_status) values (1,"chubb","Present"),(8,"accolite","Absent"),(2,"delloite","present"),(7,"TCS","Absent"),(12,"Herman","Absent");
select * from company_drive;
select users.user_name from users join company_drive on users.user_id=company_drive.com_id where
company_drive.com_status=(select distinct att_status from attandance1 join users on users.user_id=attandance1.att_id);

create table courses (c_id int,courses varchar(20));
insert into courses (c_id,courses) values (1,"python"),(2,"cpp"),(3,"java"),(4,"ruby"),(5,"php");
create table students_activated_courses (student_id int,c_id int, student_name varchar(20));
insert into students_activated_courses (student_id,c_id,student_name) values (1,3,"abc"),(2,8,"def"),(3,4,"efg"),(4,5,"pqr"),(5,10,"xyz");

SELECT courses.courses,students_activated_courses.student_name
       FROM courses
         JOIN students_activated_courses
            ON courses.c_id = students_activated_courses.c_id group by courses.courses;

create table mentor (mentor_id int,mentor_name varchar(20));
insert into mentor (mentor_id,mentor_name) values (1,"abc"),(2,"def"),(3,"ghi"),(4,"jkl"),(5,"mno");
select mentor_name from mentor;

select distinct count(mentor_name) from mentor join users on mentor.mentor_id=users.m_id where users.m_id is not null;

create table topics(topic_id int,topic_name varchar(20));
insert into topics (topic_id,topic_name) values (1,"MEAN"),(2,"MERN"),(3,"MONGO"),(4,"Python"),(5,"ML");

create table task(task_id int,task_name varchar(20));
insert into task (task_id,task_name) values (1,"Angular"),(2,"React"),(3,"BigData"),(8,"Unity"),(6,"DevOps");