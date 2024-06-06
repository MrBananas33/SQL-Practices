--- Schema for the table Commissions---
INSERT INTO Commissions (Id, Name, City, Commission, [Group], Notes)
VALUES
(1, 'Alice Johnson', 'New York', 1500.00, 'A', 'Top performer in Q1'),
(2, 'Bob Smith', 'Los Angeles', 1200.50, 'B', 'Consistent sales'),
(3, 'Carol White', 'Chicago', 980.00, 'A', 'New joiner in Q2'),
(4, 'David Brown', 'Houston', 2000.00, 'C', 'Outstanding performance'),
(5, 'Eva Green', 'Phoenix', 850.75, 'B', 'Improved sales performance'),
(6, 'Frank Black', 'Philadelphia', 1100.00, 'A', 'Consistent top performer');
GO
DELETE FROM Commissions WHERE Id = 3;
GO

INSERT INTO Commissions  (Id, Name, City, Commission, [Group], Notes)
VALUES (3, 'Carol White', 'Chicago', 980.00, 'A', 'New joiner in Q2')
GO

UPDATE Commissions
SET Commission = 1999.00
WHERE Id = 4;
GO
SELECT * FROM Commissions;


---Insercion de datos para la tabla Sales---

INSERT INTO Sales(name, City, Sales, [Group], Notes)
VALUES 
('Pepe', 'Chicago', 900, 'A', 'New York'),
('Ana', 'Miami', 1200, 'B', 'Excelente vendedor'),
('Luis', 'Los Angeles', 750, 'A', 'Nuevo en el equipo'),
('Sofia', 'Houston', 1100, 'C', 'Líder de ventas del mes'),
('Carlos', 'Phoenix', 980, 'B', 'Mejora continua'),
('Maria', 'Philadelphia', 1050, 'A', 'Desempeño consistente');

--- Modify data on collumn Notes ---
UPDATE Sales
SET Notes = 'Tiene un buen rendimiento'
WHERE id = 1;

---Insert data for Employees---

INSERT INTO Employees(Name, Department, Salary, Position, Notes)
VALUES
('John Doe', 'Sales', 50000, 'Manager', 'Experienced sales manager'),
('Jane Smith', 'IT', 75000, 'Developer', 'Specializes in backend development'),
('Emily Davis', 'HR', 60000, 'Recruiter', 'Great at finding talent'),
('Michael Brown', 'Marketing', 65000, 'Analyst', 'Focuses on data-driven marketing'),
('Jessica Wilson', 'Finance', 70000, 'Accountant', 'Expert in corporate accounting'),
('Chris Johnson', 'IT', 72000, 'SysAdmin', 'Maintains server infrastructure');