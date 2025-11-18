--27). Get all employee details from EmployeeDetail table whose joining year is 2013. 

SELECT * FROM EMPLOYEE1;

SELECT * FROM EMPLOYEE1 WHERE DATEPART(YYYY,JoiningDate)='2020';
SELECT * FROM EMPLOYEE1 WHERE DATEPART(YEAR,JoiningDate)='2020';


--28). Get all employee details from EmployeeDetail table whose joining month is Jan(1). 

SELECT * FROM EMPLOYEE1 WHERE DATEPART(MM,JOININGDATE)='1';

SELECT * FROM EMPLOYEE1 WHERE DATEPART(MONTH,JOININGDATE)='1';

--29). Get all employee details from EmployeeDetail table whose joining date between "2021-01-01" and "2013-12-01". 

SELECT * FROM EMPLOYEE1;

SELECT * FROM EMPLOYEE1 WHERE JoiningDate BETWEEN '2021-1-1' AND '2022-12-1';

--30). Get how many employee exist in "EmployeeDetail" table. 

SELECT COUNT(*) FROM EMPLOYEE1;