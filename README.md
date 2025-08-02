# Dataset_Of_Student_Performance
This is a dataset of student performance which we can use in college ,school  or coaching center.
################################################# Faculty table ###############################################
create database puneri_pattern;
use puneri_pattern;
create table Faculty(
Teacher_ID int primary key, 
Teacher_Name varchar(50),
Course varchar(40),
Statuss enum("Active","IN_Active")
);
insert into Faculty(
Teacher_ID,
Teacher_Name,
Course,
Statuss)
values(
1,"Shubham","python","Active"),
(2,"Tom","POWER_BI","Active"),
(3,"SHRAVAN","EXCAL","Active"),
(4,"ASHOK","java","Active"),
(5,"MANSI","MYSQL","Active"),
(6,"Sai","python","IN_Active");

select * from Faculty;

select Teacher_Name,Course from Faculty where statuss = 'IN_Active';

select Teacher_Name,Course from Faculty where statuss = 'Active';

alter table Faculty add Gender enum('Male','Female');

describe Faculty;

UPDATE Faculty
SET Gender = CASE Teacher_ID
    WHEN 1 THEN 'Male'
    WHEN 2 THEN 'Male'
    WHEN 3 THEN 'Male'
    WHEN 4 THEN 'Male'
    WHEN 5 THEN 'Female'
    WHEN 6 THEN 'Male'
END
WHERE Teacher_ID BETWEEN 1 AND 6;

select Teacher_Name,Course from Faculty where Statuss = 'IN_Active';
show tables;
alter table Faculty2 rename to Faculty;
select * from Faculty; 

################################### Student table #######################################################
use puneri_pattern;
create table Student1(
Student_ID int primary key,
Student_Name varchar(40),
Joining_Dates date,
Statuss enum("Active","IN_Active"),
Course varchar(40));
insert into Student1(Student_ID,Student_Name,Joining_Dates,Statuss,Course) values  (101, "Shiva", '2025-02-08', "Active", "Data_Science"),
  (102, "Bigil", '2025-01-20', "Active", "Data_Science"),
  (103, "guru", '2025-08-01', "Active", "Data_Analysis"),
  (104, "Rahul", '2022-02-19', "IN_Active", "Data_Science"),
  (105, "Eknath", '2021-04-19', "IN_Active", "Data_Science"),
  (106, "Tanishka", '2025-07-23', "Active", "Full Stack Development"),
  (107, "Alexa", '2024-12-07', "Active", "Data_Analysis");
select * from Student1;
select Student_Name,joining_dates from Student1 where Statuss = 'IN_Active';
alter table Student1 add Gender enum('Male','Female');
UPDATE Student1
SET Gender = CASE Student_ID
    WHEN 101 THEN 'Male'
    WHEN 102 THEN 'Male'
    WHEN 103 THEN 'Male'
    WHEN 104 THEN 'Male'
    WHEN 105 THEN 'male'
    WHEN 106 THEN 'Female'
    when 107 then 'Male'
END
WHERE Student_ID BETWEEN 101 AND 107;
show tables;
select Student_ID,Student_Name,Gender,Course,Statuss from Student1 where Statuss = 'IN_Active';
select Student_ID,Student_Name,Gender,Course,Statuss from Student1 where Statuss = 'Active';

########################################### Attendance table ################################################################

use puneri_pattern;
create table Attendance (
	Student_ID int,
    Course_Subject varchar(40),
    Teacher_ID int,
    Dates date,
    Attendance enum("P","A")
    );
insert into Attendance(Student_ID, Course_Subject,Teacher_ID,Dates,Attendance)values(101,'Python',1,'2025-03-01','P'),
(101, 'Python', 1, '2025-03-10', 'P'),
(101, 'Python', 1, '2025-03-20', 'P'),
(101, 'Excel', 3, '2025-03-29', 'P'),
(101, 'Excel', 3, '2025-04-05', 'p'),
(101, 'Excel', 3, '2025-04-06', 'P'),
(101, 'Power_BI', 2, '2025-04-15', 'P'),
(101, 'Power_BI', 2, '2025-04-20', 'p'),
(101, 'Power_BI', 2, '2025-04-30', 'P'),
(101, 'MySQL', 5, '2025-05-01', 'P'),
(101, 'MySQL', 5, '2025-05-10', 'p'),
(101, 'MySQL', 5, '2025-05-13', 'P'),
-- Student 102
(102, 'Python', 1, '2025-02-01', 'P'),
(102, 'Python', 1, '2025-02-17', 'P'),
(102, 'Python', 1, '2025-02-18', 'A'),
(102, 'Excel', 3, '2025-02-28', 'P'),
(102, 'Excel', 3, '2025-03-03', 'P'),
(102, 'Excel', 3, '2025-03-19', 'A'),
(102, 'Power_BI', 2, '2025-03-22', 'A'),
(102, 'Power_BI', 2, '2025-03-23', 'P'),
(102, 'Power_BI', 2, '2025-03-29', 'P'),
(102, 'MySQL', 5, '2025-04-02', 'P'),
(102, 'MySQL', 5, '2025-04-03', 'P'),
(102, 'MySQL', 5, '2025-04-05', 'A'),

