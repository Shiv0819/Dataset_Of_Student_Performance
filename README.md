# Dataset_Of_Student_Performance
This is a dataset of student performance which we can use in college ,school  or coaching center.
use puneri_pattern_2;
create table Student(
Student_ID int primary key,
Student_Name varchar(40),
Joining_Dates date,
Current_Status enum("Active","IN_Active"),
Course_name varchar(40),
Gender enum("Male","Female"),
Student_total_fees DECIMAL(10,2),
Receive_fees DECIMAL(10,2),
Consultant_ID INT
);

INSERT INTO Student VALUES
(1, 'Aarav Mehta', '2024-01-15', 'Active', 'Data Science', 'Male',70000.00,70000.00,1004),
(2, 'Diya Sharma', '2024-02-10', 'Active', 'Data Analysis', 'Female',70000.00,70000.00,1003),
(3, 'Rahul Verma', '2024-03-22', 'IN_Active', 'AWS', 'Male',70000.00,30000.00,1004),
(4, 'Sneha Iyer', '2024-04-05', 'Active', 'Full Stack Development', 'Female',70000.00,70000.00,1003),
(5, 'Karan Joshi', '2024-05-19', 'Active', 'Data Science', 'Male',70000.00,70000.00,1004),
(6, 'Priya Nair', '2024-06-08', 'Active', 'Data Analysis', 'Female',70000.00,70000.00,1004),
(7, 'Vikram Rao', '2024-07-11', 'IN_Active', 'AWS', 'Male',70000.00,20000.00,1003),
(8, 'Neha Singh', '2024-08-25', 'Active', 'Full Stack Development', 'Female',70000.00,70000.00,1004),
(9, 'Rohan Das', '2024-09-13', 'Active', 'Data Science', 'Male',70000.00,70000.00,1002),
(10, 'Anjali Jain', '2024-10-02', 'Active', 'Data Analysis', 'Female',70000.00,70000.00,1004),
(11, 'Arjun Kapoor', '2025-01-10', 'Active', 'Full Stack Development', 'Male',70000.00,50000.00,1004),
(12, 'Meera Pillai', '2025-02-15', 'IN_Active', 'AWS', 'Female',70000.00,45000.00,1002),
(13, 'Devansh Patel', '2025-03-09', 'Active', 'Data Science', 'Male',70000.00,55000.00,1004),
(14, 'Ritika Roy', '2025-04-20', 'Active', 'Data Analysis', 'Female',70000.00,33000.00,1004),
(15, 'Siddharth Bansal', '2025-05-30', 'Active', 'Full Stack Development', 'Male',70000.00,70000.00,1002),
(16, 'Kritika Sen', '2025-06-11', 'Active', 'AWS', 'Female',70000.00,54000.00,1002),
(17, 'Ayaan Khan', '2025-07-14', 'Active', 'Data Science', 'Male',70000.00,34000.00,1002),
(18, 'Ishita Malhotra', '2025-08-01', 'IN_Active', 'Data Analysis', 'Female',70000.00,45000.00,1001),
(19, 'Yash Thakur', '2025-08-10', 'Active', 'AWS', 'Male',70000.00,44000.00,1001),
(20, 'Tanya Reddy', '2025-08-20', 'Active', 'Full Stack Development', 'Female',70000.00,70000.00,1001);

select * from Student;

#### Teacher ###
use puneri_pattern_2;
create table Teacher(
Teacher_ID int primary key, 
Teacher_Name varchar(50),
_Subject_ varchar(40),
Current_Status enum("Active","IN_Active"),
Gender enum("Male","Female")
);
INSERT INTO Teacher(Teacher_ID, Teacher_Name, _Subject_, Statuss, Gender) VALUES
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

use puneri_pattern_2;
CREATE TABLE Consultant (
    Consult_ID INT,
    #Staff_name VARCHAR(40),
    #Student_ID INT,
    #Teacher_ID INT,
    Consult_personName VARCHAR(40),
    Current_Status enum("Active","IN_Active"),
Gender enum("Male","Female"),
Conversion_rate INT
    #Student_total_fees DECIMAL(10,2),
    #Receive_fees DECIMAL(10,2),
    #Remaining_fees DECIMAL(10,2)
);

#Drop table Consultant;
INSERT INTO Consultant  VALUES
(1001,'Sneha',"Active","Female",30),   #2
(1002,'Anjali',"Active","Female",45),  #6
(1003, 'Ravi', "Active","Male",39),   #3
(1004, 'Tejas',"Active","Male",54);  #9

select * from Consultant;

