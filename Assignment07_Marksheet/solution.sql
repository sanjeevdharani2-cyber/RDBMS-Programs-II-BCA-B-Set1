CREATE TABLE Marksheet (
    RollNo NUMBER(5) PRIMARY KEY,
    Name VARCHAR2(20) NOT NULL,
    Department VARCHAR2(20),
    Marks NUMBER(3)
);
SELECT *
FROM Marksheet
WHERE Marks > 80
ORDER BY Marks DESC;
