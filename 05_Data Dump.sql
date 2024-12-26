--- AES key: A625b13a9207Y336bt2kD21A390C3d9j

--- Table Department

INSERT INTO Department
(DeptID, Dept_Desc) VALUES
(1, 'Chemistry'),
(2, 'English'),
(3, 'French'),
(4, 'Mathematics'),
(5, 'Music'),
(6, 'Physics');

--- Table Admin_User

INSERT INTO Admin_User 
(UserName, Firstname, Lastname, login_pwd, CreatedOn) VALUES 
('klee', 'Kevin', 'Lee', AES_ENCRYPT('pwd12345','A625b13a9207Y336bt2kD21A390C3d9j'), '2024-07-09'),
('asmith', 'Anna', 'Smith', AES_ENCRYPT('pwd12345','A625b13a9207Y336bt2kD21A390C3d9j'), '2024-07-10'),
('jzian', 'Jack', 'Zian', AES_ENCRYPT('pwd12345','A625b13a9207Y336bt2kD21A390C3d9j'), '2024-07-11');

--- Table Student

INSERT INTO student 
(StudentNumber, Firstname, Lastname, login_pwd, IsActive, CreatedOn) VALUES 
('15001', 'Avan', 'Smith', AES_ENCRYPT('pwd12345','A625b13a9207Y336bt2kD21A390C3d9j'), 1, '2024-07-09'),
('15002', 'Tina', 'Dang', AES_ENCRYPT('pwd12345','A625b13a9207Y336bt2kD21A390C3d9j'), 1, '2024-07-10'),
('15003', 'Steve', 'Darren', AES_ENCRYPT('pwd12345','A625b13a9207Y336bt2kD21A390C3d9j'), 1, '2024-07-11');

--- Table Student_Detail

INSERT INTO Student_Detail
(StudentNumber, Firstname, Lastname, DeptID, Gender, Grade, Email, Phone, Address) VALUES 
('15001', 'Avan', 'Smith', 1,  'M', '9', 'avan.smith@asch.com', '416-123-4567', '125 Calton Drive, Toronto'),
('15002', 'Tina', 'Dang', 2, 'F', '11', 'tina.dang@asch.com', '416-968-4525', '68 Bayview Avenue, Toronto'),
('15003', 'Steve', 'Darren', 3,  'M', '12', 'steve.darren@asch.com', '647-587-4581', '90 Steels Drive, Toronto');


--- Table Course

INSERT INTO Course
(CourseID, Course_Section, Course_Desc, Grade, DeptID, IsActive) VALUES
('Math167_1', 'M167_1', 'Algebra 1', 9, 4, 1),
('Math167_2', 'M167_2','Algebra 1', 9, 4, 1),
('Math168_1', 'M168_1', 'Algebra 2', 10, 4, 1),
('Math168_2', 'M168_2', 'Algebra 2', 10, 4, 1),
('Math169_1', 'M169_1', 'Calculus', 11, 4, 1),
('Math169_2', 'M169_2', 'Calculus', 11, 4, 1),
('Math170_1', 'M170_1','Advanced Calculus', 12, 4, 1),
('Math170_2', 'M170_2','Advanced Calculus', 12, 4, 1),
('Eng252_1', 'E252_1', 'Grade 9 English', 9, 2, 1),
('Eng252_2', 'E252_2', 'Grade 9 English', 9, 2, 1),
('Eng253_1',  'E253_1','Grade 10 English', 10, 2, 1),
('Eng253_2',  'E253_2','Grade 10 English', 10, 2, 1),
('Eng254_1', 'E254_1', 'Grade 11 English', 11, 2, 1),
('Eng255_1', 'E255_1', 'Grade 12 English', 12, 2, 1),
('Fre301_1', 'F301_1', 'Grade 9 French', 9, 3, 1),
('Fre301_2', 'F301_2', 'Grade 9 French', 9, 3, 1),
('Fre302_1', 'F302_1', 'Grade 10 French', 10, 3, 1),
('Fre302_2', 'F302_2', 'Grade 10 French', 10, 3, 1),
('Fre303_1', 'F303_1', 'Grade 11 French', 11, 3, 1),
('Fre303_2', 'F303_2', 'Grade 11 French', 11, 3, 1),
('Fre304_1', 'F304_1', 'Grade 12 French', 12, 3, 1),
('Fre304_2', 'F304_2', 'Grade 12 French', 12, 3, 1);