use puneri_pattern_2;
create table Performance1(
Student_ID int,
_Subject_ varchar(40),
Total_marks int,
Obtined_Marks int,
Teacher_ID int
);
INSERT INTO Performance1(Student_ID, _Subject_,Teacher_ID, Total_marks, Obtined_Marks ) VALUES
(1, 'Python', 101, 30,20),(1, 'Python', 101, 30, 23),(1, 'Python', 101, 30, 25),
(5, 'Python', 108, 30, 23),(5, 'Python', 108,30, 29),(5, 'Python', 108, 30, 09),
(9, 'Python', 108, 30, 19),(9, 'Python', 108, 30, 28),(9, 'Python', 108, 30, 24),
(13, 'Python', 101, 30, 11),(13, 'Python', 101, 30, 25),(13, 'Python', 101,30, 25),
(17, 'Python', 101, 30, 19),(17, 'Python', 101, 30, 27),(17, 'Python', 101,30, 25),

-- Data Analysis students (Excel or Tableau , power bi)
(1, 'Excel', 104, 30, 24),(1, 'Excel', 104, 30, 23),(1, 'Excel', 104,30, 23),
(1, 'Tableau', 105, 30, 22), (1, 'Tableau', 105, 30, 26), (1, 'Tableau', 105, 30, 23),
(1, 'power BI', 109, 30, 25), (1, 'power BI', 109, 30, 29), (1, 'power BI', 109, 30, 21),

(5, 'Excel', 104, 30, 24), (5, 'Excel', 104, 30, 28), (5, 'Excel', 104, 30, 27),
(5, 'power BI', 109, 30, 22), (5, 'power BI', 109, 30, 25), (5, 'power BI', 109, 30, 29),
(5, 'Tableau', 105, 30, 26), (5, 'Tableau', 105, 30, 24), (5, 'Tableau', 105, 30, 28),

(9, 'Excel', 104, 30, 21), (9, 'Excel', 104, 30, 25), (9, 'Excel', 104, 30, 28),
(9, 'Power BI', 109, 30, 22), (9, 'Power BI', 109, 30, 24), (9, 'Power BI', 109, 30, 27),
(9, 'Tableau', 105, 30, 23), (9, 'Tableau', 105, 30, 29), (9, 'Tableau', 105, 30, 20),

(13, 'Excel', 104, 30, 20), (13, 'Excel', 104, 30, 23), (13, 'Excel', 104, 30, 24),
(13, 'Power BI', 109, 30, 26), (13, 'Power BI', 109, 30, 22), (13, 'power BI', 109, 30, 29),
(13, 'Tableau', 105, 30, 25), (13, 'Tableau', 105, 30, 20), (13, 'Tableau', 105, 30, 28),

(17, 'Excel', 104, 30, 27), (17, 'Excel', 104, 30, 21), (17, 'Excel', 104, 30, 22),
(17, 'Power BI', 109, 30, 24), (17, 'Power BI', 109, 30, 28), (17, 'Power BI', 109, 30, 29),
(17, 'Tableau', 105, 30, 25), (17, 'Tableau', 105, 30, 26), (17, 'Tableau', 105, 30, 23),

(2, 'Python', 101, 30, 20), (2, 'Python', 101, 30, 21), (2, 'Python', 101, 30, 22),
(2, 'Excel', 104, 30, 23), (2, 'Excel', 104, 30, 24), (2, 'Excel', 104, 30, 25),
(2, 'Power BI', 109, 30, 26), (2, 'Power BI', 109, 30, 27), (2, 'Power BI', 109, 30, 28),
(2, 'Tableau', 105, 30, 29), (2, 'Tableau', 105, 30, 21), (2, 'Tableau', 105, 30, 22),

(6, 'Python', 108, 30, 25), (6, 'Python', 108, 30, 26), (6, 'Python', 108, 30, 27),
(6, 'Excel', 104, 30, 28), (6, 'Excel', 104, 30, 29), (6, 'Excel', 104, 30, 20),
(6, 'Power BI', 109, 30, 21), (6, 'Power BI', 109, 30, 22), (6, 'Power BI', 109, 30, 23),
(6, 'Tableau', 105, 30, 24), (6, 'Tableau', 105, 30, 25), (6, 'Tableau', 105, 30, 26),

(10, 'Python', 108, 30, 27), (10, 'Python', 108, 30, 28), (10, 'Python', 108, 30, 29),
(10, 'Excel', 104, 30, 20), (10, 'Excel', 104, 30, 21), (10, 'Excel', 104, 30, 22),
(10, 'Power BI', 109, 30, 23), (10, 'Power BI', 109, 30, 24), (10, 'Power BI', 109, 30, 25),
(10, 'Tableau', 105, 30, 26), (10, 'Tableau', 105, 30, 27), (10, 'Tableau', 105, 30, 28),

