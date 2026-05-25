Create Database PraticeDB


Create Table Employee
(
 EmpId Int primary key Identity(1,1),
 EmpName NVarchar(50),
 Empsalary Int
);

Insert Into Employee (EmpName, Empsalary) Values
('Ravi', 40000),
('Mallesh', 50000),
('Mahesh', 70000);


Create Table Department
(
 EmpId Int,
 DepId Int,
 DepName Int,
 Constraint Fk_Department_Employee
 Foreign key (EmpId)
 References
 Employee(EmpId)
);


Insert Into Department (EmpId, DepId, DepName) Values
(1, 11, 'HR'),
(2, 12, 'Testing'),
(3, 13, 'IT');
                             select * From Department 

Update Department 
Set Depid = 3
WHERE EmpId  = 1;

Alter Table Department              
Drop column DepName

Alter Table Department
Add DepName Nvarchar(50)

Select * From Employee E
Join Department D
On D.DepId = E.EmpId 

Select * From Employee E
Left outer join Department D
On D.Depid = E.Empid

Select * From Employee E
Right Outer Join Department D
On D.DepId = E.EmpId 

Select * From Employee E
Full Outer Join Department D
On D.DepId = E.EmpId 

Select * From Employee
Cross Join Department 
 


 Create Table Marks
 ( 
 stdId Int Primary key,
 StdName NVarchar(50),
 Marks Int
 );

 Insert Into Marks Values
 (1, 'Markwood', 40),
 (2, 'Jack', 38),
 (3, 'Lally', 41);
                              Select * From Marks;


    Create Table Student
    (
    StdID Int,
    Stdname NVarchar(50),
    );

         Insert Into Student Values
         (2, 'HH'),
         (1, 'll'),
         (3, 'kk');

         Alter Table Student
         Add Constraint FK_Student_Marks
         Foreign Key(StdID)
         References marks(StdId);



    Create Table Attedence
    (
     StdID int,
     StdName Nvarchar(50),
     StdStatus Nvarchar(20),
     Constraint FK_Attedence_Marks
     Foreign Key(StdID)
     References Marks(StdID)
     );

     Insert Into Attedence Values 
     (1, 'jj', 'Present'),
     (2, 'ii', 'Absent'),
     (3, 'rr', 'Present');


     Select * From Marks M
     Inner Join Student S
     on M.stdId = S.StdID 
     Inner Join Attedence A
     on M.stdId = A.StdID 

     Select * From Marks M
     Full Outer Join Student S
     on M.stdId = S.StdID 
     Full Outer Join Attedence A
     on M.stdId = A.StdID 

     Select * From Marks M
     Cross Join Student S
     Cross Join Attedence A
      
