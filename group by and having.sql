

CREATE TABLE AMZON (
   ID INT,
   EMP_NAME NVARCHAR(50),
   DEPT NVARCHAR(50),
   SALARY INT,                                                                             select * from AMZON 
   JOINDATE DATE
);                                          SELECT dept, EMP_NAME, COUNT(*) AS TATAL
                                            FROM AMZON 
                                             GROUP BY DEPT, EMP_NAME                      ---COUNT EMPLOYESS IN EACH DEPATMENT AND CITY
                                            


                      
                          
                                           SELECT DEPT, SUM(SALARY) AS TOTALSALARY                
                                                                                     --Find total salary in each department.
                                         FROM AMZON 
                                           GROUP BY DEPT


                                           select dept, sum(salary) AS AMOUNT
                                           from AMZON                                  ----FIND TOTAL SALARY OF IT EMPLOYEES ONLY(WITH WHERE CLUASE)
                                           WHERE DEPT = 'SPORTS' 
                                           GROUP BY DEPT 

                                            
                                            SELECT DEPT, SUM(SALARY) AS [TOTAL SALAY], MIN(SALARY)
                                            FROM AMZON 
                                            GROUP BY DEPT 
                                            HAVING SUM(SALARY) > 50000 

                                            select  min(salary)  as amount
                                            from AMZON         
                                            group by SALARY 


                                            select Emp_name, max(salary) as TOtalmount
                                            from amzon
                                            group by EMP_NAME 


                                            select dept, count(emp_name) as Names
                                            from AMZON 
                                            group by DEPT 

                                                select emp_name, AVG(salary)  [Total amount], count(salary)
                                                from AMZON 
                                                group by EMP_NAME 






                                                select * from AMZON 
                                                select dept, sum(salary) as salary
                                                from AMZON 
                                                group by DEPT 
                                                having sum(salary) > 50000

                                                select dept, AVG(salary) as salary
                                                from AMZON 
                                                group by DEPT 
                                                having AVG(salary) < 39000

                                                select dept, min(salary) as less_salary
                                                from AMZON 
                                                group by DEPT 
                                                having min(salary) < 30000

                                                select dept, max(salary) as higest_salary
                                                from AMZON 
                                                group  by DEPT 
                                                having max(salary) > 48000


                                                select dept, sum(salary) as Totalsalary
                                                from AMZON 
                                                Where dept = 'clothing'
                                                group by DEPT 
                                                having sum(salary) > 2300


                                                
                                             

INSERT INTO AMZON (ID, EMP_NAME, DEPT, SALARY, JOINDATE) VALUES (21, 'PRADEEP', 'SPORTS', 40000, '2024-04-20'),
                                                                          (22, 'RAJU', 'CLOTHING', 54600, '2023-05-23'),
                                                                          (25, 'josh', 'GOODS', 34560, '2022-03-10'),
                                                                          (23, 'VIJAY', 'SNACKS', 23700, '2021-02-01'),
                                                                          (24, 'HAJI', 'ELECTRIC', 34500, '2020-01-04');
                                                                          

