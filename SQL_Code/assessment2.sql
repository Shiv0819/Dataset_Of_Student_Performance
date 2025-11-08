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
  
FROM Assessment_2 
GROUP BY Student_ID,   test_date;

select * from Student as s inner join Staff as st on s.Student_ID = st.Student_ID ; 

select * from Student as s inner join Performance as pe on s.Student_ID = pe.Student_ID ;
select * from Student as s inner join Attendance2 as Att on s.Student_ID = Att.Student_ID ;
select * from Student as s inner join Assessment_1 as As1 on s.Student_ID = As1.Student_ID ;
select * from Student as s inner join Assessment_2 as As2 on s.Student_ID = As2.Student_ID ;
select * from Student as s inner join placement as pl on s.Student_ID = pl.Student_ID ;
 
show tables; 