(14, 'Python', 101, 30, 29), (14, 'Python', 101, 30, 20), (14, 'Python', 101, 30, 21),
(14, 'Excel', 104, 30, 22), (14, 'Excel', 104, 30, 23), (14, 'Excel', 104, 30, 24),
(14, 'Power BI', 109, 30, 25), (14, 'Power BI', 109, 30, 26), (14, 'Power BI', 109, 30, 27),
(14, 'Tableau', 105, 30, 28), (14, 'Tableau', 105, 30, 29), (14, 'Tableau', 105, 30, 20),

(18, 'Python', 101, 30, 21), (18, 'Python', 101, 30, 22), (18, 'Python', 101, 30, 23),
(18, 'Excel', 104, 30, 24), (18, 'Excel', 104, 30, 25), (18, 'Excel', 104, 30, 26),
(18, 'Power BI', 109, 30, 27), (18, 'Power BI', 109, 30, 28), (18, 'Power BI', 109, 30, 29),
(18, 'Tableau', 105, 30, 20), (18, 'Tableau', 105, 30, 21), (18, 'Tableau', 105, 30, 22),

(3, 'AWS', 106, 30, 23), (3, 'AWS', 106, 30, 24), (3, 'AWS', 106, 30, 25),
(7, 'AWS', 106, 30, 26), (7, 'AWS', 106, 30, 27), (7, 'AWS', 106, 30, 28),
(12, 'AWS', 106, 30, 29), (12, 'AWS', 106, 30, 20), (12, 'AWS', 106, 30, 21),
(16, 'AWS', 106, 30, 22), (16, 'AWS', 106, 30, 23), (16, 'AWS', 106, 30, 24),
(19, 'AWS', 106, 30, 25), (19, 'AWS', 106, 30, 26), (19, 'AWS', 106, 30, 27),

(15, 'java', 110, 30, 28), (15, 'java', 110, 30, 29), (15, 'java', 110, 30, 20),
(4, 'Java', 110, 30, 21), (4, 'Java', 110, 30, 22), (4, 'Java', 110, 30, 23),
(11, 'Java', 110, 30, 24), (11, 'Java', 110, 30, 25), (11, 'Java', 110, 30, 26),
(20, 'Java', 110, 30, 27), (20, 'Java', 110, 30, 28), (20, 'Java', 110, 30, 29);

select * from Performance1 order by 1 ;

SELECT 
  Student_ID,
  Teacher_ID,_Subject_,
  SUM(Obtined_Marks) AS Total_Obtained_Marks,
  sum(Total_marks) as Total_marks,
  ROUND((SUM(Obtined_Marks) / SUM(Total_marks)) * 100, 2) AS Percentage_of_subject
FROM Performance1  
GROUP BY Student_ID,_Subject_, Teacher_ID order by 1;
use puneri_pattern_2;
create table Attendance(
	Student_ID int,
    _Subject_ varchar(40),
    Teacher_ID int,
    Dates date,
    Attendance enum("P","A")
    );
INSERT INTO Attendance (Student_ID, _Subject_, Teacher_ID, Dates, Attendance) VALUES
-- Data Science students (Python teacher)
(1, 'Python', 101, '2024-01-21', 'P'),(1, 'Python', 101, '2024-01-23', 'P'),(1, 'Python', 101, '2024-01-25', 'P'),
(5, 'Python', 108, '2024-05-26', 'p'),(5, 'Python', 108, '2024-05-28', 'p'),(5, 'Python', 108, '2024-05-30', 'p'),
(9, 'Python', 108, '2024-09-20', 'P'),(9, 'Python', 108, '2024-09-24', 'P'),(9, 'Python', 108, '2024-09-26', 'A'),
(13, 'Python', 101, '2025-03-13', 'P'),(13, 'Python', 101, '2025-03-20', 'P'),(13, 'Python', 101, '2025-03-22', 'P'),
(17, 'Python', 101, '2025-07-17', 'A'),(17, 'Python', 101, '2025-07-21', 'P'),(17, 'Python', 101, '2025-07-24', 'A'),

-- Data Analysis students (Excel or Tableau , power bi)
(1, 'Excel', 104, '2024-03-21', 'P'),(1, 'Excel', 104, '2024-03-25', 'P'),(1, 'Excel', 104, '2024-03-26', 'P'),
(1, 'Tableau', 105, '2024-04-21', 'P'),(1, 'Tableau', 105, '2024-04-22', 'P'),(1, 'Tableau', 105, '2024-04-23', 'A'),
(1, 'power BI', 109, '2024-05-21', 'P'),(1, 'power BI', 109, '2024-05-22', 'A'),(1, 'power BI', 109, '2024-05-23', 'P'),

