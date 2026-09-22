CREATE TABLE Course (
    CourseID NUMBER(5) PRIMARY KEY,
    CourseName VARCHAR2(30) NOT NULL,
    Credits NUMBER(2)
);

Insert Course records
INSERT INTO Course VALUES (201, 'Database Systems', 4);
INSERT INTO Course VALUES (202, 'Data Structures', 3);
INSERT INTO Course VALUES (203, 'Mathematics', 4);

Create Enrollment table
CREATE TABLE Enrollment (
    EnrollmentID NUMBER(5) PRIMARY KEY,
    StudentID NUMBER(5),
    CourseID NUMBER(5),
    CONSTRAINT fk_enrollment_course
        FOREIGN KEY (CourseID)
        REFERENCES Course(CourseID)
);

Insert Enrollment records
INSERT INTO Enrollment VALUES (1, 1001, 201);
INSERT INTO Enrollment VALUES (2, 1001, 202);
INSERT INTO Enrollment VALUES (3, 1002, 203);
INSERT INTO Enrollment VALUES (4, 1003, 201);

LEFT JOIN
SELECT
    C.CourseID,
    C.CourseName,
    C.Credits,
    E.EnrollmentID,
    E.StudentID
FROM Course C
LEFT JOIN Enrollment E
ON C.CourseID = E.CourseID;

RIGHT JOIN
SELECT
    C.CourseID,
    C.CourseName,
    C.Credits,
    E.EnrollmentID,
    E.StudentID
FROM Course C
RIGHT JOIN Enrollment E
ON C.CourseID = E.CourseID;
