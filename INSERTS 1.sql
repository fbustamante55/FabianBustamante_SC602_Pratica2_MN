INSERT INTO DimProveedor VALUES
(1,'Bosch'),
(2,'Toyota'),
(3,'Honda');

INSERT INTO DimRegion VALUES
(1,'Norte','America'),
(2,'Sur','America'),
(3,'Centro','America');

INSERT INTO DimLocalidad VALUES
(1,'Costa Rica'),
(2,'Panama');

INSERT INTO DimDepartamento VALUES
(1,'Ventas',1),
(2,'Soporte',2);

INSERT INTO DimPuesto VALUES
(1,'Vendedor'),
(2,'Supervisor');

INSERT INTO DimParte VALUES
(1,'Filtro Aceite','Activo',5000,1),
(2,'Pastillas Freno','Activo',12000,2),
(3,'Bujia','Activo',3500,3);

INSERT INTO DimCliente VALUES
(1,'Cliente A',1),
(2,'Cliente B',2),
(3,'Cliente C',3);

INSERT INTO DimEmpleado VALUES
(1,'Juan','Perez',800000,1,1),
(2,'Maria','Lopez',1200000,2,1),
(3,'Carlos','Rojas',900000,1,2);

INSERT INTO DimTiempo VALUES
(1,'2026-01-15',15,'Jueves',1,1,1,2026),
(2,'2026-02-20',20,'Viernes',2,1,1,2026),
(3,'2026-03-10',10,'Martes',3,1,1,2026);

INSERT INTO FactVentasPartes VALUES
(1,10,50000,1,1,1,1),
(2,5,60000,2,2,2,2),
(3,8,28000,3,3,3,3);