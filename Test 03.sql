CREATE DATABASE Studentlist
GO

USE Studentlist
GO

CREATE TABLE Class(
   ClassID int IDENTITY PRIMARY KEY,
   ClassName nvarchar(60) NOT NULL
)
GO

CREATE TABLE Subjects(
   SubjectID int IDENTITY PRIMARY KEY,
   SubjectName nvarchar(100) NOT NULL
)
GO

CREATE TABLE Status(
   StatusID int IDENTITY PRIMARY KEY,
   StatusName nvarchar(155)
)
GO

CREATE TABLE Student(
   StudentID int IDENTITY PRIMARY KEY,
   StudentName nvarchar(255),
   Birthday date,
   Address nvarchar(155)
)
GO

CREATE TABLE Studentlist1(
   StudentID int FOREIGN KEY REFERENCES Student(StudentID),
   ClassID int FOREIGN KEY REFERENCES Class(ClassID),
   SubjectID int FOREIGN KEY REFERENCES Subjects(SubjectID),
   StatusID int FOREIGN KEY REFERENCES Status(StatusID),
   Start date ,
   EndSj date
)
GO
--Thêm dữ liệu
INSERT INTO Class(ClassName) VALUES
   ('10A1'),
   ('10A2'),
   ('10A3'),
   ('10A4'),
   ('10A5'),
   ('10A6')
GO
SELECT * FROM Class

INSERT INTO Subjects(SubjectName) VALUES
   ('Math'),
   ('English'),
   ('Biological'),
   ('Chemistry'),
   ('Arts'),
   ('History')
GO
SELECT * FROM Subjects
GO

INSERT INTO Status(StatusName) VALUES
   (N'Hoàn Thành'),
   (N'Học Lại Môn'),
   (N'Bảo Lưu')
GO
SELECT * FROM Status
GO

INSERT INTO Student(StudentName,Birthday,Address) VALUES
   (N'Nguyễn Đức Anh','2003-11-11',N'10D Ngõ 134 Bạch Mai'),
   (N'Nguyễn Minh Anh','2003-12-11',N'13E Ngõ 124 Kim Ngưu'),
   (N'Nguyễn Tuấn Minh','2003-1-5',N'24D Ngõ 11 Lĩnh Nam'),
   (N'Nguyễn Minh Đức','2003-2-3',N'45D Ngõ 1E Hoàng Kiếm'),
   (N'Trần Đức Minh','2003-6-15',N'24B Ngõ 123 Bạch Mai'),
   (N'Phạm Ngọc Anh','2003-10-10',N'1D Ngõ 133 Phúc Tân')
GO
SELECT * FROM Student
GO

INSERT INTO Studentlist1(ClassID,StudentID,SubjectID,StatusID,Start,EndSj) VALUES
   (4,4,2,2,'2021-01-02','2021-03-02'),
   (2,2,2,2,'2021-03-02','2021-04-02'),
   (3,3,3,3,'2021-03-02','2021-04-02')
GO
SELECT * FROM Studentlist1
  
