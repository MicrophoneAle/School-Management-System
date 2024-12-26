-- Store Procedure sp_insertdepartment
# change the delimiter to $$, so you can use semicolon in create procedure 
DELIMITER $$
DROP PROCEDURE IF EXISTS sp_insertdepartment$$

CREATE PROCEDURE sp_insertdepartment
(
IN Dept_Desc_ VARCHAR(100)
)

BEGIN

INSERT INTO Department
( Dept_Desc) VALUES
(Dept_Desc_);

END ; $$

-- Store Procedure sp_updatedepartment

DELIMITER $$
DROP PROCEDURE IF EXISTS sp_updatedepartment$$

CREATE PROCEDURE sp_updatedepartment
(IN DeptID_	INT
,IN Dept_Desc_ VARCHAR(100)
)

BEGIN

UPDATE Department
	SET  Dept_Desc = Dept_Desc_
	where DeptID = DeptID_ ;

END ; $$

-- Store Procedure sp_insertcourse

DELIMITER $$
DROP PROCEDURE IF EXISTS sp_insertcourse$$

CREATE PROCEDURE sp_insertcourse
(IN CourseID_ varchar(100)
, IN Course_Section_ VARCHAR(100) 
, IN Course_Desc_ VARCHAR(100)
, IN Grade_ INT 
, IN Department_ INT
)

BEGIN

INSERT INTO Course
(CourseID, Course_Section, Course_Desc, Grade, Department, IsActive) VALUES
(CourseID_, Course_Section_, Course_Desc_, Grade_, Department_, 1);

END ; $$

-- Store Procedure sp_updatecourse

DELIMITER $$
DROP PROCEDURE IF EXISTS sp_updatecourse$$

CREATE PROCEDURE sp_updatecourse
(IN CourseID_ varchar(100)
, IN Course_Section_ VARCHAR(100) 
, IN Course_Desc_ VARCHAR(100)
, IN Grade_ INT 
, IN Department_ INT
, IN IsActive_	INT
)

BEGIN

UPDATE Course
	SET  Course_Section = Course_Section_
	, Course_Desc = Course_Desc_
	, Grade = Grade_
	, Department = Department_
	, IsActive = IsActive_
	where CourseID = CourseID_ ;

END ; $$


-- Store Procedure sp_insertstudent

DELIMITER $$
DROP PROCEDURE IF EXISTS sp_insertstudent$$

CREATE PROCEDURE sp_insertstudent
(IN firstname_ varchar(100)
, IN lastname_ 	VARCHAR(100) 
, IN Password_ 	VARCHAR(100)
)
BEGIN

INSERT INTO student 
(Firstname, Lastname, login_pwd , IsActive, CreatedOn) VALUES 
(firstname_, lastname_, Password_, 1, CURDATE()) ;

END ; $$

-- Store Procedure sp_updatestudent 

DELIMITER $$
DROP PROCEDURE IF EXISTS sp_updatestudent$$

CREATE PROCEDURE sp_updatestudent
( IN studentNumber_	INT
, IN firstname_ varchar(100)
, IN lastname_ VARCHAR(100) 
, IN Password_ VARCHAR(100)
, IN IsActive_	INT
)
BEGIN

UPDATE STUDENT
	SET  Firstname = firstname_
	, Lastname = lastname_
	, login_pwd = Password_
	, IsActive = IsActive_
        , CreatedOn = CURDATE()
	where StudentNumber = studentNumber_ ;
END ; $$

-- Store Procedure sp_insertstudentdetail

DELIMITER $$
DROP PROCEDURE IF EXISTS sp_insertstudentdetail$$

CREATE PROCEDURE sp_insertstudentdetail
(
 IN studentNumber_ INT
,IN firstname_	Varchar(100)
, IN lastname_	VARCHAR(100) 
, IN department_ INT
, IN gender_ 	VARCHAR(100) 
, IN grade_ 	VARCHAR(100) 
, IN email_ 	VARCHAR(100) 
, IN phone_ 	VARCHAR(100) 
, IN address_ 	VARCHAR(100) 
)