(5, 'Excel', 104, '2024-06-19', 'P'),(5, 'Excel', 104, '2024-06-21', 'A'),(5, 'Excel', 104, '2024-06-22', 'P'),
(5, 'power BI', 109, '2024-07-20', 'P'),(5, 'power BI', 109, '2024-07-21', 'P'),(5, 'power BI', 109, '2024-07-22', 'A'),
(5, 'Tableau', 105, '2024-08-12', 'P'),(5, 'Tableau', 105, '2024-08-11', 'P'),(5, 'Tableau', 105, '2024-08-09', 'P'),

(9, 'Excel', 104, '2024-10-20', 'P'),(9, 'Excel', 104, '2024-10-24', 'P'),(9, 'Excel', 104, '2024-10-26', 'A'),
(9, 'Power BI', 109, '2024-11-20', 'P'),(9, 'Power BI', 109, '2024-11-24', 'P'),(9, 'Power BI', 109, '2024-11-26', 'A'),
(9, 'Tableau', 105, '2024-12-20', 'P'),(9, 'Tableau', 105, '2024-12-24', 'P'),(9, 'Tableau', 105, '2024-12-26', 'A'),

(13, 'Excel', 104, '2025-04-13', 'P'),(13, 'Excel', 104, '2025-04-20', 'P'),(13, 'Excel', 104, '2025-04-22', 'P'),
(13, 'Power BI', 109, '2025-05-13', 'P'),(13, 'Power BI', 109, '2025-05-20', 'P'),(13, 'power BI', 109, '2025-05-22', 'P'),
(13, 'Tableau', 105, '2025-06-13', 'P'),(13, 'Tableau', 105, '2025-06-20', 'P'),(13, 'Tableau', 105, '2025-06-22', 'P'),

(17, 'Excel', 104, '2025-08-17', 'A'),(17, 'Excel', 104, '2025-08-21', 'P'),(17, 'Excel', 104, '2025-08-24', 'A'),
(17, 'Power BI', 109, '2025-09-17', 'A'),(17, 'Power BI', 109, '2025-09-21', 'P'),(17, 'Power BI', 109, '2025-09-24', 'A'),
(17, 'Tableau', 105, '2025-10-17', 'A'),(17, 'Tableau', 105, '2025-10-21', 'P'),(17, 'Tableau', 105, '2025-10-24', 'A'),

(2, 'Python', 101, '2024-02-16', 'P'),(2, 'Python', 101, '2024-02-17', 'P'),(2, 'Python', 101, '2024-02-19', 'P'),
(2, 'Excel', 104, '2024-03-16', 'P'),(2, 'Excel', 104, '2024-03-17', 'P'),(2, 'Excel', 104, '2024-03-19', 'P'),
(2, 'Power BI', 109, '2024-04-16', 'P'),(2, 'Power BI', 109, '2024-04-17', 'P'),(2, 'Power BI', 109, '2024-04-19', 'P'),
(2, 'Tableau', 105, '2024-05-16', 'P'),(2, 'Tableau', 105, '2024-05-17', 'P'),(2, 'Tableau', 105, '2024-05-19', 'P'),

(6, 'Python', 108, '2024-06-10', 'P'),(6, 'Python', 108, '2024-06-13', 'P'),(6, 'Python', 108, '2024-06-20', 'P'),
(6, 'Excel', 104, '2024-07-10', 'P'),(6, 'Excel', 104, '2024-07-13', 'P'),(6, 'Excel', 104, '2024-07-20', 'P'),
(6, 'Power BI', 109, '2024-08-10', 'P'),(6, 'Power BI', 109, '2024-08-13', 'P'),(6, 'Power BI', 109, '2024-08-20', 'P'),
(6, 'Tableau', 105, '2024-09-10', 'P'),(6, 'Tableau', 105, '2024-09-13', 'P'),(6, 'Tableau', 105, '2024-09-20', 'P'),

(10, 'Python', 108, '2024-10-05', 'A'),(10, 'Python', 108, '2024-10-07', 'P'),(10, 'Python', 108, '2024-10-10', 'A'),
(10, 'Excel', 104, '2024-11-05', 'P'),(10, 'Excel', 104, '2024-11-07', 'A'),(10, 'Excel', 104, '2024-11-10', 'P'),
(10, 'Power BI', 109, '2024-12-05', 'P'),(10, 'Power BI', 109, '2024-12-07', 'P'),(10, 'Power BI', 109, '2024-12-10', 'A'),
(10, 'Tableau', 105, '2025-01-05', 'P'),(10, 'Tableau', 105, '2025-01-07', 'P'),(10, 'Tableau', 105, '2025-01-10', 'A'),

