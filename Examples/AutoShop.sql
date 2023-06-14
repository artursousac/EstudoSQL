-- Iremos criar um banco de dados para um Auto Shop, que terá uma lista de departamentos, empregados, customers e cars customers.
-- Cada departamento poderá ter 0 ou mais empregados, cada empregado poderá ter 0 ou 1 gerente e cada customer poderá ter 0 ou mais carros.
-- Departamentos serão 1 - HR; 2 - Sales; 3 - Tech.
-- Employees temos uma lista pre-definida com 4 empregados.
-- Customers e Cars também já temos uma que utilizaremos.

CREATE TABLE Departments(
	Id INT NOT NULL AUTO_INCREMENT,
    Name VARCHAR(25) NOT NULL,
    PRIMARY KEY(Id)
);

INSERT INTO Departments
	(Id, Name)
VALUES
 (1, 'HR'),
 (2, 'Sales'),
 (3, 'Tech')
;

CREATE TABLE Employees (
	Id INT NOT NULL AUTO_INCREMENT,
	FName VARCHAR(35) NOT NULL,
    LName VARCHAR(35) NOT NULL,
    PhoneNumber VARCHAR(11),
    ManagerId INT,
    DepartmentId INT NOT NULL,
    Salary INT NOT NULL,
    HireDate DATETIME NOT NULL,
    PRIMARY KEY(Id),
    FOREIGN KEY(ManagerId) REFERENCES Employees(Id),
    FOREIGN KEY(DepartmentId) REFERENCES Departments(Id)
);

INSERT INTO Employees
	(Id, FName, LName, PhoneNumber, ManagerId, DepartmentId, Salary, HireDate)
VALUES
	(1, 'James', 'Smith', 1234567890, NULL, 1, 1000, '01-01-2002'),
	(2, 'John', 'Johnson', 2468101214, 1, 1, 400, '23-03-2005'),
	(3, 'Michael', 'Williams', 1357911131, 1, 2, 600, '12-05-2009'),
	(4, 'Johnathon', 'Smith', 1212121212, 2, 1, 500, '24-07-2016')
;

CREATE TABLE Customers(
	Id INT NOT NULL AUTO_INCREMENT,
	FName VARCHAR(35) NOT NULL,
    LName VARCHAR(35) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(11),
    PreferredContact VARCHAR(5) NOT NULL,
    PRIMARY KEY(Id)
);

INSERT INTO Customers
	(Id, FName, LName, Email, PhoneNumber, PreferredContact)
VALUES
	(1, 'William', 'Jones', 'william.jones@example.com', '3347927472', 'PHONE'),
    (2, 'David', 'Miller', 'dmiller@example.net', '3347927472', 'EMAIL'),
    (3, 'Richard', 'Davis', 'richard0123@example.com', NULL, 'EMAIL')
;

CREATE TABLE Cars(
	Id INT NOT NULL auto_increment,
    CustomerId INT NOT NULL,
    EmployeeId INT NOT NULL,
    Model VARCHAR(50) NOT NULL,
    Status VARCHAR(25) NOT NULL,
    TotalCost INT NOT NULL,
    PRIMARY KEY(Id),
    FOREIGN KEY(CustomerId) REFERENCES Customers(Id),
    FOREIGN KEY(EmployeeId) REFERENCES Employees(Id)
);

INSERT INTO Cars
	(Id, CustomerId, EmployeeId, Model, Status, TotalCost)
VALUES
	('1', '1', '2', 'Ford F-150', 'READY', '230'),
    ('2', '1', '2', 'Ford F-150', 'READY', '200'),
    ('3', '2', '1', 'Ford Mustang', 'WAITING', '100'),
    ('4', '3', '3', 'Toyota Prius', 'WORKING', '1254')
;






