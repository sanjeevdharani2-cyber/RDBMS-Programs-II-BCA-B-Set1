CREATE TABLE Employee (
    EmployeeID NUMBER(5) PRIMARY KEY,
    EmployeeName VARCHAR2(20) NOT NULL,
    Department VARCHAR2(20),
    Salary NUMBER(10,2)
);

Insert records
INSERT INTO Employee VALUES (101, 'Ravi', 'HR', 25000);
INSERT INTO Employee VALUES (102, 'Meena', 'IT', 40000);
INSERT INTO Employee VALUES (103, 'Kumar', 'Finance', 35000);
INSERT INTO Employee VALUES (104, 'Suresh', 'IT', 45000);
INSERT INTO Employee VALUES (105, 'Latha', 'HR', 30000);

COUNT()
SELECT COUNT(Salary) AS Total_Employees
FROM Employee;

MAX()
SELECT MAX(Salary) AS Maximum_Salary
FROM Employee;

MIN()
SELECT MIN(Salary) AS Minimum_Salary
FROM Employee;

AVG()
SELECT AVG(Salary) AS Average_Salary
FROM Employee;

All functions in one query
SELECT
    COUNT(Salary) AS Total_Employees,
    MAX(Salary) AS Maximum_Salary,
    MIN(Salary) AS Minimum_Salary,
    AVG(Salary) AS Average_Salary
FROM Employee;