(14, 'Python', 101, '2025-04-21', 'P'),(14, 'Python', 101, '2025-04-23', 'P'),(14, 'Python', 101, '2025-04-25', 'P'),
(14, 'Excel', 104, '2025-05-21', 'A'),(14, 'Excel', 104, '2025-05-23', 'P'),(14, 'Excel', 104, '2025-05-25', 'P'),
(14, 'Power BI', 109, '2025-06-21', 'A'),(14, 'Power BI', 109, '2025-06-23', 'P'),(14, 'Power BI', 109, '2025-06-25', 'P'),
(14, 'Tableau', 105, '2025-07-21', 'P'),(14, 'Tableau', 105, '2025-07-23', 'P'),(14, 'Tableau', 105, '2025-07-25', 'P'),

(18, 'Python', 101, '2025-08-03', 'A'),(18, 'Python', 101, '2025-08-05', 'P'),(18, 'Python', 101, '2025-08-07', 'P'),
(18, 'Excel', 104, '2025-09-03', 'P'),(18, 'Excel', 104, '2025-09-05', 'P'),(18, 'Excel', 104, '2025-09-07', 'A'),
(18, 'Power BI', 109, '2025-10-03', 'A'),(18, 'Power BI', 109, '2025-10-05', 'A'),(18, 'Power BI', 109, '2025-10-07', 'P'),
(18, 'Tableau', 105, '2025-11-03', 'P'),(18, 'Tableau', 105, '2025-11-05', 'P'),(18, 'Tableau', 105, '2025-11-07', 'P'),



-- AWS students
(3, 'AWS', 106, '2025-08-01', 'P'),(3, 'AWS', 106, '2025-08-01', 'P'),(3, 'AWS', 106, '2025-08-01', 'P'),
(7, 'AWS', 106, '2025-08-02', 'A'),(7, 'AWS', 106, '2025-08-02', 'A'),(7, 'AWS', 106, '2025-08-02', 'A'),
(12, 'AWS', 106, '2025-08-03', 'P'),(12, 'AWS', 106, '2025-08-03', 'P'),(12, 'AWS', 106, '2025-08-03', 'P'),
(16, 'AWS', 106, '2025-08-03', 'P'),(16, 'AWS', 106, '2025-08-03', 'P'),(16, 'AWS', 106, '2025-08-03', 'P'),
(19, 'AWS', 106, '2025-08-04', 'A'),(19, 'AWS', 106, '2025-08-04', 'A'),(19, 'AWS', 106, '2025-08-04', 'A'),

-- Full Stack Development students (Java )
(15, 'java', 110, '2025-08-02', 'P'),(15, 'java', 110, '2025-08-02', 'P'),(15, 'java', 110, '2025-08-02', 'P'),
(4, 'Java', 110, '2025-08-01', 'P'),(4, 'Java', 110, '2025-08-01', 'P'),(4, 'Java', 110, '2025-08-01', 'P'),
(11, 'Java', 110, '2025-08-02', 'A'),(11, 'Java', 110, '2025-08-02', 'A'),(11, 'Java', 110, '2025-08-02', 'A'),
(20, 'Java', 110, '2025-08-02', 'P'),(20, 'Java', 110, '2025-08-02', 'P'),(20, 'Java', 110, '2025-08-02', 'P');

select * from Attendance;

SELECT *,ROUND((Present_Count/(Present_Count + Absent_Count))*100,2) as Attendance_Percentage FROM (SELECT 
    Student_ID,
    _Subject_,
    SUM(CASE WHEN Attendance='P' then 1 else 0 end) aS Present_Count,
    SUM(CASE WHEN Attendance='A' then 1 else 0 end)  AS Absent_Count
FROM 
    Attendance

GROUP BY 
    Student_ID,_Subject_
    order by Student_ID) as Attendance ;

use puneri_pattern_2;
create table Assessment(Student_ID INT,
   
    Aptitude_test_total_marks int,
    Aptitude_obtained_marks int,
    Technical_test_total_marks int, 
    Technical_obtained_marks int,
    communication_skills_total_marks int,
    communication_obtained_marks int,
    HR_round_total_marks int,
    HR_round_obtained_marks int,
    test_date date);
 
INSERT INTO Assessment(
  Student_ID, 
  Aptitude_test_total_marks, Aptitude_obtained_marks,
  Technical_test_total_marks, Technical_obtained_marks,
  communication_skills_total_marks, communication_obtained_marks,
  HR_round_total_marks, HR_round_obtained_marks,
  test_date
) VALUES
-- Student 1 (Joined 2024‑01‑15 → Test date 2024‑07‑15)
(1,25, 22, 25, 21, 25, 22, 25, 20, '2024-07-15'),

-- Student 2 (Joined 2024‑02‑10 → Test date 2024‑08‑10)
(2, 25, 22, 25, 20, 25, 21, 25, 22, '2024-08-10'),

-- Student 3 (Joined 2024‑03‑22 → Test date 2024‑09‑22)
(3,25, 14, 25, 13, 25, 12, 25, 15, '2024-09-22'),

