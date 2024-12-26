---- Create CONSTRAINT and FOREIGN KEY
ALTER TABLE course
ADD CONSTRAINT FK_course FOREIGN KEY (DeptID) REFERENCES Department(DeptID);

ALTER TABLE student_course
ADD CONSTRAINT FK_studentcourse1 FOREIGN KEY (CourseID) REFERENCES course(CourseID),
ADD CONSTRAINT FK_studentcourse2 FOREIGN KEY (studentnumber) REFERENCES student(studentnumber);

ALTER TABLE student_detail
ADD CONSTRAINT FK_studentdetail FOREIGN KEY (DeptID) REFERENCES Department(DeptID);

ALTER TABLE student_mark
ADD CONSTRAINT FK_studentmark1 FOREIGN KEY (StudentNumber) REFERENCES student(StudentNumber),
ADD CONSTRAINT FK_studentmark2 FOREIGN KEY (CourseID) REFERENCES course(CourseID);

ALTER TABLE teacher_course
ADD CONSTRAINT FK_teachercourse1 FOREIGN KEY (CourseID) REFERENCES course(CourseID),
ADD CONSTRAINT FK_teachercourse2 FOREIGN KEY (TeacherID) REFERENCES teacher(TeacherID);

ALTER TABLE teacher_detail
ADD CONSTRAINT FK_teacherdetail FOREIGN KEY (DeptID) REFERENCES Department(DeptID);