-- Student 103
(103, 'Python', 1, '2025-08-20', 'A'),
(103, 'Python', 1, '2025-08-23', 'P'),
(103, 'Python', 1, '2025-08-24', 'P'),
(103, 'Excel', 3, '2025-09-03', 'P'),
(103, 'Excel', 3, '2025-09-10', 'P'),
(103, 'Excel', 3, '2025-09-15', 'A'),
(103, 'Power_BI', 2, '2025-10-01', 'P'),
(103, 'Power_BI', 2, '2025-10-03', 'P'),
(103, 'Power_BI', 2, '2025-10-06', 'A'),
(103, 'MySQL', 5, '2025-10-09', 'P'),
(103, 'MySQL', 5, '2025-10-10', 'A'),
(103, 'MySQL', 5, '2025-10-11', 'P'),

-- Student 106
(106, 'Java', 4, '2025-08-01', 'P'),
(106, 'Java', 4, '2025-08-15', 'P'),
(106, 'Java', 4, '2025-09-10', 'p'),
-- student107
(107, 'Python', 1, '2024-12-20', 'P'),
(107, 'Python', 1, '2025-01-01', 'A'),
(107, 'Python', 1, '2025-01-05', 'P'),
(107, 'Excel', 3, '2025-01-18', 'P'),
(107, 'Excel', 3, '2025-01-25', 'A'),
(107, 'Excel', 3, '2025-01-29', 'P'),
(107, 'Power_BI', 2, '2025-02-01', 'P'),
(107, 'Power_BI', 2, '2025-02-03', 'A'),
(107, 'Power_BI', 2, '2025-02-06', 'P'),
(107, 'MySQL', 5, '2025-02-17', 'P'),
(107, 'MySQL', 5, '2025-02-19', 'P'),
(107, 'MySQL', 5, '2025-02-22', 'A');
select * from Attendance;
show tables;
SELECT 
    Student_ID,
    Attendance,
    Course_Subject,
    COUNT(Attendance) AS Count_of_Attendance
FROM 
    Attendance
WHERE 
    Attendance = 'p' 
GROUP BY 
    Student_ID, Attendance, Course_Subject
    order by Student_ID;
    
    -- sum of attendance
SELECT Student_ID,Attendance ,SUM(Attendance_counter) FROM   (Select 
  Student_ID,
    Attendance,
    CASE WHEN Attendance='p' then 1 else 0 end AS Attendance_counter
FROM  
    Attendance
) AS Attendance_COUNT 
WHERE ATTENDAnce ='p'
GROUP BY 
    Student_ID, Attendance
    order by Student_ID;
    
    SELECT Student_ID,Attendance ,Teacher_ID,SUM(Attendance_counter) FROM   (Select 
  Student_ID,Teacher_ID,
    Attendance,
    CASE WHEN Attendance='a' then 1 else 0 end AS Attendance_counter
FROM  
    Attendance
) AS Attendance_COUNT 
WHERE ATTENDAnce ='a'
GROUP BY 
    Student_ID, Attendance,Teacher_ID
    order by Student_ID;
    

-- sum of attendance with name of student
SELECT Attendance_COUNT.Student_ID,s.Student_Name,Attendance ,Attendance_COUNT.Teacher_ID,Teacher_name,SUM(Attendance_counter) FROM   (Select 
  Student_ID,Teacher_ID,
    Attendance,
    CASE WHEN Attendance='a' then 1 else 0 end AS Attendance_counter
FROM  
    Attendance
) AS Attendance_COUNT  