-- Student 4 (Joined 2024‑04‑05 → Test date 2024‑10‑05)
(4, 25, 22, 25, 21, 25, 20, 25, 22, '2024-10-05'),

-- Student 5 (Joined 2024‑05‑19 → Test date 2024‑11‑19)
(5,25, 20, 25, 22, 25, 20, 25, 20, '2024-11-19'),

-- Student 6 (Joined 2024‑06‑08 → Test date 2024‑12‑08)
(6,25, 21, 25, 22, 25, 22, 25, 21, '2024-12-08'),

(7,25, 20, 25, 20, 25, 22, 25, 21, '2025-1-08'),

-- Student 8 (Joined 2024‑08‑25 → Test date 2025‑02‑25)
(8,25, 21, 25, 20, 25, 22, 25, 22, '2025-02-25'),

-- Student 9 (Joined 2024‑09‑13 → Test date 2025‑03‑13)
(9,25, 22, 25, 22, 25, 21, 25, 20, '2025-03-13'),

-- Student 10 (Joined 2024‑10‑02 → Test date 2025‑04‑02)
(10,25, 20, 25, 22, 25, 20, 25, 22, '2025-04-02'),

-- Student 11 (Joined 2025‑01‑10 → Test date 2025‑07‑10)
(11,25, 15, 25, 14, 25, 13, 25, 12, '2025-07-10'),

(12,25, 11, 25, 12, 25, 12, 25, 13, '2025-04-08'),
-- Student 13 (Joined 2025‑03‑09 → Test date 2025‑09‑09)
(13,25, 12, 25, 12, 25,13, 25, 15, '2025-09-09'),

-- Student 14 (Joined 2025‑04‑20 → Test date 2025‑10‑20)
(14,25, 15, 25, 15, 25, 15, 25, 15, '2025-10-20'),

-- Student 15 (Joined 2025‑05‑30 → Test date 2025‑11‑30)
(15, 25, 22, 25, 22, 25, 22, 25, 22, '2025-11-30'),

-- Student 16 (Joined 2025‑06‑11 → Test date 2025‑12‑11)
(16,25, 16, 25, 15, 25, 15, 25, 15, '2025-12-11'),

-- Student 17 (Joined 2025‑07‑14 → Test date 2026‑01‑14)
(17,25, 11, 25,11, 25, 11, 25, 11, '2026-01-14'),

(18,25, 14, 25, 14, 25, 14, 25, 14, '2024-8-08'),

(19,25, 11, 25, 15, 25, 13, 25, 12, '2025-02-08'),
-- Student 20 (Joined 2025‑08‑20 → Test date 2026‑02‑20)
(20,25, 23, 25, 22, 25, 24, 25, 23, '2026-02-20');


use puneri_pattern_2;
CREATE TABLE Assessment_2(
  Student_ID INT,
  Aptitude_test_total_marks INT,
  Aptitude_obtained_marks INT,
  Technical_test_total_marks INT,
  Technical_obtained_marks INT,
  communication_skills_total_marks INT,
  communication_obtained_marks INT,
  HR_round_total_marks INT,
  HR_round_obtained_marks INT,
  test_date DATE
);

 
INSERT INTO Assessment_2 (
  Student_ID,
  Aptitude_test_total_marks, Aptitude_obtained_marks,
  Technical_test_total_marks, Technical_obtained_marks,
  communication_skills_total_marks, communication_obtained_marks,
  HR_round_total_marks, HR_round_obtained_marks,
  test_date
) VALUES
(1,25, 24, 25, 24, 25, 24, 25, 23, '2024-09-15'),

-- Student 2 (Joined 2024‑02‑10 → Test date 2024‑08‑10)
(2, 25, 24, 25, 24, 25, 24, 25, 25, '2024-11-10'),

-- Student 3 (Joined 2024‑03‑22 → Test date 2024‑09‑22)
(3,25, 15, 25, 17, 25, 18, 25, 19, '2024-11-22'),

-- Student 4 (Joined 2024‑04‑05 → Test date 2024‑10‑05)
(4, 25, 24, 25, 24, 25, 24, 25, 24, '2024-12-05'),

-- Student 5 (Joined 2024‑05‑19 → Test date 2024‑11‑19)
(5,25, 23, 25, 23, 25, 24, 25, 25, '2024-12-19'),

-- Student 6 (Joined 2024‑06‑08 → Test date 2024‑12‑08)
(6,25, 23, 25, 23, 25, 22, 25, 23, '2025-01-08'),

(7,25, 24, 25, 23, 25, 23, 25, 22, '2025-03-08'),

-- Student 8 (Joined 2024‑08‑25 → Test date 2025‑02‑25)
(8,25, 24, 25, 24, 25, 24, 25, 24, '2025-04-25'),

