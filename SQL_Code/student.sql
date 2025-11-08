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

select Student_ID,Joining_Dates from Student where Course_name = "Data Science";

select * from Student where Statuss  = "IN_Active";

