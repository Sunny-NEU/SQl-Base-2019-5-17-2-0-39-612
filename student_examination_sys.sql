/*创建数据库*/
create database student_examination_sys;
use student_examination_sys;
/*创建表*/
create table student 
(
	id char(8) primary key,
	name char(20),
	age smallint,  
	sex char(2)
);

create table subject 
(
	id char(8) primary key,
	subject char(20),
	teacher char(20),
	description char(50)
);

create table score 
(
	id char(4) primary key,
	student_id char(8),
	subject_id char(8),
	score float
);
/*插入数据*/
insert into student (id,name,age,sex)
values ('001','张三',18,'男'),
       ('002','李四',20,'女');

insert into subject (id,subject,teacher,description)
values ('1001','语文','王老师','本次考试比较简单'),
       ('1002','数学','刘老师','本次考试比较难');

insert into score (id,student_id,subject_id,score)
values ('1','001','1001',80),
       ('2','002','1002',60),
	   ('3','001','1001',70),
	   ('4','002','1002',60.5);