-- Student 9 (Joined 2024‑09‑13 → Test date 2025‑03‑13)
(9,25, 24, 25, 23, 25, 23, 25, 23, '2025-04-13'),

-- Student 10 (Joined 2024‑10‑02 → Test date 2025‑04‑02)
(10,25, 24, 25, 24, 25, 23, 25, 23, '2025-05-02'),

-- Student 11 (Joined 2025‑01‑10 → Test date 2025‑07‑10)
(11,25, 16, 25, 18, 25, 18, 25, 18, '2025-08-10'),

(12,25, 16, 25, 17, 25, 16, 25, 17, '2025-05-08'),
-- Student 13 (Joined 2025‑03‑09 → Test date 2025‑09‑09)
(13,25, 17, 25, 17, 25,16, 25, 17, '2025-10-09'),

-- Student 14 (Joined 2025‑04‑20 → Test date 2025‑10‑20)
(14,25, 17, 25, 18, 25, 17, 25, 16, '2025-11-20'),

-- Student 15 (Joined 2025‑05‑30 → Test date 2025‑11‑30)
(15, 25, 25, 25, 24, 25, 23, 25, 23, '2025-12-30'),

-- Student 16 (Joined 2025‑06‑11 → Test date 2025‑12‑11)
(16,25, 18, 25, 18, 25, 18, 25, 17, '2025-12-30'),

-- Student 17 (Joined 2025‑07‑14 → Test date 2026‑01‑14)
(17,25, 16, 25,17, 25, 16, 25, 16, '2026-05-14'),

(18,25, 18, 25, 18, 25, 16, 25, 16, '2024-10-08'),

(19,25, 14 ,25, 15, 25, 14, 25, 17, '2025-04-08'),
-- Student 20 (Joined 2025‑08‑20 → Test date 2026‑02‑20)
(20,25, 25, 25, 25, 25, 24, 25, 24, '2026-04-20');

select * from Assessment_2;

use puneri_pattern_2;
CREATE TABLE placement (
    Student_ID INT,
    Teacher_ID INT,
    Consult_person VARCHAR(40),
    Company_name VARCHAR(30),
    package Varchar(30),
    Gender ENUM('Male', 'Female'),
    PRIMARY KEY (Student_ID, Teacher_ID)
);


INSERT INTO Placement (Student_ID, Teacher_ID, Consult_person, Company_name, package, Gender) VALUES
(1, 101, 'Sneha', 'Infosys','4.4 Lakhs' , 'Male'),
(2, 104, 'Anjali', 'TCS', '3.4 Lakhs', 'Female'),
(4, 110, 'Tejas', 'Wipro','2.5 Lakhs', 'Female'),
(5, 101, 'Sneha', 'Tech Mahindra','3 Lakhs', 'Male'),
(6, 104, 'Anjali', 'Cognizant', '5 Lakhs', 'Female'),
(8, 109, 'Tejas', 'Capgemini', '3 Lakhs', 'Female'),
(9, 108, 'Sneha', 'IBM', '6 Lakhs', 'Male'),
(10, 105, 'Anjali', 'Deloitte', '5 Lakhs', 'Female'),
(15, 109, 'Tejas', 'Zensar', '3.6 Lakhs', 'Male'),
(20, 110, 'Tejas', 'Google', '12 Lakhs', 'Female');

select * from Placement;

##########  Answers ##########
SELECT s.Student_name,s.Joining_dates,s.Statuss,s.Course_name,s.Gender as  Student_gender,
Staff_name,Consult_person as Consultant_guide,
Student_total_fee,Receive_fee,Remaining_fee,
_subject_,Total_marks,Obtined_Marks as Student_performance,
_subject_,dates,attendance as Student_Attendances,
Consult_person, company_name,package,gender,
Attitude_test_total_marks, Attitude_obtained_marks,
Technical_test_total_marks, Technical_obtained_marks,
communication_skills_total_marks, communication_obtained_marks,
HR_round_total_marks, HR_round_obtained_marks,
test_date,
Attitude_test_total_marks, Attitude_obtained_marks,
Technical_test_total_marks, Technical_obtained_marks,
communication_skills_total_marks, communication_obtained_marks,
HR_round_total_marks, HR_round_obtained_marks,
test_date
FROM Student AS s
INNER JOIN Staff AS st ON s.Student_ID = st.Student_ID
INNER JOIN Performance AS pe ON s.Student_ID = pe.Student_ID
INNER JOIN Attendance AS att ON s.Student_ID = att.Student_ID
INNER JOIN Assessment_1 AS as1 ON s.Student_ID = as1.Student_ID
INNER JOIN Assessment_2 AS as2 ON s.Student_ID = as2.Student_ID
INNER JOIN Placement AS pl ON s.Student_ID = pl.Student_ID
INNER JOIN Teacher As T1 ON T1.Teacher_ID=pe.Teacher_ID;


