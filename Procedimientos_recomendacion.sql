
---- PROCEDIEMINTEO RECOMENDADOS -----

CREATE OR ALTER PROCEDURE RECOMENDAR
    @CustomerID NVARCHAR(5)
AS
BEGIN

    WITH ClienteProductos AS (
        SELECT DISTINCT
            O.CustomerID,
            OD.ProductID
        FROM Orders O
        INNER JOIN [Order Details] OD
            ON O.OrderID = OD.OrderID
    ),

    ClientesSimilares AS (
        SELECT
            c1.CustomerID AS ClienteBase,
            c2.CustomerID AS ClienteSimilar,
            COUNT(*) AS ProductosEnComun
        FROM ClienteProductos c1
        INNER JOIN ClienteProductos c2
            ON c1.ProductID = c2.ProductID
           AND c1.CustomerID <> c2.CustomerID
        WHERE c1.CustomerID = @CustomerID
        GROUP BY c1.CustomerID, c2.CustomerID
        HAVING COUNT(*) >= 2
    )

    SELECT TOP 5
        cp.ProductID AS ProductoRecomendado,
        P.ProductName,
        COUNT(*) AS Frecuencia
    FROM ClientesSimilares c
    INNER JOIN ClienteProductos cp
        ON c.ClienteSimilar = cp.CustomerID
    INNER JOIN Products P
        ON P.ProductID = cp.ProductID
    WHERE NOT EXISTS (
        SELECT 1
        FROM ClienteProductos x
        WHERE x.CustomerID = @CustomerID
          AND x.ProductID = cp.ProductID
    )
    GROUP BY cp.ProductID, P.ProductName
    ORDER BY Frecuencia DESC;

END

