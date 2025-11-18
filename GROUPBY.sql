--42.	Write the query to get the department and department wise total(sum) salary from "EmployeeDetail" table. 

SELECT * FROM EMPLOYEE1;

SELECT DEPARTMENT,SUM(SALARY) AS TOTAL_SALARY FROM EMPLOYEE1 GROUP BY DEPARTMENT;

--43.	Write the query to get the department and department wise total(sum) salary, display it in ascending order according to salary. 


SELECT DEPARTMENT,SUM(SALARY) AS TOTOAL_SALARY FROM EMPLOYEE1 GROUP BY DEPARTMENT ORDER BY SUM(SALARY) ;

--44.	Write the query to get the department and department wise total(sum) salary, display it in descending order according to salary. 

SELECT DEPARTMENT,SUM(SALARY) AS TOTAL_SALARY FROM EMPLOYEE1 GROUP BY DEPARTMENT ORDER BY SUM(SALARY) DESC;


--45.	Write the query to get the department, total no. of departments, total(sum) salary with respect to department from "EmployeeDetail" table. 

SELECT * FROM EMPLOYEE1;

SELECT DEPARTMENT,COUNT(*) DEPT_COUNT,SUM(SALARY) TOTALSALARY FROM EMPLOYEE1 GROUP BY DEPARTMENT ;

--46.	Get department wise average salary from "EmployeeDetail" table order by salary ascending 

SELECT DEPARTMENT,AVG(SALARY) AVGSALARY FROM EMPLOYEE1 GROUP BY DEPARTMENT ORDER BY AVG(SALARY);

--47 . Get department wise maximum salary from "EmployeeDetail" table order by salary ascending 

SELECT DEPARTMENT,MAX(SALARY) MAXSALARY FROM EMPLOYEE1 GROUP BY DEPARTMENT ORDER BY MAX(SALARY);

--SELECT * FROM EMPLOYEE1 ORDER BY DEPARTMENT,SALARY DESC;

--48.	Get department wise minimum salary from "EmployeeDetail" table order by salary ascending 

SELECT DEPARTMENT,MIN(SALARY) MINSALARY FROM EMPLOYEE1 GROUP BY DEPARTMENT ORDER BY MIN(SALARY);