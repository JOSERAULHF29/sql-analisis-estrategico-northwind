                                                                 Proyecto de Análisis SQL con Northwind: Insights Estratégicos


                                                                 
---------------------------------------------------
 Descripción general del repositorio
- --------------------------------------------------

Este repositorio contiene un proyecto de análisis de datos en SQL basado en la base de datos Northwind, orientado a generar insights estratégicos que apoyen la toma de decisiones comerciales. 
El trabajo incluye consultas avanzadas, vistas y procedimientos almacenados que permiten analizar clientes, productos, patrones de compra y recomendaciones.

-----------------------------------------------------
Top 10 clientes más rentables (ventas totales):
----------------------------------------------------

Se identifican los 10 clientes que generan mayor ingreso total en la empresa,
calculando las ventas netas a partir del precio unitario, la cantidad vendida y el descuento aplicado. 
Además, se incluye el total de pedidos realizados por cada cliente, lo cual permite medir tanto la rentabilidad como la frecuencia de compra.

----------------------------------------------------
Top 10 productos más rentables y más vendidos
-----------------------------------------------------

Se identifican los 10 productos con mayor ingreso total generado, calculando las ventas netas a 
partir del precio unitario, la cantidad vendida y el descuento aplicado. Además, se incluye la cantidad total vendida para evaluar el nivel de demanda de cada producto.

----------------------------------------------------
Insight 1: Ventas por mes y año (tendencia + estacionalidad)
----------------------------------------------------

Esta consulta analiza las ventas totales agrupadas por año y mes, permitiendo identificar tendencias de crecimiento, 
meses de mayor demanda y patrones de estacionalidad. Esto ayuda a planificar inventario, campañas y proyecciones de ventas.

----------------------------------------------------
 Insight 2: Ventas por empleado (rendimiento comercial)
 ----------------------------------------------------
 
Esta consulta calcula el total de ventas generadas por cada empleado, permitiendo identificar a los empleados con mayor desempeño comercial.
Es útil para evaluación, incentivos, metas y detección de oportunidades de mejora en el equipo.

----------------------------------------------------
Insight 3: Ventas por categoría (categorías más rentables)
----------------------------------------------------

Esta consulta mide el total de ventas por categoría de producto, permitiendo identificar qué categorías generan mayor ingreso. 
Esto apoya decisiones como priorización de stock, enfoque comercial, estrategias de marketing y expansión del catálogo.

--------------------------------------------------
Procedimientos_recomendacion
--------------------------------------------------
Objetivo del procedimiento 
--------------------------------------------------
El procedimiento busca recomendar productos a un cliente (@CustomerID) basándose en las compras de otros clientes que tienen productos en común con él.
Es un enfoque tipo “Collaborative Filtering” básico: si otros clientes compraron productos que tú también compraste, quizá te interesen los productos que ellos compraron y tú no.

--------------------------------------------------
Insight 4 PRODUCTOS JUNTOS
--------------------------------------------------

El análisis de ventas revela que ciertos productos se compran juntos de manera recurrente. Estos pares representan oportunidades estratégicas de cross-selling, 
permitiendo diseñar promociones combinadas, recomendaciones personalizadas y optimización del inventario para aumentar el valor promedio de cada pedido


### Vista: TOP10_CLIENTE

Esta vista devuelve los **10 clientes que generan mayores ingresos** en la base de datos Northwind.  
Para cada cliente se calcula el ingreso total sumando el precio de los productos multiplicado por la cantidad y aplicando los descuentos correspondientes.


------------------------------------
 Tecnologías utilizadas
 -----------------------------------

SQL Server (T-SQL)
Base de datos: Northwind





