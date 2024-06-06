CREATE DATABASE Company_info;

USE Company_info;

--- Crea las tablas para la base de datos del negocio---

CREATE TABLE Commissions (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    City NVARCHAR(100) NOT NULL,
    sales DECIMAL(10, 2),
    [Group] NVARCHAR(50),
    Notes NVARCHAR(255)
);

--- Datos para la tabla sales ---

CREATE TABLE Sales(
    id INT PRIMARY KEY IDENTITY(1,1), 
    name NVARCHAR(50) NOT NULL,
    City NVARCHAR(50) NOT NULL,
    Sales DECIMAL(10,2) CHECK(Sales >= 0),
    [Group] NVARCHAR(50),
    Notes NVARCHAR(255)
)

---Creation for the table Employes

CREATE TABLE Employees (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(50) NOT NULL,
    Department NVARCHAR(50) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL CHECK (Salary >= 0),
    Position NVARCHAR(50) NOT NULL,
    Notes NVARCHAR(255) -- Esta columna puede almacenar hasta 255 caracteres Unicode
);

