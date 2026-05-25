CREATE TABLE Employee1 (
     EmpID INT PRIMARY KEY,
     EmpName NVarchar(50),
     EmpRoll NVarchar(50),
     EmpDept Nvarchar(50),
     EmpSalary DECIMAL(10,2)
); 

Insert Into Employee1 (EmpID, EmpName, EmpRoll, EmpDept, EmpSalary ) VALUES (221, 'Hari Babu', 'Softer Testing', 'HR', 12345.00),
                                                                             (222, 'Ganesh Babu', 'Front End', 'Manager', 6534.00),
                                                                             (223, 'Triok Babu', 'Full Stack', 'Head Dept', 4561.00),
                                                                             (224, 'Sohan Babu', 'Back End', 'HR', 23451.00),
                                                                             (225, 'Anji Babu', 'Full Stack', 'Head Dept', 2134.00);

              
              select * from Employee1 

       Select * from Employee1 
       Where EmpID = 221

       select distinct EmpID , EmpName, EmpSalary  from Employee1 


       Create Table Department (
            DepartmentID INT PRIMARY KEY,
            DepartmentName NVarchar(50),
            EmpId INT
        Constraint Fk_Department_Employee1
        Foreign key(EmpID)
        References Employee1(EmpID)
    );

            Insert into Department (DepartmentID, DepartmentName, EmpId) Values
            (100, 'Field', 221),
            (101, 'Hr',  222),
            (103, 'Production', 223),
            (104, 'Invertory', 224),
            (105, 'Bill Payment', 225)

            Select * From   Department 
