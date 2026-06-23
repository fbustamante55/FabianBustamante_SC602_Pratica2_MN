SELECT * FROM FactVentasPartes;

 --------- 
 
SELECT
    e.nombre,
    e.apellido,
    SUM(f.montoVenta) AS TotalVentas
FROM FactVentasPartes f
JOIN DimEmpleado e
    ON f.idEmpleado = e.idEmpleado
GROUP BY e.nombre, e.apellido;


---
--
-

SELECT
    r.nombre AS Region,
    SUM(f.montoVenta) AS TotalVentas
FROM FactVentasPartes f
JOIN DimCliente c
    ON f.idCliente = c.idCliente
JOIN DimRegion r
    ON c.idRegion = r.idRegion
GROUP BY r.nombre;




SELECT
    p.nombre AS Parte,
    SUM(f.cantidad) AS CantidadVendida,
    SUM(f.montoVenta) AS TotalVentas
FROM FactVentasPartes f
JOIN DimParte p
    ON f.idParte = p.idParte
GROUP BY p.nombre;


SELECT
    t.anio,
    t.mes,
    SUM(f.montoVenta) AS TotalVentas
FROM FactVentasPartes f
JOIN DimTiempo t
    ON f.idTiempo = t.idTiempo
GROUP BY t.anio, t.mes
ORDER BY t.anio, t.mes;

SELECT
    pr.nombre AS Proveedor,
    SUM(f.montoVenta) AS TotalVentas
FROM FactVentasPartes f
JOIN DimParte p
    ON f.idParte = p.idParte
JOIN DimProveedor pr
    ON p.idProveedor = pr.idProveedor
GROUP BY pr.nombre;


