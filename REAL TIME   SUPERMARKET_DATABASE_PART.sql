 Create Database SupermarketDB;

USE SupermarketDB 

Create Table Categories (
       CategoryID INT PRIMARY KEY IDENTITY(1,1),
       CategoryName NVarchar(100)
);

Create Table Products (
       ProductID INT PRIMARY KEY IDENTITY(1,1),
       ProductName NVarchar(100),
       Price Decimal(10,2),
       StockQty INT,
       Barcode NVarchar(50) UNIQUE,
       CategoryID INT
);



  

  CREATE TABLE Sales_Iteams (
        SaleItemID INT PRIMARY KEY IDENTITY(1,1),
        SaleID INT,
        ProductID INT,
        Quantity INT,
        Price DECIMAL(10,2)
);  




-------------CREATE FOREIGM KEYS
           ---Product --  Categories


   Alter Table Products
   ADD FOREIGN KEY (CategoryID)
   References Categories (CategoryID);


   ---Sales - Customer


   Alter Table Sales
   Add CustomerID INT;
     
     Alter Table Sales
     Add CONSTRAINT FK_Sales_Customers
     Foreign key (CustomerID)
     References Customers(CustomerID);
    


   -------------Sales - Employees

   Alter Table Sales
   ADD EmployeeID INT;



    Alter Table Sales
    Add Foreign key (EmployeeID)
    References Employees(EmployeeID);


  ----Sales_Items - Sales


  Alter Table Sales
  Drop CONSTRAINT PK__Sales__C6059461713511F5

  ALTER TABLE SALES
  ALTER Column saleid int not null;
  

  Alter Table Sales
  ADD CONSTRAINT PK_SALES PRIMARY KEY (SaleID);

 
 Alter Table Sales_Iteams
 Add Foreign Key (SaleID)
 References Sales(SaleID);


 ----------Sales_Items - Products

 Alter Table Sales_Iteams
 ADD FOREIGN KEY (ProductID)
 References Products(ProductID);





                                       --REAL DATABASE STRUCTURE

                                         --Categories - Products
                                         --Products  -  Sales_Iteams
                                         --Sales    -   Sales_Items
                                         --Custmors -   Sales
                                         --Employee -  Sales
   
   ---Insert Categories 14/05/2026
      
       Insert Into Categories (CategoryName) Values
       ('Groceries'),
       ('Snacks'),
       ('Drinks');
                                Select * from Categories 


---- Insert Products
  
   Insert Into Products (ProductName, Price, StockQty, Barcode, CategoryID) Values
   ('Rice Bag', 1200, 20, 'R1001', 1),
   ('Biscuits', 20, 50, 'B1001', 2),
   ('Milk Packet', 30, 100, 'M1001', 3); 
                                             Select * from Products 

-----Insert Customers
       
    Insert Into Customers (CustomerName, Phone) Values
    ('Ravi', '9876543210'),
    ('Pradeep', '7569523803'),
    ('Gopi', '6301219970');
                                      Select * from Customers 
---Insert Employees

  Insert Into Employees (EmployeeName) Values
  ('Kumar'),
  ('Krishna'),                                     
   ('Hari');         
                 Insert Into Employees (Salary) Values
                 (7000.00),
                 (7000.00),
                 (1000.00);

              Alter Table Employees
              Add Salary DECIMAL(10,2);

              Alter Table Employees
              Drop Column salary      

              Delete From Employees 
              where EmployeeID IN(17,18,19);

 Select * from Employees 

 --2026-o5-15 (A) Time: 11:48

 Select * 
 From Products
 Where Barcode = 'M1001';
 
    Alter Table Sales
    Add TotalAmount Int
 
 ---Step7 - Real Billing Transaction
      
      Begin Try

          Begin Transaction;

          --Create Bill
          Insert Into Sales 
          (CustomerID, EmployeeID, TotalAmount)
          Values (1, 1, 1260)
       
       --- Insert Bill Products
       Insert Into Sales_Items 
       (SaleID, ProductID, Quantity, Price)
       Values
       (1, 1, 1, 1200),
       (1,2,2,60);

       -----Reduce Rice Stock
       Update Products 
       Set StockQty = StockQty - 1
       Where ProductID  = 1;

       ---Reduce Milk Stock
       Update Products 
       Set StockQty = StockQty - 1
       Where ProductID = 2;

       Commit Transaction;

       Print 'Billing Success';

 End Try

Begin Catch
         
         RollBack Transaction;

         print 'Billing Failed' ;

End Catch;                       

                             ---Real - Time Billing Flow

                              --Customer Purchase
                                     --
                               --Insert Bill
                                    --
                               --- Insert Bill Products
                                   --
                              ---Update Stock
                                      --
                               -- Payment Success
                                  ---
                            
                            ---Commit




       ---If Error Happens
          
         --1 --Error
           ---
       --2 ---RollBack
          ---
       --3 --   Undo Everthing


Select * From Products 

--2026-05-16 
--Step 8 Check Stock After Sale

Select ProductName, StockQty From Products;

 --Step 9 - Daily Reports (Manager Checks Reports)

 -- Total Sales

 Select Sum(TotalAmount) AS TotalSales
 From Sales 


 ---Low Stock Prodoct

    Select * From Products 
    Where StockQty < 30

---- Most Sold Products
   
   Select ProductID,
           SUM(Quantity) As TotalQty
    From Sales_Items 
    Group by ProductID;


 ---- 2026-05-18
   --step 10 Join Queries
   --Very Important

   --Show Customer Bills

   Select Customers.CustomerName,
          Sales.TotalAmount 
  From Customers 
  Join Sales 
  ON Customers.CustomerID =
  Sales.CustomerID;

  -- Show Product Sales

  Select Products.ProductName,
         Sales_Items.Quantity
  From  Products 
  Join Sales_Items 
  ON Products.ProductID =
  Sales_Items.ProductID;

           --Step.11 - Real -Time DataBase
           --Maintenance

           --Manager Daily Operations

           --- Work                   Sql

           ---Add new Products       Insert
           ---Changes Price          Update
           ---Remove Expired Items   Delete
           --Check Stock             Select


    --Example - Update Product Price

    Update Products
    Set Price = 35
    Where ProductID = 2;