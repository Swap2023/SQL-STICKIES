use agent;

CREATE TABLE Employees1 (
    EmployeeID INT,
    Name VARCHAR(100),
    Email VARCHAR(100) NOT NULL
);

INSERT INTO Employees (EmployeeID, Name, Email)
VALUES (1, 'Smita Patil', 'smitapatil@example.com');

INSERT INTO Employees (EmployeeID, Name, Email)
VALUES (2, 'Nikhil Shinde', NULL);     

CREATE TABLE Products (
    ProductID INT,
    ProductName VARCHAR(100),
    Category VARCHAR(100) DEFAULT 'General'
);

INSERT INTO Products (ProductID, ProductName)
VALUES (1, 'Laptop');

INSERT INTO Products (ProductID, ProductName, Category)
VALUES (2, 'Smartphone', 'Electronics');

select * from Products;

CREATE TABLE Users (
    UserID INT,
    Username VARCHAR(100),
    Email VARCHAR(100) UNIQUE
);
INSERT INTO Users (UserID, Username, Email)
VALUES (1, 'Alice', 'alice@example.com');	

INSERT INTO Users (UserID, Username, Email)
VALUES (2, 'Bob', 'bob@example.com');

INSERT INTO Users (UserID, Username, Email)
VALUES (3, 'Charlie', 'alice@example.com');    
    