INNER JOIN Student1 as s
 ON 
 s.student_Id=Attendance_COUNT.Student_ID
 
 INNER JOIN Faculty2 as F
 ON F.Teacher_ID=Attendance_COUNT.Teacher_ID

WHERE ATTENDAnce ='a'
GROUP BY 
    Student_ID, Attendance,Teacher_ID
    order by Student_ID;


############################################### Performance table ########################################################################

use puneri_pattern;
create table Performance2(
Student_ID int,
Course_Subject varchar(40),
Total_marks int,
Obtined_Marks int,
Teacher_ID int
);
insert into Performance2(
Student_ID,
Course_Subject,
Total_marks,
Obtined_Marks,
Teacher_ID)
value(
101,'Python',30,20,1),
-- Student 101
(101, 'Python', 30, 18, 1),
(101, 'Python', 30, 24, 1),
(101, 'Excel', 30, 20, 3),
(101, 'Excel', 30, 26, 3),
(101, 'Excel', 30, 21, 3),
(101, 'Power_BI', 30, 19, 2),
(101, 'Power_BI', 30, 23, 2),
(101, 'Power_BI', 30, 25, 2),
(101, 'MySQL', 30, 21, 5),
(101, 'MySQL', 30, 26, 5),
(101, 'MySQL', 30, 24, 5),

-- Student 102
(102, 'Python', 30, 23, 1),
(102, 'Python', 30, 20, 1),
(102, 'Python', 30, 17, 1),
(102, 'Excel', 30, 25, 3),
(102, 'Excel', 30, 19, 3),
(102, 'Excel', 30, 22, 3),
(102, 'Power_BI', 30, 21, 2),
(102, 'Power_BI', 30, 18, 2),
(102, 'Power_BI', 30, 26, 2),
(102, 'MySQL', 30, 22, 5),
(102, 'MySQL', 30, 25, 5),
(102, 'MySQL', 30, 19, 5),

-- Student 103
(103, 'Python', 30, 21, 1),
(103, 'Python', 30, 20, 1),
(103, 'Python', 30, 24, 1),
(103, 'Excel', 30, 23, 3),
(103, 'Excel', 30, 19, 3),
(103, 'Excel', 30, 22, 3),
(103, 'Power_BI', 30, 26, 2),
(103, 'Power_BI', 30, 18, 2),
(103, 'Power_BI', 30, 0, 2),
(103, 'MySQL', 30, 17, 5),
(103, 'MySQL', 30, 21, 5),
(103, 'MySQL', 30, 23, 5),
-- student 106
(106, 'Java', 30, 21, 4),
(106, 'Java', 30, 24, 4),
(106, 'Java', 30, 22, 4),
-- Student 107
(107, 'Python', 30, 25, 1),
(107, 'Python', 30, 18, 1),
(107, 'Python', 30, 22, 1),
(107, 'Excel', 30, 0, 3),
(107, 'Excel', 30, 19, 3),
(107, 'Excel', 30, 24, 3),
(107, 'Power_BI', 30, 23, 2),
(107, 'Power_BI', 30, 26, 2),
(107, 'Power_BI', 30, 20, 2),
(107, 'MySQL', 30, 19, 5),
(107, 'MySQL', 30, 25, 5),
(107, 'MySQL', 30, 18, 5);

select * from performance2;

select * from Student1 inner join Attendance on Student1.Student_ID = Attendance.Student_ID;

select * from Student1 inner join performance on Student1.Student_ID = performance.Student_ID;

-- left join
select * from
Student1 as S
left join
attendance as A
on s.Student_ID=A.Student_ID;

-- right join
select * from
Student1 as S
right join
attendance as A
on s.Student_ID=A.Student_ID;

-- full join
select * from
Student1 as S
left join
attendance as A
on s.Student_ID=A.Student_ID
union
select * from
Student1 as S
right join
attendance as A
on s.Student_ID=A.Student_ID;

SELECT A.Course_Subject, A.Dates, A.Attendance, P.Total_marks, P.Obtined_Marks 
FROM Attendance AS A 
INNER JOIN performance2 AS P 
ON A.Course_Subject = P.Course_Subject where A.Course_Subject = 'Python'; 

select * from Attendance as A
inner join
Performance2 as P 
on A.Student_ID = P.Student_ID where A.Student_ID  = 101;

