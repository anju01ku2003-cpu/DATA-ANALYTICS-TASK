use college;

create table student
(st_id int primary key,
name varchar(50),
marks int,
age int,
course varchar(50)
);

insert into student
(st_id,name,marks,age,course)
values
(01, 'Rahul',85,20,'mca'),
(02, 'Raj',92,20,'mca'),
(03, 'Preeti',95,20,'mca'),
(04, 'Tripti',88,20,'mca'),
(05, 'Gayatri',60,20,'mca'),
(06, 'rahul',56,20,'mca');

select*from student;

select course, count(*)As
total_student
from student
group by course
having count(*)>5;

select course, MAX(marks)AS
highest_marks
from student 
group by course;


