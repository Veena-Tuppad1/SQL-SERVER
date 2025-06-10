SELECT * FROM Employees order by salary desc;

SELECT DISTINCT TOP 2 SALARY FROM Employees ORDER BY SALARY
--4th Higest salary
select top 1 salary from(SELECT DISTINCT TOP 4 SALARY FROM Employees ORDER BY SALARY desc)Result order by salary;


/*To find nth highest salary using Sub-Query
SELECT TOP 1 SALARY
FROM (
      SELECT DISTINCT TOP N SALARY
      FROM EMPLOYEES
      ORDER BY SALARY DESC
      ) RESULT
ORDER BY SALARY */

