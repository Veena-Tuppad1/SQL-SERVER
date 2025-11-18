SELECT * FROM EMPLOYEE;

SELECT * FROM ProjectDetails;

--51.	Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for those employee which have assigned project already. 

SELECT FIRSTNAME,PROJECTNAME FROM EMPLOYEE e INNER JOIN ProjectDetails p on e.EmployeeID=p.EmployeeID order by firstname;

--52.	Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for all employee even they have not assigned project. 

SELECT FIRSTNAME,PROJECTNAME FROM EMPLOYEE e LEFT JOIN ProjectDetails p ON e.EmployeeID=p.EmployeeID  order by FirstName;