--- Table Teacher

INSERT INTO Teacher 
(TeacherID, Firstname, Lastname, login_pwd, IsActive, CreatedOn) VALUES 
('20001', 'Mary', 'Arnold', AES_ENCRYPT('pwd12345','A625b13a9207Y336bt2kD21A390C3d9j'), 1,  '2024-07-09'),
('20002', 'Mike', 'Rick', AES_ENCRYPT('pwd12345','A625b13a9207Y336bt2kD21A390C3d9j'), 1, '2024-07-10'),
('15003', 'Wincent', 'Williams', AES_ENCRYPT('pwd12345','A625b13a9207Y336bt2kD21A390C3d9j'), 1, '2024-07-11');

--- Table Teacher_detail

INSERT INTO Teacher_detail
(TeacherID, DeptID, Firstname, Lastname, Gender, Email, Phone, Address) VALUES 
(20001, 2, 'Mary', 'Arnold', 'F', 'mary.arnold@asch.com', '416-923-9067', '15 Allen Drive, Toronto'),
(20002, 3, 'Mike', 'Rick', 'M', 'mike.rick@asch.com', '416-097-3092', '5 Steels Road, Toronto'),
(20003, 4, 'Wincent', 'Williams', 'M', 'wincent.williams@asch.com', '647-905-2846', '189 Finch Street, Toronto');

---- Table Teacher_Course

INSERT INTO Teacher_Course 
(SeqID, TeacherID, DeptID, CourseID, Course_Section, CourseYear, IsActive,  CreatedOn) VALUES 
(1, '20001', 2, 'Eng252_2', 'E252_2', 2023, 1, '2022-07-09'),
(2, '20001', 2, 'Eng253_1', 'E253_1', 2024, 1,'2023-07-09'),
(3, '20002', 3, 'Fre303_1', 'F303_1', 2022, 1,'2021-07-09'),
(4, '20002', 3, 'Fre303_2', 'F303_2', 2023, 1,'2022-07-09'),
(5, '15003', 4, 'Math170_1', 'M170_1', 2023, 1,'2022-07-09');

---- Table Student_Course

INSERT INTO Student_Course 
(SeqID, StudentNumber, DeptID, CourseID, Course_Section, CourseYear, CreatedOn, IsActive) VALUES 
(1, 15001, 2, 'Eng252_2', 'E252_2', 2023, '2022-07-09', 1),
(2, 15001, 2, 'Eng253_1', 'E253_1', 2024, '2023-07-09', 1),
(3, 15002, 3, 'Fre303_1', 'F303_1', 2022, '2021-07-09', 1),
(4, 15002, 3, 'Fre303_2', 'F303_2', 2023, '2022-07-09', 1),
(5, 15003, 4, 'Math170_1', 'M170_1', 2023, '2022-07-09', 1);

---- Table Student_Mark

INSERT INTO Student_Mark 
(SeqID, StudentNumber, CourseID, CourseYear, Mark, CreatedOn) VALUES 
(1, 15001, 'Eng252_2', 2023, 95, '2023-07-09'),
(2, 15001, 'Eng253_1', 2024, 96, '2024-07-09'),
(3, 15002, 'Fre303_1', 2022, 89, '2022-07-09'),
(4, 15002, 'Fre303_2', 2023, 92, '2023-07-09'),
(5, 15003, 'Math170_1', 2023, 100, '2023-07-09');
