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