SELECT TOP 10 * FROM Employee;
SELECT TOP 10 * FROM ProjectDetails;


SELECT ProjectName,COUNT(*) AS EMPCOUNT FROM ProjectDetails GROUP BY ProjectName HAVING COUNT(*)>24;


--Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for those employee which have assigned project already. 

SELECT FirstName,ProjectName from Employee e INNER JOIN ProjectDetails p on e.EmployeeID=p.EmployeeID;

