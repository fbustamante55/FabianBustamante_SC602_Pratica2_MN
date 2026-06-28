# Práctica 2 — Data Warehouse de Ventas de Partes Automotrices

**Curso:** SC602 — Bases de Datos II  
**Autor:** Fabian Bustamante  
**Herramientas:** MySQL · MySQL Workbench

---

## Descripción

Data Warehouse estrella (`Practica02DW`) para análisis de ventas de partes automotrices. Modela proveedores, clientes, empleados, regiones y tiempo para generar reportes multidimensionales.

---

## Modelo Estrella

```
DimProveedor ──┑
DimCliente  ──┑
DimEmpleado ──├──░ FactVentasPartes
DmParte    ──┑
DimTiempo   ─┘
```

### Tablas de Dimensión

| Tabla | Descripción |
|---|---|
| `DimProveedor` | Proveedores de partes (Bosch, Toyota, Honda) |
| `DimRegion` | Regiones geográficas (Norte, Sur, Centro América) |
| `DimLocalidad` | Países (Costa Rica, Panamá) |
| `DimDepartamento` | Departamentos de la empresa |
| `DimPuesto` | Puestos de trabajo (Vendedor, Supervisor) |
| `DimParte` | Catálogo de partes (Filtro Aceite, Pastillas Freno, Bujía) |
| `DimCliente` | Clientes y su región |
| `DimEmpleado` | Empleados, salario, puesto y departamento |
| `DimTiempo` | Fechas con día, mes, trimestre, semestre y año |

### Tabla de Hechos

| Tabla | Métricas |
|---|---|
| `FactVentasPartes` | `cantidad`, `montoVenta` |

---

## Archivos

| Archivo | Descripción |
|---|---|
| `QUERRY 1.sql` | DDM— creación de la base de datos y tablas |
| `INSERTS 1.sql` | DML— datos de prueba |
| `SELECTS.sql` | Consultas analíticas |
| `FabianBustamante_SC602_Pratica2_MN.mwb` | Diagrama en MySQL Workbench |
| `FabianBustamante_SC602_Pratica2_MN.png` | Imagen del modelo ER |
| `Captura de pantalla *.png` | Evidencia de ejecución |

---

## Consultas Analíticas

- Ventas totales por empleado  
- Ventas totales por región  
- Cantidad y monto vendido por parte  
- Ventas por año y mes  
- Ventas por proveedor

---

## Cómo ejecutar

1. Abrir MySQL Workbench o cualquier cliente MySQL.
2. Ejecutar `QUERRY 1.sql` para crear la base de datos y las tablas.
3. Ejecutar `INSERTS 1.sql` para cargar los datos de prueba.
4. Ejecutar `SELECTS.sql` para correr las consultas analíticas.