-- check the student performance
SELECT 
  SUM(Obtined_Marks) AS Total_Obtained,
  Student_ID,
  Total_marks,
  Teacher_ID,Course_Subject
FROM Performance2  
WHERE Student_ID = 101
GROUP BY Student_ID, Total_marks,Course_Subject, Teacher_ID;


SELECT 
  Student_ID,
  Obtined_Marks,
  Total_marks,
  Teacher_ID,Course_Subject,
  SUM(Obtined_Marks) AS Total_Obtained,
  sum(Total_marks) as Total_marks,
  ROUND((SUM(Obtined_Marks) / SUM(Total_marks)) * 100, 2) AS Percentage
FROM Performance2  
WHERE Student_ID = 101 and Course_Subject = 'Python'
GROUP BY Student_ID,Obtined_Marks, Total_marks,Course_Subject, Teacher_ID;

-- check the performance of student with name 
SELECT 
  Student_ID,
  Obtined_Marks,
  Total_marks,
  Teacher_ID,Course_Subject,
  SUM(Obtined_Marks) AS Total_Obtained,
  sum(Total_marks) as Total_marks,
  ROUND((SUM(Obtined_Marks) / SUM(Total_marks)) * 100, 2) AS Percentage
FROM Performance2  
WHERE Student_ID in (101,102,103) and Course_Subject = 'Python'
GROUP BY Student_ID,Obtined_Marks, Total_marks,Course_Subject, Teacher_ID;

-- check the performance of student with name 
SELECT    
    s.Student_name,
    f.Teacher_name,
    p.Student_ID,   
    p.Obtined_Marks,   
    p.Total_marks,  
    p.Course_Subject,   
    SUM(p.Obtined_Marks) AS Total_Obtained,   
    SUM(p.Total_marks) AS Total_Marks,   
    ROUND((SUM(p.Obtined_Marks) / SUM(p.Total_marks)) * 100, 2) AS Percentage 
FROM 
    Performance2 AS p  
INNER JOIN 
    Student1 AS s ON s.Student_ID = p.Student_ID 
    
inner join 
Faculty2 as f 
on f.Teacher_ID=p.Teacher_ID

WHERE 
    p.Student_ID IN (101, 102, 103) 
    AND p.Course_Subject = 'Python' 
GROUP BY 
    p.Student_ID, p.Obtined_Marks, p.Total_marks, p.Course_Subject, f.Teacher_ID, s.Student_name ;

##################################### Answer #####################################
SELECT Student_ID, Student_Name, Course, Statuss
FROM Student1;
-------------------------------------------------------------------
SELECT Student_ID, Student_Name, Joining_Dates
FROM Student1
WHERE Statuss = 'IN_Active';
---------------------------------------------------------------
SELECT Student_ID, COUNT(*) AS Present_Count
FROM Attendance
WHERE Attendance = 'P'
GROUP BY Student_ID;
---------------------------------------------------------------------------------------
SELECT 
    s.Student_Name,
    f.Teacher_Name,
    a.Course_Subject
FROM 
    Attendance a
JOIN Student1 s ON a.Student_ID = s.Student_ID
JOIN Faculty f ON a.Teacher_ID = f.Teacher_ID
GROUP BY s.Student_Name, f.Teacher_Name, a.Course_Subject;
-----------------------------------------------------------------------------
SELECT 
    s.Student_Name,
    ROUND(SUM(p.Obtined_Marks) / SUM(p.Total_marks) * 100, 2) AS Percentage
FROM 
    Performance2 p
JOIN Student1 s ON s.Student_ID = p.Student_ID
WHERE 
    p.Course_Subject = 'Python'
GROUP BY 
    s.Student_Name;

-------------------------------------------------------------------------
SELECT 
    Student_ID,
    Course_Subject,
    COUNT(*) AS Present_Count
FROM 
    Attendance
WHERE 
    Attendance = 'P'
GROUP BY 
    Student_ID, Course_Subject;
---------------------------------------------------------------------
SELECT 
    s.Student_Name,
    p.Course_Subject,
    ROUND(SUM(p.Obtined_Marks) / SUM(p.Total_marks) * 100, 2) AS Percentage
FROM 
    Performance2 p
JOIN Student1 s ON s.Student_ID = p.Student_ID
GROUP BY 
    s.Student_Name, p.Course_Subject
HAVING 
    Percentage < 50;
------------------------------------------------------------------------------