BEGIN

	INSERT INTO Student_Detail
	(StudentNumber, Firstname, Lastname, Department, Gender, Grade, Email, Phone, Address) VALUES 
	(studentNumber_ , firstname_, lastname_, department_,  gender_, grade_, email_, phone_, address_) ;

END ; $$

-- Store Procedure sp_updatestudentdetail

DELIMITER $$
DROP PROCEDURE IF EXISTS sp_updatestudentdetail$$

CREATE PROCEDURE sp_updatestudentdetail
(
 IN studentNumber_ INT
,IN firstname_	Varchar(100)
, IN lastname_	VARCHAR(100) 
, IN department_ INT
, IN gender_ 	VARCHAR(100) 
, IN grade_ 	VARCHAR(100) 
, IN email_ 	VARCHAR(100) 
, IN phone_ 	VARCHAR(100) 
, IN address_ 	VARCHAR(100) 
)

BEGIN

	UPDATE STUDENT_DETAIL
	SET  Firstname = firstname_
	, Lastname = lastname_
	, Department = department_
	, Gender = gender_
	, Grade = grade_
	, Email = email_
	, Phone = phone_
	, Address = address_ 
	where StudentNumber = studentNumber_ ;

END ; $$

-- Store Procedure sp_insertteacher

DELIMITER $$
DROP PROCEDURE IF EXISTS sp_insertteacher$$

CREATE PROCEDURE sp_insertteacher
( IN firstname_ varchar(100)
, IN lastname_ 	VARCHAR(100) 
, IN Password_ 	VARCHAR(100)
)
BEGIN

INSERT INTO Teacher 
(Firstname, Lastname, login_pwd, CreatedOn) VALUES 
(firstname_, lastname_, Password_, CURDATE());

END ; $$

-- Store Procedure sp_updateteacher

DELIMITER $$
DROP PROCEDURE IF EXISTS sp_updateteacher$$

CREATE PROCEDURE sp_updateteacher
(IN TeacherID_	INT
, IN firstname_ varchar(100)
, IN lastname_ 	VARCHAR(100) 
, IN Password_ 	VARCHAR(100)
)
BEGIN

UPDATE Teacher
	SET  Firstname = firstname_
	, Lastname = lastname_
	, login_pwd = Password_
	, CreatedOn = CURDATE()
	where TeacherID = TeacherID_ ;
 
END ; $$

-- Store Procedure sp_insertteacherdetail 

DELIMITER $$
DROP PROCEDURE IF EXISTS sp_insertteacherdetail$$

CREATE PROCEDURE sp_insertteacherdetail
(IN TeacherID	INT
, IN DeptID_ INT
, IN firstname_	Varchar(100)
, IN lastname_	VARCHAR(100) 
, IN gender_ 	VARCHAR(100) 
, IN email_ 	VARCHAR(100) 
, IN phone_ 	VARCHAR(100) 
, IN address_ 	VARCHAR(100) 
)

BEGIN

INSERT INTO Teacher_detail
(TeacherID, DeptID, Firstname, Lastname, Gender, Email, Phone, Address) VALUES 
(TeacherID_, DeptID_, firstname_, lastname_, gender_, email_, phone_, address_);

END ; $$

-- Store Procedure sp_updateteacherdetail 

DELIMITER $$
DROP PROCEDURE IF EXISTS sp_updateteacherdetail$$

CREATE PROCEDURE sp_updateteacherdetail
(IN TeacherID	INT
, IN DeptID_ INT
, IN firstname_	Varchar(100)
, IN lastname_	VARCHAR(100) 
, IN gender_ 	VARCHAR(100) 
, IN email_ 	VARCHAR(100) 
, IN phone_ 	VARCHAR(100) 
, IN address_ 	VARCHAR(100) 
)

BEGIN

UPDATE Teacher_detail
	SET  Firstname = firstname_
	, Lastname = lastname_
	, DeptID = DeptID_
	, Gender = gender_
	, Email = email_
	, Phone = phone_
	, Address = address_ 
	where TeacherID = TeacherID_ ;

END ; $$

-- Store Procedure sp_insertteachercourse 

DELIMITER $$
DROP PROCEDURE IF EXISTS sp_insertteachercourse$$

