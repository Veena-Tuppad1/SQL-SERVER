select * from Employees order by salary desc;


WITH Result As(
                  select salary,DENSE_RANK() OVER (Order by Salary DESC ) as denserank from Employees
			  )

select top 1 Salary from Result where result.denserank=3;



/*To find nth highest salary using CTE
WITH RESULT AS
(
    SELECT SALARY,
           DENSE_RANK() OVER (ORDER BY SALARY DESC) AS DENSERANK
    FROM EMPLOYEES
)
SELECT TOP 1 SALARY
FROM RESULT
WHERE DENSERANK = N 


To find 2nd highest salary we can use any of the above queries. Simple replace N with 2. 

Similarly, to find 3rd highest salary, simple replace N with 3. */