
use northwind

--3_Analisis_Productos.sql

--Productos más vendidos y más rentables:


WITH PRODUCTO_FRECUENTES AS(

 select 

     p.productname as 'Producto',
	 round(sum(od.quantity*od.UnitPrice*(1-od.Discount)),2) as 'Total vendido',
	 sum(od.Quantity) as 'Cantidad vendida'
     from [Order Details] od
	 inner join Products p on od.ProductID=p.ProductID
	 group by p.ProductName

	 )
SELECT 

   TOP 10 
   Producto ,CONCAT('S/ ',CAST([total vendido] as varchar(max))) as Venta_total,
   [Cantidad vendida]
   from PRODUCTO_FRECUENTES
   order by [Total vendido] desc




