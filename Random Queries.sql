USE TavernsDatabase;
GO
SELECT * FROM Class;

SELECT NULLIF(ID, 1) as nullish FROM Class



SELECT * FROM INFORMATION_SCHEMA.COLUMNS
INTERSECT
SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME = 'ID' 






SELECT TOP 1 'CREATE TABLE Example(' FROM INFORMATION_SCHEMA.COLUMNS
UNION ALL
SELECT TOP 1 'ID int,' FROM INFORMATION_SCHEMA.COLUMNS
UNION ALL
SELECT TOP 1 'Name varchar(250),' FROM INFORMATION_SCHEMA.COLUMNS
UNION ALL
SELECT TOP 1 'Description varchar(2000),' FROM INFORMATION_SCHEMA.COLUMNS
UNION ALL
SELECT TOP 1 'RoleID int' FROM INFORMATION_SCHEMA.COLUMNS
UNION ALL
SELECT TOP 1 ');' FROM INFORMATION_SCHEMA.COLUMNS



SELECT TOP 1 CONCAT('CREATE TABLE', SELECT, '(') FROM INFORMATION_SCHEMA.COLUMNS
UNION ALL
SELECT * FROM INFORMATION_SCHEMA.COLUMNS
UNION ALL
SELECT TOP 1 ');' FROM INFORMATION_SCHEMA.COLUMNS





SELECT COLUMN_NAME as thebest FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Taverns' 

SELECT COLUMN_NAME FROM DATA_TYPE INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Taverns'

SELECT  CONCAT(COLUMN_NAME, ' ', DATA_TYPE, CASE WHEN CHARACTER_MAXIMUM_LENGTH IS NULL THEN ' '
ELSE ' (' END, 
CASE WHEN CHARACTER_MAXIMUM_LENGTH IS NULL THEN ' '
ELSE CHARACTER_MAXIMUM_LENGTH END, 
CASE WHEN CHARACTER_MAXIMUM_LENGTH IS NULL THEN ' '
ELSE ' )' END) FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Taverns'


SELECT  CONCAT(COLUMN_NAME, ' ', DATA_TYPE, ISNULL(CHARACTER_MAXIMUM_LENGTH, '')) FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Taverns'

SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Taverns'

SELECT (CASE WHEN RoleID = 1 THEN 
'Role 1' WHEN RoleID = 2 THEN
 'Role 2' ELSE 'Role Else' END) as RoleTest FROM Users

 SELECT* FROM USERS 
 SELECT DISTINCT Name, RoleID From Users

SELECT NULLIF(RoleId, 1) as nullish FROM Users;
SELECT COALESCE(ID, UserClassLevelID, 'Oh no') AS UserInfo FROM USERS
SELECT ISNULL(Notes, '') As NullNotes FROM USERS 



/*
CREATE TABLE Example
(
ID int,
Name varchar(250),
Description varchar(2000),
RoleID int

);
*/


/* HW 3 */
/* QUESTION 2 */

 SELECT* FROM USERS WHERE Birthdays < '2000-1-1'

 /* QUESTION 3 */
 SELECT id FROM TavernRooms WHERE ID in (SELECT TavernRoomID FROM RoomStays WHERE Rate > 100)

 /* QUESTION 4 */
 SELECT DISTINCT Name FROM Users 

  /* QUESTION 5 */
   SELECT Name FROM Users order by name asc
 
 /* QUESTION 6 */
 SELECT TOP(10) Price FROM Sales order by Price desc

  /* QUESTION 7 */  /*I'm currenlty stuck here*/
 SELECT * FROM RoomStatus
 UNION
 SELECT * FROM sys.all_columns
 select * from Users for xml auto

   /* QUESTION 8 */
  SELECT Name,Level, CASE WHEN Level <= 10 THEN 'lvl 1-10' WHEN Level <= 20 THEN 'lvl 11-20' WHEN Level <= 30 THEN 'lvl 21-30' END 
  FROM UserClassLevel INNER JOIN Class ON Class.ID = UserClassLevel.ClassID


 /* QUESTION 9 */
 INSERT INTO RoomStatus (Status)
SELECT Name FROM UserStatus;


