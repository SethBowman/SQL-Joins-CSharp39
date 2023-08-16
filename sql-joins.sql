-- INNER JOIN, Products is the left table and Sales is the right table
-- We will only see products that were sold

SELECT * FROM Products as p
INNER JOIN Sales as s
ON p.ProductID = s.ProductID;

-- LEFT JOIN, since Products is the left table we will see all products, but we will see null values if the product was not sold

SELECT * FROM Products as p
LEFT JOIN Sales as s
ON p.ProductID = s.ProductID;

-- INNER JOIN, Employees is the left table and Sales is the right
-- We will only see employees that have made a sale

SELECT * FROM Employees as e
INNER JOIN Sales as s
ON e.EmployeeID = s.EmployeeID;

-- LEFT JOIN, Since employees is left table we will see all employees even if they didn't sell anything
-- null values will appear on the right table (Sales) if that employee didn't make a sale

SELECT * FROM Employees as e
LEFT JOIN Sales as s
ON e.EmployeeID = s.EmployeeID
WHERE e.FirstName = "John";

-- Using multiple joins

SELECT p.Name as "Product Sold", p.Price, s.Quantity as "Amount Sold", e.FirstName, e.LastName
FROM Products as p
INNER JOIN Sales as s
ON p.ProductID = s.ProductID
INNER JOIN Employees as e
ON s.EmployeeID = e.EmployeeID;

