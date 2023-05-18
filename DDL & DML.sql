/*DATA MANIPULATION LANGUAGE (DML) for adding, deleting, and modifying data in a database
INSERT
UPDATE
DELETE


/* DATA DEFINITION LANGUAGE (DDL)
CREATE
DROP
ALTER
TRUNCATE

*/

--CREATE TABLE


CREATE TABLE Students
(
Matric_Number int,
FirstName varchar(50),
LastName varchar(50),
Major varchar(50),
Faculty varchar(50),
CGPA decimal(7,2),
Grad_date date


)


--INSERT

INSERT INTO Students
	(Matric_Number, FirstName,LastName, Major, Faculty, CGPA, Grad_date) 
	values (1000, 'Kamsi', 'Eze', 'Chemistry', 'Faculty of Science', 3.02, '2023-11-12')

INSERT INTO Students
	(Matric_Number, FirstName,LastName, Major, Faculty, CGPA, Grad_date) 
	values (1430, 'Stella', 'Ade', 'Adult Education', 'Faculty of Education', 4.50, '2025-05-20')

INSERT INTO Students
	(Matric_Number, FirstName,LastName, Major, Faculty, CGPA, Grad_date) 
	values (3522, 'James', 'Ufoma', 'Business Management', 'Faculty of Business', 3.47, '2024-11-15')

INSERT INTO Students
	(Matric_Number, FirstName,LastName, Major, Faculty, CGPA, Grad_date) 
	values (4002, 'Kanyin', 'Peters', 'History', 'Faculty of Arts', 3.55, '2024-11-15')

INSERT INTO Students
	(Matric_Number, FirstName,LastName, Major, Faculty, CGPA, Grad_date) 
	values (4400, 'Joan', 'Alka', 'Mechanical Engineering', 'Faculty of Engineering', 4.09, '2023-11-12')




--ALTER
ALTER TABLE Students
  ADD EntryDate date;

ALTER TABLE Students
  ALTER COLUMN EntryDate datetime ; 

ALTER TABLE Students
  DROP COLUMN EntryDate


--UPDATE
UPDATE Students
  SET CGPA = 4.33
WHERE Matric_Number = 3522


--TRUNCATE
TRUNCATE TABLE CGPA;


--DELETE
DELETE Students
WHERE Major = 'Chemistry'


--DROP CURRENT TABLE AND CREATE NEW TABLE WITH CORRECT DATES
DROP TABLE Students;
