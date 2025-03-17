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