SELECT
    s.Student_name,
    s.Joining_dates,
    s.Statuss,
    s.Course_name,
    s.Gender AS Student_gender,
    
    st.Staff_name,
    st.Consult_person AS Consultant_guide,
    
    st.Student_total_fees,
    st.Receive_fees,
    st.Remaining_fees,
    
    pe._subject_,
    pe.Total_marks,
    pe.Obtined_Marks AS Student_performance,
    
    att._subject_,
    att.dates,
    att.attendance AS Student_Attendances,
    
    st.Consult_person,
    
    pl.company_name,
    pl.package,
    pl.gender,
    
    as1.Attitude_test_total_marks,
    as1.Attitude_obtained_marks,
    as1.Technical_test_total_marks,
    as1.Technical_obtained_marks,
    as1.communication_skills_total_marks,
    as1.communication_obtained_marks,
    as1.HR_round_total_marks,
    as1.HR_round_obtained_marks,
    as1.test_date,
    
    as2.Attitude_test_total_marks AS Attitude_test_total_marks_2,
    as2.Attitude_obtained_marks AS Attitude_obtained_marks_2,
    as2.Technical_test_total_marks AS Technical_test_total_marks_2,
    as2.Technical_obtained_marks AS Technical_obtained_marks_2,
    as2.communication_skills_total_marks AS communication_skills_total_marks_2,
    as2.communication_obtained_marks AS communication_obtained_marks_2,
    as2.HR_round_total_marks AS HR_round_total_marks_2,
    as2.HR_round_obtained_marks AS HR_round_obtained_marks_2,
    as2.test_date AS test_date_2

FROM Student AS s
INNER JOIN Staff AS st ON s.Student_ID = st.Student_ID
INNER JOIN Performance AS pe ON s.Student_ID = pe.Student_ID
INNER JOIN Attendance AS att ON s.Student_ID = att.Student_ID
INNER JOIN Assessment_1 AS as1 ON s.Student_ID = as1.Student_ID
INNER JOIN Assessment_2 AS as2 ON s.Student_ID = as2.Student_ID
INNER JOIN Placement AS pl ON s.Student_ID = pl.Student_ID
INNER JOIN Teacher AS T1 ON T1.Teacher_ID = pe.Teacher_ID

LIMIT 0, 1000;

SELECT
    s.Student_name,
    s.Joining_dates,
    s.Statuss,
    s.Course_name,
    s.Gender AS Student_gender,
    
    T1.Teacher_name, 
    
    st.Staff_name,
    st.Consult_person AS Consultant_guide,
    
    st.Student_total_fees,
    st.Receive_fees,
    st.Remaining_fees,
    
    pe._subject_,
    pe.Total_marks,
    pe.Obtined_Marks AS Student_performance,
    
    att._subject_,
    att.dates,
    att.attendance AS Student_Attendances,
    
    st.Consult_person,
    
    pl.company_name,
    pl.package,
    pl.gender,
    
    as1.Attitude_test_total_marks,
    as1.Attitude_obtained_marks,
    as1.Technical_test_total_marks,
    as1.Technical_obtained_marks,
    as1.communication_skills_total_marks,
    as1.communication_obtained_marks,
    as1.HR_round_total_marks,
    as1.HR_round_obtained_marks,
    as1.test_date,
    
    as2.Attitude_test_total_marks AS Attitude_test_total_marks_2,
    as2.Attitude_obtained_marks AS Attitude_obtained_marks_2,
    as2.Technical_test_total_marks AS Technical_test_total_marks_2,
    as2.Technical_obtained_marks AS Technical_obtained_marks_2,
    as2.communication_skills_total_marks AS communication_skills_total_marks_2,
    as2.communication_obtained_marks AS communication_obtained_marks_2,
    as2.HR_round_total_marks AS HR_round_total_marks_2,
    as2.HR_round_obtained_marks AS HR_round_obtained_marks_2,
    as2.test_date AS test_date_2

FROM Student AS s
left JOIN Staff AS st ON s.Student_ID = st.Student_ID
left JOIN Performance1 AS pe ON s.Student_ID = pe.Student_ID
left JOIN Attendance AS att ON s.Student_ID = att.Student_ID
left JOIN Assessment_1 AS as1 ON s.Student_ID = as1.Student_ID
left JOIN Assessment_2 AS as2 ON s.Student_ID = as2.Student_ID
left JOIN Placement AS pl ON s.Student_ID = pl.Student_ID
left JOIN Teacher AS T1 ON T1.Teacher_ID = pe.Teacher_ID

LIMIT 0, 1000;

