USE Northwind;

CREATE VIEW ListadoProductos 
AS
SELECT
   p.ProductName producto, c.CategoryName categoria
FROM
    Products p 
INNER JOIN Categories c
ON p.CategoryID = c.CategoryID;

---crear una vista que muestre el nombre del producto categoria y proveedor
---ordenados por nombre de categoria
SELECT producto, categoria FROM listadoProductos;


SELECT
   p.ProductName producto, c.CategoryName categoria, d.CompanyName proveedor
FROM
    Products p 
INNER JOIN Categories c
ON p.CategoryID = c.CategoryID
INNER JOIN Customers d
ON d.CompanyName = p.ProductName;

ALTER VIEW ListadoProductos
AS
SELECT
   p.ProductName Producto, c.CategoryName Categoria, b.ProductID
FROM
    Products p 
LEFT JOIN Categories c	
ON p.CategoryID = c.CategoryID
LEFT JOIN [Order Details] b
ON b.OrderID = p.ProductID;

----Modiicar la vista anterior ultilizando full join

ALTER VIEW ListadoProductos
AS
SELECT
   p.ProductName producto, c.CategoryName categoria, d.OrderID Orden
FROM
    Products p 
FULL JOIN Categories c
ON p.CategoryID = c.CategoryID
FULL JOIN Orders d
ON d.OrderID = p.ProductID;

SELECT producto, categoria, FROM listadoProductos;