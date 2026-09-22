CREATE TABLE Course (
    CourseID NUMBER(5) PRIMARY KEY,
    CourseName VARCHAR2(30) NOT NULL,
    Credits NUMBER(2),
    DepartmentID NUMBER(5),
    CONSTRAINT fk_course_department
        FOREIGN KEY (DepartmentID)
        REFERENCES Department(DepartmentID)
);
SELECT * FROM Course;
DESCRIBE Department;

DESCRIBE Student;

DESCRIBE Course;
