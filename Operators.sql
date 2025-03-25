# STRUCTURED QUERY LANGUAGE
# SQL is a programming language. It is used to access and manipulate the database or table.
# SQL is a database language designed mainly for maintaining the data in Relational DataBase Management System.
# Database is a collection of table.
# MYSQL is a software inside which we use SQL as a programming language.
## MYSQL is RDBMS.
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# COMMENTS : It is a statement that we want to show but don't want to execute with code.
## Types of Comments : 
-- 1) Single Comments : Denoted by # or --
-- 2) Multiline Comments : Denoted by /* or */.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# SQL COMMANDS
## DDL : Data Define Language
--	  1) Create : It is used to create a database or table.
--    2) Drop : It is used to delete the database or table.
--    3) Alter : * It is used to add the column/s in table.
-- 				 * It is used to delete the column/s from the table.
--               * It is used to rename the column headers.
--               * It is used to modify the data type of columns.
--               * Also used to rename the table.
--               * Renames the database.
--    4) Truncate : It deletes the entire data from the table but keeps the format of the table(includes the column header).
## DML : Data Manipulation Language
--     1) Insert : It is used to add the data in particular rows in a table.
--     2) Update : It is used to add the data in a particular cell.
--     3) Delete : It is used to delete the rows from the table by condition, or whole of the data can also be removed by condition.  
## DCL : Data Control Langauge
--     1) Grant : It provides the user the permission to access the table.
--     2) Revoke : It restricts the permission.
# TCL : Transaction Control Language
--     1) Savepoint : It save the data on temporary basis.
--     2) Rollback : It takes a step back (Acts a undo).
--     3) Commit : It saves the data permanently.
# DQL : Data Query Language
--     1) SELECT : It retrieves the data from table or database.
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# DATA TYPES 
-- 		1) Numerical Data : 
--							* INT : Stores integer values for upto 10 digits.
-- 						    * Float : Stores exact numeric values with a fixed precision and scale.
--							* BigInt : Stores large integers for above 10 digits.
-- 							* SmallInt : Stores smaller integers for upto 5 digits.
--							* TinyInt : Stores very small integers for upto 3 digits.
--                          * Double : A normal size floating point number.
--      2) Categorical Or Text Data : 
--                          * VARCHAR : A variable length string(can contain letters, numbers and special characters). The size parameter specifies the maximum string
--										length in characters can be from 0 to 5 digit.
--							* CHAR : A fixed length string(can contain letters, numbers and special characters). The size parameter specifies the column length in 
-- 									 characters can be from 0 to 3 digit (255 characters).
--                          * TEXT : Holds a string with a maximum length of 65,535 bytes.
--      3) Date and Time : 
--                          * Date :
--                          * Time :
--                          * Duration :
--                          * Date and Time : 
--      4) Bollean Data : 
--                          * True  * False
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# OPERATORS
--          1) Arithmetic Operators : +,-,*,/,%
SELECT "Hello World";
SELECT "Prerna Mehta";
SELECT 21+22;
SELECT 30-25;
SELECT 12*5;
SELECT 22/2;
SELECT 49%2;

-- 			2) Comparison Operators : 

USE BRILLICA;
select * from emp;
# Write a query to show employee name whose employee id is less than 10.
select name from emp where employee_id<10;
# Write a query to show the table of employee whose salary is greater than or equal to 70k.
select * from emp where salary>=70000;

--         3) Logical Operators :
				-- AND : It applies multiple condition in query and shows result when all condition is true.
				-- OR : It applies multiple condition in query and shows result when atleast one condition is true.
				-- BETWEEN : It shows data between two numerical range in a column.
                
# Write a query to show whose department is IT and city is noida.
SELECT * FROM EMP WHERE CITY="NOIDA" AND TRIM(DEPARTMENT)="IT";
# Write a query to show the table whose city is noida and delhi.
SELECT * FROM EMP_DETAILS WHERE CITY="NOIDA" OR CITY="GURUGOAN";
# Write a query to show the table where salary is greater than 70k ans sales is department.
SELECT * FROM EMP_DETAILS WHERE SALARY>70000 AND DEPARTMENT="SALES";
# Write a query to show the table where employee id is less than 20 and city is pune.
SELECT * FROM EMP_DETAILS WHERE EMP_ID<20 AND CITY="PUNE";
# Write a query to show name of employees whose name startswith P or A.
SELECT * FROM EMP_DETAILS WHERE LEFT(TRIM(NAME),1)="P" OR LEFT(TRIM(NAME),1)="A";
# Write a query to show the table where department is sales and name endswith A.
SELECT * FROM EMP_DETAILS WHERE DEPARTMENT="SALES" AND LEFT(REVERSE(TRIM(NAME)),1)="A";
SELECT  * FROM EMP_DETAILS WHERE DEPARTMENT="SALES" AND RIGHT(TRIM(NAME),1)="A";
# Write a query to show the table whose salary is between 50k and 60k.
SELECT * FROM EMP_DETAILS WHERE SALARY>=50000 AND SALARY<=60000;
SELECT * FROM EMP_DETAILS WHERE SALARY BETWEEN 50000 AND 60000;

# Write a query to show the details of students whose marks is greater than 400 and gender is girl.
SELECT * FROM MARKSHEET;
SELECT * FROM MARKSHEET WHERE MARKS>400 AND GENDER="GIRL";
# Write a query to show the table where gender is girl and address is bihar and haryana.
SELECT * FROM MARKSHEET WHERE GENDER="GIRL" AND (ADDRESS="BIHAR" OR ADDRESS="HARYANA");
# Write a query to show the details of students whose gender is boy and marks is between 350 to 380.
SELECT * FROM MARKSHEET WHERE GENDER="BOY" AND MARKS BETWEEN 350 AND 380;

--             4) Membership Operators : 
-- 								IN : It checks from column if exists then shows output.
-- 								Not In : It is used to restrict the data by condition. 
# Write a query to show the details of students excluding haryana and bihar.
SELECT * FROM MARKSHEET WHERE ADDRESS!="HARYANA" AND ADDRESS<>"BIHAR";
SELECT * FROM MARKSHEET WHERE ADDRESS NOT IN ("HARYANA","BIHAR");
--             5) Bitwise Operators : 
-- 								&& : And
--								|| : Or

------------------------------------------------------------------------------------------------------------------------------------------------------------------------