CREATE PROCEDURE sp_insertteachercourse
( IN TeacherID_		INT
, IN DeptID_		INT
, IN CourseID_ 		VARCHAR(100)
, IN Course_Section_ 	VARCHAR(100) 
, IN CourseYear_	INT
)
BEGIN

INSERT INTO Teacher_Course 
(TeacherID, DeptID, CourseID, Course_Section, CourseYear, IsActive, CreatedOn) VALUES 
(TeacherID_, DeptID_, CourseID_, Course_Section_, CourseYear_, 1, CURDATE()) ;

END ; $$

-- Store Procedure sp_updateteachercourse 

DELIMITER $$
DROP PROCEDURE IF EXISTS sp_updateteachercourse$$

CREATE PROCEDURE sp_updateteachercourse
(IN SeqID_			INT
, IN TeacherID_		INT
, IN DeptID_		INT
, IN CourseID_ 		VARCHAR(100)
, IN Course_Section_ 	VARCHAR(100) 
, IN CourseYear_	INT
, IN IsActive_		INT
)
BEGIN

UPDATE Teacher_Course
	SET  TeacherID = TeacherID_
	, DeptID = DeptID_
	, CourseID = CourseID_
	, Course_Section = Course_Section_
	, CourseYear = CourseYear_
	, IsActive = IsActive_
	, CreatedOn = CURDATE()
	where SeqID = SeqID_ ;

END ; $$

-- Store Procedure sp_insertstudentmark 

DELIMITER $$
DROP PROCEDURE IF EXISTS sp_insertstudentmark$$

CREATE PROCEDURE sp_insertstudentmark
( IN StudentNumber_	INT
, IN CourseID_		VARCHAR(100)
, IN CourseYear_ 	VARCHAR(100)
, IN Mark_ 			INT 
)
BEGIN

INSERT INTO Student_Mark 
(StudentNumber, CourseID, CourseYear, Mark, CreatedOn) VALUES 
(StudentNumber_, CourseID_, CourseYear_, Mark_, CURDATE()) ;

END ; $$

-- Store Procedure sp_updatestudentmark 

DELIMITER $$
DROP PROCEDURE IF EXISTS sp_updatestudentmark$$

CREATE PROCEDURE sp_updatestudentmark
(IN SeqID			INT
, IN StudentNumber_	INT
, IN CourseID_		VARCHAR(100)
, IN CourseYear_ 	VARCHAR(100)
, IN Mark_ 			INT 
)
BEGIN

UPDATE Student_Mark
	SET  StudentNumber = StudentNumber_
	, CourseID = CourseID_
	, CourseYear = CourseYear_
	, CreatedOn = CURDATE()
	where SeqID = SeqID_ ;
    
END ; $$

-- Store Procedure sp_insertstudentcourse 

DELIMITER $$
DROP PROCEDURE IF EXISTS sp_insertstudentcourse$$

CREATE PROCEDURE sp_insertstudentcourse
( IN StudentNumber_		INT
, IN DeptID_		INT
, IN CourseID_ 		VARCHAR(100)
, IN Course_Section_ 	VARCHAR(100) 
, IN CourseYear_	INT
)
BEGIN

INSERT INTO student_Course 
(StudentNumber_, DeptID, CourseID, Course_Section, CourseYear, CreatedOn, IsActive) VALUES 
(StudentNumber_, DeptID_, CourseID_, Course_Section_, CourseYear_, CURDATE(), 1) ;

END ; $$

-- Store Procedure sp_updatestudentcourse 

DELIMITER $$
DROP PROCEDURE IF EXISTS sp_updatestudentcourse$$

CREATE PROCEDURE sp_updatestudentcourse
( IN SeqID			INT
, IN DeptID_		INT
, IN CourseID_ 		VARCHAR(100)
, IN Course_Section_ 	VARCHAR(100) 
, IN CourseYear_	INT
, IN IsActive_		INT
)
BEGIN

UPDATE Student_Course
	SET  DeptID = DeptID_
	, CourseID = CourseID_
	, Course_Section = Course_Section_
	, CourseYear = CourseYear_
    , IsActive = IsActive_
	, CreatedOn = CURDATE()
	where SeqID = SeqID_ ;
 
END ; $$