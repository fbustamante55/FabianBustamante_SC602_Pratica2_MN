DROP DATABASE IF EXISTS Practica02DW;
CREATE DATABASE Practica02DW;
USE Practica02DW;

CREATE TABLE DimProveedor (
    idProveedor INT PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE DimRegion (
    idRegion INT PRIMARY KEY,
    nombre VARCHAR(50),
    superRegion VARCHAR(50)
);

CREATE TABLE DimLocalidad (
    idLocalidad INT PRIMARY KEY,
    regionalGroup VARCHAR(50)
);

CREATE TABLE DimDepartamento (
    idDepartamento INT PRIMARY KEY,
    nombre VARCHAR(50),
    idLocalidad INT,
    FOREIGN KEY (idLocalidad)
        REFERENCES DimLocalidad(idLocalidad)
);

CREATE TABLE DimPuesto (
    idPuesto INT PRIMARY KEY,
    funcion VARCHAR(50)
);

CREATE TABLE DimParte (
    idParte INT PRIMARY KEY,
    nombre VARCHAR(50),
    status VARCHAR(20),
    costoUnitario DECIMAL(10,2),
    idProveedor INT,
    FOREIGN KEY (idProveedor)
        REFERENCES DimProveedor(idProveedor)
);

CREATE TABLE DimCliente (
    idCliente INT PRIMARY KEY,
    nombre VARCHAR(50),
    idRegion INT,
    FOREIGN KEY (idRegion)
        REFERENCES DimRegion(idRegion)
);

CREATE TABLE DimEmpleado (
    idEmpleado INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    salario DECIMAL(10,2),
    idPuesto INT,
    idDepartamento INT,
    FOREIGN KEY (idPuesto)
        REFERENCES DimPuesto(idPuesto),
    FOREIGN KEY (idDepartamento)
        REFERENCES DimDepartamento(idDepartamento)
);

CREATE TABLE DimTiempo (
    idTiempo INT PRIMARY KEY,
    fecha DATE,
    dia INT,
    diaSemana VARCHAR(20),
    mes INT,
    trimestre INT,
    semestre INT,
    anio INT
);

CREATE TABLE FactVentasPartes (
    idHecho INT PRIMARY KEY,
    cantidad INT,
    montoVenta DECIMAL(10,2),
    idParte INT,
    idCliente INT,
    idEmpleado INT,
    idTiempo INT,
    FOREIGN KEY (idParte)
        REFERENCES DimParte(idParte),
    FOREIGN KEY (idCliente)
        REFERENCES DimCliente(idCliente),
    FOREIGN KEY (idEmpleado)
        REFERENCES DimEmpleado(idEmpleado),
    FOREIGN KEY (idTiempo)
        REFERENCES DimTiempo(idTiempo)
);