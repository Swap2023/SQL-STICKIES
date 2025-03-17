#Create a database 
CREATE DATABASE winter;

#To see all the existing databases
SHOW DATABASES;

#IF NOT EXISTS -To check database exist or not
CREATE DATABASE IF NOT EXISTS organization;

#To drop database 
DROP DATABASE winter;

CREATE DATABASE session;

#To use specific database
USE session;

/*
1.NOT NULL: It will make sure that column cannot have NULL(Blank) values. 
2.AUTO Increment: This constraint will help the column to automatically assign the value even though there is no data in the column
3 Primary Key: To specify the column of a table as a unique this constraint can be used. In other words, Primary key is used to identify 
each and every row in a table uniquely.
*/
CREATE TABLE employeeInformation1 ( 
ID int NOT NULL AUTO_INCREMENT PRIMARY KEY, 
Emp_name varchar(40) NOT NULL, 
Address varchar(300) NOT NULL, 
City varchar(50) NOT NULL, 
Age int NOT NULL, 
DOJ date NOT NULL, 
Designation varchar(50) NOT NULL, 
Salary decimal(15,2) NOT NULL, 
Mobile varchar(10) NOT NULL 
);

#to fetch entire table details 
SELECT * FROM employeeInformation1;

#To insert values into table
INSERT INTO employeeInformation1(Emp_name, Address, City, Age, DOJ, Designation, Salary, Mobile) 
VALUES ("Sunil Kumar", "104, Street No. 13", "Jaipur", 29,"2020-5-3", "Manager", 42000, "9188822200"); 

INSERT INTO employeeInformation1(Emp_name, Address, City, Age, DOJ, Designation, Salary, Mobile)
VALUES("Rockey Bhai", "205,Coal Mines", "Kerala",32,"2021-2-10","Sr.Manager",65000,"9284877858");

INSERT INTO employeeInformation1(Emp_name, Address, City, Age, DOJ, Designation, Salary, Mobile) 
VALUES ("Manoj Singh", "72, Street No. 1", "Jaipur", 30, "2021-2-1", "Programmer", 43000, "9188822211"); 

INSERT INTO employeeInformation1(Emp_name, Address, City, Age, DOJ, Designation, Salary, Mobile) 
VALUES ("Anil Kumar", "House No.53, Street No.7", "Udaipur", 32,"2021-3-1", "Programmer", 42000, "9133322211");

INSERT INTO employeeInformation1(Emp_name, Address, City, Age, DOJ, Designation, Salary, Mobile) 
VALUES ("Kamal", "P76, Block No.5", "Jaipur", 36, "2020-2-1", "Sr. Programmer", 60000, "9188833311"); 

INSERT INTO employeeInformation1(Emp_name, Address, City, Age, DOJ, Designation, Salary, Mobile) 
VALUES ("Daanish", "RK Nagar, New Bus Stand", "Ajmer", 37, "2021-4-1", "Sr. Programmer", 60000, "9188822255");

#modify the table
ALTER TABLE employeeInformation 
ADD Email varchar(255); 

#created stores procedure 
CALL `session`.`new_procedure`();

ALTER TABLE employeeInformation 
MODIFY COLUMN ID bigint;

#to check detail of table like datatype , length
DESCRIBE employeeInformation;

CALL `session`.`new_procedure`();

ALTER TABLE employeeInformation 
RENAME COLUMN  Emp_Name to Emp;

#Updating values to column
UPDATE employeeInformation
SET Email='Sunil@Wwipro.com'
where ID=1;

#Renaming column name
ALTER TABLE employeeInformation
RENAME COLUMN Salary to Paisa;

CALL `session`.`new_procedure`();

#Updating values to column
UPDATE employeeInformation
set Email='Manoj@microsoft.com'
where ID=4;

# To drop the column
ALTER TABLE employeeInformation
DROP Email;
