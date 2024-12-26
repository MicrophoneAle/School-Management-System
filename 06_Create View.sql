-- Create View: List student average mark by year

CREATE OR REPLACE View Average_byStudent_byYear as
SELECT stuMark.StudentNumber as Student_Number, 
CONCAT(studetial.Firstname, ' ', studetial.Lastname) as Student_Name , 
AVG(MARK) as Average_Mark, 
stuMark.COURSEYEAR as Course_Year
FROM STUDENT_MARK stuMark, STUDENT_DETAIL studetial 
WHERE stuMark.StudentNumber = studetial.StudentNumber
GROUP BY stuMark.StudentNumber, studetial.Firstname, studetial.Lastname, stuMark.COURSEYEAR
ORDER BY stuMark.COURSEYEAR, studetial.Lastname ;

-- Create View: List students in course_section 

CREATE OR REPLACE View students_in_course_section as
SELECT stuCourse.Course_Section
, (select  course.course_desc from course 
   where course.courseID  = stuCourse.courseID 
   and course.Course_Section = stuCourse.Course_Section) 
   as Course_Description
, stuCourse.StudentNumber as Student_Number, 
  (select CONCAT(student.Firstname, ' ', student.Lastname) 
   from student 
   where student.StudentNumber = stuCourse.StudentNumber) 
   as Student_Name 
, stuCourse.COURSEYEAR as Course_Year
, (select CONCAT(teacher.Firstname, ' ', teacher.Lastname) 
   from teacher 
   where teacher.TeacherID = teaCourse.TeacherID) 
   as Teacher_Name 
FROM student_course stuCourse, teacher_course teaCourse
WHERE stuCourse.CourseID = teaCourse.CourseID
and stuCourse.Course_Section = teaCourse.Course_Section
and stuCourse.CourseYear = teaCourse.CourseYear
ORDER BY stuCourse.COURSEYEAR, stuCourse.courseID, stuCourse.Course_Section, stuCourse.StudentNumber ;
