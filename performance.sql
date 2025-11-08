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