#Create a database 
CREATE DATABASE Agent;

#To see all the existing databases
SHOW DATABASES;

#IF NOT EXISTS -To check database exists or not
CREATE DATABASE IF NOT EXISTS winter;

#To drop database with if exists command
DROP DATABASE if exists winter;

CREATE DATABASE Agent;

#To use specific database

CREATE TABLE AgentInfo( 
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

SELECT * FROM AgentInfo;

#To insert values into table
INSERT INTO AgentInfo (Emp_name, Address, City, Age, DOJ, Designation, Salary, Mobile) 
VALUES ("Manoj Patil", "A-104, Street No. 13", "Pune", 29, "2024-5-3", "Manager", 42000, "9188822200");

SELECT * FROM AgentInfo;



/*
Additional entries
*/

INSERT INTO AgentInfo (Emp_name, Address, City, Age, DOJ, Designation, Salary, Mobile) 
VALUES ("Anurag Singh", "D-72, Street No. 1", "Mumbai", 30, "2024-2-1", "Programmer", 43000, "9188822211");

INSERT INTO AgentInfo (Emp_name, Address, City, Age, DOJ, Designation, Salary, Mobile) 
VALUES ("Santosh Patil", "House No.53, Street No.7", "Udaipur", 32, "2024-3-1", "HR", 42000, "9133322211");

INSERT INTO AgentInfo (Emp_name, Address, City, Age, DOJ, Designation, Salary, Mobile) 
VALUES ("Komal Mantri", "Laxmi Rd, Street No.5", "Pune", 32, "2024-3-1", "HR", 42000, "9284877838");

INSERT INTO AgentInfo (Emp_name, Address, City, Age, DOJ, Designation, Salary, Mobile) 
VALUES ("Suresh More", "RK Nagar, New Bus Stand", "Beed", 37, "2021-4-1", "Tester", 60000, "9188822255");

INSERT INTO AgentInfo (Emp_name, Address, City, Age, DOJ, Designation, Salary, Mobile)
VALUES ("Pooja Sharma", "Flat No. 25, Green Park", "Delhi", 28, "2023-12-15", "Designer", 48000, "9177123456");

INSERT INTO AgentInfo (Emp_name, Address, City, Age, DOJ, Designation, Salary, Mobile)
VALUES ("Rahul Verma", "B-45, Sector 12", "Noida", 33, "2022-9-20", "Team Lead", 72000, "9198765432");

INSERT INTO AgentInfo (Emp_name, Address, City, Age, DOJ, Designation, Salary, Mobile)
VALUES ("Megha Tiwari", "C-10, Rose Colony", "Jaipur", 27, "2024-5-10", "HR", 45000, "9178123459");

INSERT INTO AgentInfo (Emp_name, Address, City, Age, DOJ, Designation, Salary, Mobile)
VALUES ("Vikrant Gupta", "112, Elm Street", "Pune", 40, "2019-11-1", "Manager", 85000, "9167891234");

INSERT INTO AgentInfo (Emp_name, Address, City, Age, DOJ, Designation, Salary, Mobile)
VALUES ("Sneha Desai", "A-19, Orchid Avenue", "Surat", 31, "2023-8-5", "Analyst", 50000, "9185623789");
