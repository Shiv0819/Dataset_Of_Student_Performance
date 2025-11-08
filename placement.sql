use puneri_pattern_2;
CREATE TABLE placement (
    Student_ID INT,
    Company_name VARCHAR(30),
    package Varchar(30),
    Gender ENUM('Male', 'Female'),
    PRIMARY KEY (Student_ID )
);


INSERT INTO Placement (Student_ID, Company_name, package, Gender) VALUES
(1, 'Infosys','4.4 Lakhs' , 'Male'),
(2,  'TCS', '3.4 Lakhs', 'Female'),
(4, 'Wipro','2.5 Lakhs', 'Female'),
(5, 'Tech Mahindra','3 Lakhs', 'Male'),
(6,  'Cognizant', '5 Lakhs', 'Female'),
(8, 'Capgemini', '3 Lakhs', 'Female'),
(9, 'IBM', '6 Lakhs', 'Male'),
(10, 'Deloitte', '5 Lakhs', 'Female'),
(15, 'Zensar', '3.6 Lakhs', 'Male'),
(20, 'Google', '12 Lakhs', 'Female');

select * from Placement;


SELECT Student_name,Joining_dates,statuss,Course_name,Gender as  Student_gender,Staff_name,Consult_person as Consultant_guide,Student_total_fees,Receive_fees,Remaining_fees,_subject_
FROM Student AS s
INNER JOIN Staff AS st ON s.Student_ID = st.Student_ID
INNER JOIN Performance AS pe ON s.Student_ID = pe.Student_ID
INNER JOIN Attendance2 AS att ON s.Student_ID = att.Student_ID
INNER JOIN Assessment_1 AS as1 ON s.Student_ID = as1.Student_ID
INNER JOIN Assessment_2 AS as2 ON s.Student_ID = as2.Student_ID
INNER JOIN Placement AS pl ON s.Student_ID = pl.Student_ID
INNER JOIN Teachers1 As T1 ON T1.Teacher_ID=pe.Teacher_ID;


SELECT 
  Student_ID,
  Teacher_ID,test_date,
  SUM(Attitude_obtained_marks) AS Attitude_Total_Obtained,
  sum(Attitude_test_total_marks) as Attitude_test_total_marks,
  ROUND((SUM(Attitude_obtained_marks) / SUM(Attitude_test_total_marks)) * 100, 2) AS Percentage_of_Attitude,
  
  SUM(Technical_obtained_marks) AS Technical_Total_Obtained,
  sum(Technical_test_total_marks) as Technical_test_total_marks,
  ROUND((SUM(Technical_obtained_marks) / SUM(Technical_test_total_marks)) * 100, 2) AS Percentage_of_Technical,
  
  SUM(communication_obtained_marks) AS communication_skills_Total_Obtained,
  sum(communication_skills_total_marks) as communication_skills_total_marks,
  ROUND((SUM( communication_obtained_marks) / SUM(communication_skills_total_marks)) * 100, 2) AS Percentage_of_Communcation,
  
  SUM(HR_round_obtained_marks) AS HR_round_Total_Obtained,
  sum( HR_round_total_marks) as Attitude_test_total_marks,
  ROUND((SUM(HR_round_obtained_marks) / SUM( HR_round_total_marks)) * 100, 2) AS Percentage_of_HR_round
  
FROM Assessment_1 
GROUP BY Student_ID,  Teacher_ID, test_date;


SELECT * 
FROM Student AS s
LEFT JOIN Staff AS st ON s.Student_ID = st.Student_ID
LEFT JOIN Performance AS pe ON s.Student_ID = pe.Student_ID
LEFT JOIN Attendance AS att ON s.Student_ID = att.Student_ID
LEFT JOIN Assessment_1 AS as1 ON s.Student_ID = as1.Student_ID
LEFT JOIN Assessment_2 AS as2 ON s.Student_ID = as2.Student_ID
LEFT JOIN Placement AS pl ON s.Student_ID = pl.Student_ID
LEFT JOIN Teacher as T1 On T1.Teacher_ID=pe.Teacher_ID and T1._subject_=pe._subject_
order by 1;



    