--Detección de productos comprados juntos (cross-selling) 
use Northwind

with ProductosPorPedido as (
      
	  SELECT ORDERID ,
	     ProductID 
		 FROM [Order Details]
)

SELECT top 10
    P.PRODUCTID AS PRODUCTO1,
	P2.PRODUCTID AS PRODUCTO2,
	count(*) as veces_pedido
	from ProductosPorPedido p
	inner join ProductosPorPedido p2
	on p.OrderID=p2.OrderID
	and p.ProductID< p2.ProductID
	group by p.ProductID , p2.ProductID
	order by veces_pedido desc
    




  


	  ----------------------

