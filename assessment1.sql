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

#drop table Assessment;
select * from Assessment;
SELECT 
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
GROUP BY Student_ID,   test_date;


SELECT * 
FROM Teacher1 AS t
INNER JOIN Staff AS st ON t.Teacher_ID = st.Teacher_ID
INNER JOIN Performance AS pe ON s.Teacher1_ID = pe.Teacher1_ID
INNER JOIN Attendance2 AS att ON s.Teacher_ID = att.Teacher_ID
INNER JOIN Assessment_1 AS as1 ON t.Teacher_ID = as1.Teacher_ID
INNER JOIN Assessment_2 AS as2 ON t.Teachert_ID = as2.Teacher_ID
INNER JOIN Placement AS pl ON t.Teacher_ID = pl.Teacher_ID;
 