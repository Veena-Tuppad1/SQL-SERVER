-- Step 1: Create Employee table
CREATE TABLE Employee (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Department NVARCHAR(50),
    DateOfJoining DATE
);

-- Step 2: Create ProjectDetails table
CREATE TABLE ProjectDetails (
    ProjectID INT IDENTITY(1,1) PRIMARY KEY,
    ProjectName NVARCHAR(100),
    EmployeeID INT,
    Role NVARCHAR(50),
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

-- Step 3: Insert 100 employees
DECLARE @i INT = 1;

WHILE @i <= 100
BEGIN
    INSERT INTO Employee (FirstName, LastName, Department, DateOfJoining)
    SELECT 
        CHOOSE((@i % 10) + 1, 'John','Mary','David','Sophia','James','Olivia','Daniel','Ava','Michael','Emma'),
        CHOOSE((@i % 10) + 1, 'Smith','Johnson','Brown','Taylor','Anderson','Thomas','Jackson','White','Harris','Martin'),
        CHOOSE((@i % 5) + 1, 'HR','Finance','IT','Marketing','Operations'),
        DATEADD(DAY, - (ABS(CHECKSUM(NEWID())) % 2000), GETDATE());
    SET @i += 1;
END;

-- Step 4: Define shared projects
DECLARE @Projects TABLE (ProjectName NVARCHAR(100));
INSERT INTO @Projects (ProjectName)
VALUES ('Project Alpha'), ('Project Beta'), ('Project Gamma'), ('Project Delta');

-- Step 5: Randomly assign some employees to projects (leave others unassigned)
DECLARE @empID INT = 1;
DECLARE @projCount INT = (SELECT COUNT(*) FROM @Projects);

WHILE @empID <= 100
BEGIN
    -- 70% chance employee gets assigned to a project
    IF (ABS(CHECKSUM(NEWID())) % 100) < 70
    BEGIN
        DECLARE @projIndex INT = (ABS(CHECKSUM(NEWID())) % @projCount) + 1;
        DECLARE @role NVARCHAR(50) = CHOOSE((@empID % 5) + 1, 'Developer','Analyst','Manager','Tester','Consultant');
        DECLARE @start DATE = DATEADD(DAY, - (ABS(CHECKSUM(NEWID())) % 1000), GETDATE());

        INSERT INTO ProjectDetails (ProjectName, EmployeeID, Role, StartDate, EndDate)
        SELECT 
            (SELECT ProjectName FROM (
                SELECT ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS rn, ProjectName 
                FROM @Projects
            ) AS P WHERE rn = @projIndex),
            @empID,
            @role,
            @start,
            DATEADD(DAY, (ABS(CHECKSUM(NEWID())) % 300), @start);
    END
    SET @empID += 1;
END;

-- Step 6: Verify data
SELECT COUNT(*) AS TotalEmployees FROM Employee;
SELECT COUNT(*) AS EmployeesAssignedToProjects FROM ProjectDetails;
SELECT TOP 10 * FROM Employee;
SELECT TOP 10 * FROM ProjectDetails;


--Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for those employee which have assigned project already. 

SELECT FirstName,ProjectName from Employee e inner join ProjectDetails p on e.EmployeeID=p.EmployeeID order by FirstName;


--52.	Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for all employee even they have not assigned project. 

SELECT FirstName,ProjectName from Employee e Left Join ProjectDetails p on e.EmployeeID=p.EmployeeID order by FirstName;

