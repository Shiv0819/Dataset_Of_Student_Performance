-- PUNERI PATTERN SQL

use puneri_pattern_2;
select 
S.Student_Name,S.Joining_Dates ,S.Current_Status as Student_Status,S.Course_name ,S.Gender as Student_Gender,
S.Student_total_fees ,S.Receive_fees ,S.Student_total_fees - S.Receive_fees as Student_Remaining_Fees,C.Consult_personName,C.Current_Status as Consult_Status,
C.Gender as Consult_Gender,C.conversion_rate,P._Subject_ as Subject,P.Percentage_of_subject as Performance_Percentage,T.Teacher_Name,T.Current_Status as Teacher_Status,T.Gender as Teacher_Gender,
A.Attendance_Percentage,A1.Percentage_of_Aptitude as Percentage_of_Aptitude_1,A1.Percentage_of_Technical as Percentage_of_Technical_1,
A1.Percentage_of_Communcation as Percentage_of_Communcation_1,A1.Percentage_of_HR_round as  Percentage_of_HR_round_1,
A2.Percentage_of_Aptitude as Percentage_of_Aptitude_2,A2.Percentage_of_Technical as Percentage_of_Technical_2,
A2.Percentage_of_Communcation as Percentage_of_Communcation_2,A2.Percentage_of_HR_round as  Percentage_of_HR_round_2,P1.Company_name,P1.package

from STudent as S
INNER JOIN Consultant as C ON C.Consult_ID=S.Consultant_ID
INNER JOIN (SELECT 
  Student_ID,
  Teacher_ID,_Subject_,
  SUM(Obtined_Marks) AS Total_Obtained_Marks,
  sum(Total_marks) as Total_marks,
  ROUND((SUM(Obtined_Marks) / SUM(Total_marks)) * 100, 2) AS Percentage_of_subject
FROM Performance1  
GROUP BY Student_ID,_Subject_, Teacher_ID) as P ON P.Student_ID=S.Student_ID
INNER JOIN Teacher as T On T.Teacher_ID=P.Teacher_ID and T._Subject_=P._Subject_
INNER JOIN (SELECT *,ROUND((Present_Count/(Present_Count + Absent_Count))*100,2) as Attendance_Percentage FROM (SELECT 
    Student_ID,
    _Subject_,
    SUM(CASE WHEN Attendance='P' then 1 else 0 end) aS Present_Count,
    SUM(CASE WHEN Attendance='A' then 1 else 0 end)  AS Absent_Count
FROM 
    Attendance

GROUP BY 
    Student_ID,_Subject_
    order by Student_ID) as Attendance) as A ON A.Student_ID=S.Student_ID and A._Subject_=T._Subject_
    
    INNER JOIN (SELECT 
  Student_ID,
  test_date,
  SUM(Aptitude_obtained_marks) AS Aptitude_Total_Obtained,
  sum(Aptitude_test_total_marks) as Aptitude_test_total_marks,
  ROUND((SUM(Aptitude_obtained_marks) / SUM(Aptitude_test_total_marks)) * 100, 2) AS Percentage_of_Aptitude,
  
  SUM(Technical_obtained_marks) AS Technical_Total_Obtained,
  sum(Technical_test_total_marks) as Technical_test_total_marks,
  ROUND((SUM(Technical_obtained_marks) / SUM(Technical_test_total_marks)) * 100, 2) AS Percentage_of_Technical,
  
  SUM(communication_obtained_marks) AS communication_skills_Total_Obtained,
  sum(communication_skills_total_marks) as communication_skills_total_marks,
  ROUND((SUM( communication_obtained_marks) / SUM(communication_skills_total_marks)) * 100, 2) AS Percentage_of_Communcation,
  
  SUM(HR_round_obtained_marks) AS HR_round_Total_Obtained,
  sum( HR_round_total_marks) as Attitude_test_total_marks,
  ROUND((SUM(HR_round_obtained_marks) / SUM( HR_round_total_marks)) * 100, 2) AS Percentage_of_HR_round
  
FROM Assessment 
GROUP BY Student_ID,   test_date) as A1 ON A1.Student_ID=S.Student_ID

INNER JOIN (SELECT 
  Student_ID,
  test_date,
  SUM(Aptitude_obtained_marks) AS Aptitude_Total_Obtained,
  sum(Aptitude_test_total_marks) as Aptitude_test_total_marks,
  ROUND((SUM(Aptitude_obtained_marks) / SUM(Aptitude_test_total_marks)) * 100, 2) AS Percentage_of_Aptitude,
  
  SUM(Technical_obtained_marks) AS Technical_Total_Obtained,
  sum(Technical_test_total_marks) as Technical_test_total_marks,
  ROUND((SUM(Technical_obtained_marks) / SUM(Technical_test_total_marks)) * 100, 2) AS Percentage_of_Technical,
  
  SUM(communication_obtained_marks) AS communication_skills_Total_Obtained,
  sum(communication_skills_total_marks) as communication_skills_total_marks,
  ROUND((SUM( communication_obtained_marks) / SUM(communication_skills_total_marks)) * 100, 2) AS Percentage_of_Communcation,
  
  SUM(HR_round_obtained_marks) AS HR_round_Total_Obtained,
  sum( HR_round_total_marks) as Attitude_test_total_marks,
  ROUND((SUM(HR_round_obtained_marks) / SUM( HR_round_total_marks)) * 100, 2) AS Percentage_of_HR_round
  
FROM Assessment_2 
GROUP BY Student_ID,   test_date
)as A2  ON A2.Student_ID=S.Student_ID

LEFT JOIN placement as P1 ON P1.Student_ID=S.Student_ID

;