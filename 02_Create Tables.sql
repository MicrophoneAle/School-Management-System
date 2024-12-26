--- Table Department

DROP TABLE IF EXISTS Department;

CREATE TABLE Department (
DeptID		INT NOT NULL,
Dept_Desc 	VARCHAR(100) NOT NULL,
PRIMARY KEY (DeptID));


--- Table Admin_User

DROP TABLE IF EXISTS Admin_User;

CREATE TABLE Admin_User (
UserName	VARCHAR(100) NOT NULL,
Firstname 	VARCHAR(100) NOT NULL,
Lastname 	VARCHAR(100) NOT NULL,
login_pwd 	VARBINARY(200) NULL,
CreatedOn 	DATETIME NOT NULL,
PRIMARY KEY (UserName));

--- Table Student

DROP TABLE IF EXISTS Student;

CREATE TABLE Student (
StudentNumber	INT NOT NULL,
Firstname 	VARCHAR(100) NOT NULL,
Lastname 	VARCHAR(100) NOT NULL,
login_pwd 	VARBINARY(200) NULL,
IsActive	INT NOT NULL,
CreatedOn 	DATETIME  NULL,
PRIMARY KEY (StudentNumber));


--- Table Student_Detail

DROP TABLE IF EXISTS Student_Detail;

CREATE TABLE Student_Detail (
StudentNumber	INT NOT NULL,
Firstname 	VARCHAR(100) NULL,
Lastname 	VARCHAR(100) NULL,
DeptID		INT NULL,
Gender		VARCHAR(100) NULL,
Grade		VARCHAR(100) NULL,
Email 		VARCHAR(100) NULL,
Phone		VARCHAR(100) NULL,
Address		VARCHAR(1000) NULL,
PRIMARY KEY (StudentNumber));


--- Table Course

DROP TABLE IF EXISTS Course;

CREATE TABLE Course (
CourseID 	VARCHAR(100) NOT NULL,
Course_Section 	VARCHAR(100) NOT NULL,
Course_Desc 	VARCHAR(1000) NOT NULL,
Grade	 	INT NOT NULL,
DeptID	 	INT NOT NULL,
IsActive	INT NOT NULL,
PRIMARY KEY (CourseID));


--- Table Teacher

DROP TABLE IF EXISTS Teacher;

CREATE TABLE Teacher (
TeacherID	INT NOT NULL,
Firstname 	VARCHAR(100) NOT NULL,
Lastname 	VARCHAR(100) NOT NULL,
login_pwd 	VARBINARY(200) NULL,
IsActive	INT NOT NULL,
CreatedOn 	DATETIME NOT NULL,
PRIMARY KEY (TeacherID));

--- Table Teacher_detail

DROP TABLE IF EXISTS Teacher_detail;

CREATE TABLE Teacher_detail (
TeacherID 	INT NOT NULL,
DeptID		INT NOT NULL,
Firstname 	VARCHAR(100) NULL,
Lastname 	VARCHAR(100) NULL,
Gender		VARCHAR(100) NULL,
Email 		VARCHAR(100) NULL,
Phone		VARCHAR(100) NULL,
Address		VARCHAR(1000) NULL,
PRIMARY KEY (TeacherID));

---- Table Teacher_Course

DROP TABLE IF EXISTS Teacher_Course;

CREATE TABLE Teacher_Course (
SeqID		INT NOT NULL,
TeacherID 	INT NOT NULL,
DeptID		INT NOT NULL,
CourseID 	VARCHAR(100) NOT NULL,
Course_Section  VARCHAR(100) NOT NULL,
CourseYear      INT Not Null,
IsActive	INT NOT NULL,
CreatedOn 	DATETIME NULL,
PRIMARY KEY (SeqID));

---- Table Student_Course

DROP TABLE IF EXISTS Student_Course;

CREATE TABLE Student_Course (
SeqID		INT NOT NULL,
StudentNumber 	INT NOT NULL,
DeptID		INT NOT NULL,
CourseID 	VARCHAR(100) NOT NULL,
Course_Section  VARCHAR(100) NOT NULL,
CourseYear      INT Not Null,
CreatedOn 	DATETIME NULL,
IsActive	INT NOT NULL,
PRIMARY KEY (SeqID));

---- Table Student_Mark

DROP TABLE IF EXISTS Student_Mark;

CREATE TABLE Student_Mark (
SeqID		INT NOT NULL,
StudentNumber 	INT NOT NULL,
CourseID 	VARCHAR(100) NOT NULL,
CourseYear      INT Not Null,
Mark		INT Not Null,
CreatedOn 	DATETIME NULL,
PRIMARY KEY (SeqID));