--31.	Select only one/top 1 record from "EmployeeDetail" table. 

SELECT TOP 1 * FROM EMPLOYEE1;

--32.	Select all employee detail with First name "John","Jane", and "Emily". 

SELECT * FROM EMPLOYEE1;

select * from employee1 where firstname in ('John','Jane','Emily');

--32.	Select all employee detail with First name not in "John","Jane", and "Emily". 

select * from employee1 where firstname not in ('John','Jane','Emily');


--34.	Select first name from "EmployeeDetail" table after removing white spaces from right side 

SELECT * FROM EMPLOYEE1;

SELECT RTRIM(FIRSTNAME) FROM EMPLOYEE1;

--35.	Select first name from "EmployeeDetail" table after removing white spaces from left side 

SELECT LTRIM(FIRSTNAME) FROM EMPLOYEE1;

SELECT * FROM EMPLOYEE1;

SELECT DISTINCT DEPARTMENT FROM EMPLOYEE1;


SELECT FIRSTNAME,Department,CASE 
                    WHEN DEPARTMENT='Finance' Then 'F'
					WHEN DEPARTMENT='HR' Then 'H'
					WHEN DEPARTMENT='IT' Then 'I'
					When DEPARTMENT='Marketing' Then 'M'
					else 'S'

					end as dep from employee1;

---37.	Select first name from "EmployeeDetail" table prifixed with "Hello " 


SELECT 'HELLO ' + FIRSTNAME AS FULLNAME FROM EMPLOYEE1;

--38.	Get employee details from "EmployeeDetail" table whose Salary greater than 50000 

SELECT SALARY FROM EMPLOYEE1;
 

 SELECT * FROM EMPLOYEE WHERE SALARY>50000;

 --39.	Get employee details from "EmployeeDetail" table whose Salary less than 700000 
 SELECT * FROM  EMPLOYEE1 WHERE Salary < 50000 


 SELECT * FROM EMPLOYEE1 WHERE SALARY BETWEEN 40000 AND 52000;


 --41.	Select second highest salary from "EmployeeDetail" table. 

 SELECT TOP 1 SALARY  AS SECONDHIGH FROM (SELECT TOP 2 SALARY FROM EMPLOYEE1 ORDER BY SALARY DESC) T ORDER BY SALARY;

 SELECT * FROM EMPLOYEE1;





