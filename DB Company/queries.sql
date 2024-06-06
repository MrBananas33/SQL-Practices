--TEST QUERIES---
SELECT * FROM Commissions;

SELECT * FROM Sales;

--SELECT sales greater than 900 and lesser than 800 

SELECT name, Sales FROM Sales 
WHERE Sales >= 900;


SELECT name, Sales FROM Sales 
WHERE Sales <= 800;

---Sales in Miami
SELECT name, Sales FROM Sales
WHERE City = 'Miami';



----Queries to Employes table ---

SELECT Name, Salary, Notes FROM Employees
WHERE Department = 'IT'

--SELECT Names that starts with J ---
SELECT Name,Department, Position, Notes FROM Employees
WHERE Name LIKE 'J%';