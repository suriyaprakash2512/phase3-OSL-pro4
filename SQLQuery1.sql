create database Rainbowschool4Db
use RainbowSchool4Db


CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),

);

INSERT INTO Students (StudentId,FirstName, LastName) VALUES 
(1,'John', 'Doe'),
(2,'Jane', 'Smith'),
(3,'Bob', 'Johnson');




CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY,
    SubjectName NVARCHAR(50),  
);

INSERT INTO Subjects (SubjectId,SubjectName) VALUES
(1,'Math'),
(2,'Science'),
(3,'History');


CREATE TABLE Marks (
    MarkID INT PRIMARY KEY,
    StudentID INT,
    SubjectID INT,
    Mark INT,
    CONSTRAINT FK_StudentID FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    CONSTRAINT FK_SubjectID FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID)   
);

INSERT INTO Marks (MarkID,StudentID, SubjectID, Mark) VALUES
(1,1, 1, 90),
(2,1, 2, 85),
(3,2, 1, 78),
(4,2, 2, 92),
(5,3, 3, 88);

select * from Students
select * from Subjects
select�*�from�Marks