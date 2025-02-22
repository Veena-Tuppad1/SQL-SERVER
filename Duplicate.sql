select * from Employee;

Select FirstName,LastName,Count(*) From dbo.Employee Group By FirstName,LastName


Select FirstName,LastName,Count(*)  as countc From dbo.Employee Group By FirstName,LastName Having Count(*)>1   

Select * from dbo.Employee order by FirstName,LastName;

Select Max(E_Id),FirstName,LastName from dbo.Employee Group By FirstName, LastName

Delete From Employee where E_Id not in (Select Max(E_Id) from dbo.Employee Group By FirstName, LastName)