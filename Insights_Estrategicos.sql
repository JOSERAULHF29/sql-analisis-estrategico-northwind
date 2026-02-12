

-- Ventas por mes y año
SELECT 
    YEAR(O.OrderDate) AS Año,
    MONTH(O.OrderDate) AS Mes,
    SUM(OD.UnitPrice * OD.Quantity * (1 - OD.Discount)) AS TotalVentas
FROM Orders O
JOIN [Order Details] OD ON O.OrderID = OD.OrderID
GROUP BY YEAR(O.OrderDate), MONTH(O.OrderDate)
ORDER BY Año, Mes;

-- Ventas por empleado
SELECT 
    E.FirstName + ' ' + E.LastName AS Empleado,
    SUM(OD.UnitPrice * OD.Quantity * (1 - OD.Discount)) AS TotalVentas
FROM Orders O
JOIN [Order Details] OD ON O.OrderID = OD.OrderID
JOIN Employees E ON O.EmployeeID = E.EmployeeID
GROUP BY E.FirstName, E.LastName
ORDER BY TotalVentas DESC;

-- Ventas por categoría de producto
SELECT 
    C.CategoryName,
    SUM(OD.UnitPrice * OD.Quantity * (1 - OD.Discount)) AS TotalVentas
FROM [Order Details] OD
JOIN Products P ON OD.ProductID = P.ProductID
JOIN Categories C ON P.CategoryID = C.CategoryID
GROUP BY C.CategoryName
ORDER BY TotalVentas DESC;
