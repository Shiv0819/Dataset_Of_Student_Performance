#create database puneri_pattern_2;
use puneri_pattern_2;
create table Teacher(
Teacher_ID int primary key, 
Teacher_Name varchar(50),
_Subject_ varchar(40),
Current_Status enum("Active","IN_Active"),
Gender enum("Male","Female")
);
INSERT INTO Teacher(Teacher_ID, Teacher_Name, _Subject_, Current_Status, Gender) VALUES
(101, 'laxmi', 'Python', 'Active', 'Female'),
(102, 'Michael Smith', 'MySQL', 'Active', 'Male'),
(103, 'Sara Lee', 'Excel', 'IN_Active', 'Female'),
(104, 'John', 'Excel', 'Active', 'Male'),
(105, 'Emma Davis', 'Tableau', 'Active', 'Female'),
(106, 'David Wilson', 'AWS', 'Active', 'Male'),
(107, 'Sophia Brown', 'Java', 'IN_Active', 'Female'),
(108, 'Chris Martin', 'Python', 'Active', 'Male'),
(109, 'Olivia Garcia', 'Power BI', 'Active', 'Female'),
(110, 'Daniel Harris', 'Java', 'Active', 'Male');

select * from Teacher;

#show tables;
drop table teacher;
#select * from Teachers1 where statuss = "IN_Active";
