-- FUNCTION IsAdminUser
DELIMITER $$
DROP FUNCTION IF EXISTS IsAdminUser ;
CREATE FUNCTION IsAdminUser(userName_ VARCHAR(100), pwd_ VARCHAR(100)) RETURNS BOOLEAN
DETERMINISTIC
BEGIN
  DECLARE isUser BOOLEAN DEFAULT FALSE ;
  DECLARE COUNT_ INT DEFAULT 0;

  SELECT COUNT(*) INTO COUNT_ FROM ADMIN_USER WHERE upper(trim(UserName)) = upper(trim(userName_))
  and trim(pwd_) =  trim(CAST(AES_DECRYPT(login_pwd,'A625b13a9207Y336bt2kD21A390C3d9j') AS CHAR (50)));

IF COUNT_ > 0 then
    set isUser = true;
else
    set isUser = false;
END IF;

return isUser ;

END; $$

-- FUNCTION IsActiveStudent

DROP FUNCTION IF EXISTS IsActiveStudent ;
CREATE FUNCTION IsActiveStudent(studentNumber_ INT, pwd_ VARCHAR(100)) RETURNS BOOLEAN
DETERMINISTIC
BEGIN
  DECLARE isUser BOOLEAN DEFAULT FALSE ;
  DECLARE COUNT_ INT DEFAULT 0;

  SELECT COUNT(*) INTO COUNT_ FROM STUDENT WHERE StudentNumber = upper(trim(studentNumber_))
  and trim(pwd_) =  trim(CAST(AES_DECRYPT(login_pwd,'A625b13a9207Y336bt2kD21A390C3d9j') AS CHAR (50)))
  and IsActive = 1;

IF COUNT_ > 0 then
    set isUser = true;
else
    set isUser = false;
END IF;

return isUser ;

END; $$

-- FUNCTION IsActiveTeacher

DROP FUNCTION IF EXISTS IsActiveTeacher ;
CREATE FUNCTION IsActiveTeacher(TeacherID_ INT, pwd_ VARCHAR(100)) RETURNS BOOLEAN
DETERMINISTIC
BEGIN
  DECLARE isUser BOOLEAN DEFAULT FALSE ;
  DECLARE COUNT_ INT DEFAULT 0;

  SELECT COUNT(*) INTO COUNT_ FROM STUDENT WHERE TeacherID = upper(trim(TeacherID_))
  and trim(pwd_) =  trim(CAST(AES_DECRYPT(login_pwd,'A625b13a9207Y336bt2kD21A390C3d9j') AS CHAR (50)))
  and IsActive = 1;

IF COUNT_ > 0 then
    set isUser = true;
else
    set isUser = false;
END IF;

return isUser ;

END; $$

