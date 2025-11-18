CREATE TABLE Employee1 (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Department NVARCHAR(50),
    Salary DECIMAL(10,2),
    JoiningDate DATE
);

INSERT INTO Employee1 (FirstName, LastName, Department, Salary, JoiningDate) VALUES
('John', 'Smith', 'HR', 40000, '2021-01-15'),
('Jane', 'Doe', 'Finance', 45000, '2020-03-20'),
('Mike', 'Johnson', 'IT', 50000, '2019-07-10'),
('Emily', 'Brown', 'Sales', 42000, '2022-02-05'),
('David', 'Wilson', 'HR', 41000, '2021-11-12'),
('Sarah', 'Taylor', 'Finance', 46000, '2020-06-18'),
('Chris', 'Anderson', 'IT', 52000, '2019-10-25'),
('Laura', 'Thomas', 'Sales', 43000, '2022-01-08'),
('James', 'Jackson', 'Marketing', 47000, '2021-05-30'),
('Olivia', 'White', 'HR', 44000, '2020-09-14'),
('Liam', 'Harris', 'Finance', 48000, '2019-08-22'),
('Emma', 'Martin', 'IT', 53000, '2021-12-03'),
('Noah', 'Thompson', 'Sales', 45000, '2022-04-16'),
('Ava', 'Garcia', 'Marketing', 49000, '2020-02-27'),
('Mason', 'Martinez', 'HR', 41000, '2021-07-09'),
('Sophia', 'Robinson', 'Finance', 46000, '2019-05-19'),
('Ethan', 'Clark', 'IT', 54000, '2022-03-10'),
('Isabella', 'Rodriguez', 'Sales', 42000, '2021-08-28'),
('Logan', 'Lewis', 'Marketing', 47000, '2020-12-11'),
('Mia', 'Lee', 'HR', 43000, '2019-11-05');


SELECT * FROM EMPLOYEE1;
