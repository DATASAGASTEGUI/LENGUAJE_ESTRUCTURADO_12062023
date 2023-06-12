-- 1. BORRAR UNA BASE DE DATOS SI ESTA EXISTE

DROP DATABASE IF EXISTS TIENDA;

-- 2. CREAR UNA BASE DE DATOS

CREATE DATABASE TIENDA;

-- 3. USAR UNA BASE DE DATOS

USE TIENDA;

-- 4. CREAR UNA TABLA

DROP TABLE IF EXISTS Cliente;

CREATE TABLE Cliente (
  dniCliente      VARCHAR(10)  NOT NULL,
  nombre          VARCHAR(50)  NOT NULL,
  apellidos       VARCHAR(50)  NOT NULL,
  fechaNacimiento DATE         NOT NULL,
  telefono        VARCHAR(10)  NOT NULL,
                  PRIMARY KEY (dniCliente)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
					  
DROP TABLE IF EXISTS Proveedor;

CREATE TABLE Proveedor (
  cifProveedor VARCHAR(10) NOT NULL,
  nombre       VARCHAR(50) NOT NULL,
  direccion    VARCHAR(50) NOT NULL,
			   PRIMARY KEY (cifProveedor)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
					  
DROP TABLE IF EXISTS Producto;

CREATE TABLE Producto (
  idProducto   VARCHAR(10) NOT NULL,
  nombre       VARCHAR(50) NOT NULL,
  precio       FLOAT       NOT NULL,
  cifProveedor VARCHAR(10) NOT NULL,
			   PRIMARY KEY (idProducto),
			   FOREIGN KEY (cifProveedor) REFERENCES Proveedor(cifProveedor) ON DELETE CASCADE ON UPDATE CASCADE,
			   INDEX(cifProveedor)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS Factura;

CREATE TABLE Factura (
  idFactura  VARCHAR(10) NOT NULL,
  dniCliente VARCHAR(10) NOT NULL,
  fecha      DATE        NOT NULL,
             PRIMARY KEY (idFactura),
             FOREIGN KEY (dniCliente) REFERENCES Cliente(dniCliente) ON DELETE CASCADE ON UPDATE CASCADE,
			 INDEX(dniCliente)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS Compra;

CREATE TABLE Compra (
  idFactura  VARCHAR(10) NOT NULL,
  idProducto VARCHAR(10) NOT NULL,
  cantidad   INT(4)      NOT NULL,
             PRIMARY KEY (idFactura, idProducto),
             FOREIGN KEY (idFactura) REFERENCES Factura(idFactura) ON DELETE CASCADE ON UPDATE CASCADE,
			 FOREIGN KEY (idProducto) REFERENCES Producto(idProducto) ON DELETE CASCADE ON UPDATE CASCADE,
			 INDEX(idFactura),
			 INDEX(idProducto)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS Cif;

CREATE TABLE Cif (
  cif         VARCHAR(2)  NOT NULL,
  descripcion VARCHAR(100) NOT NULL,
              PRIMARY KEY (cif)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 5. MOSTRAR LAS TABLAS DE UNA BASE DE DATOS

SHOW TABLES;

-- 6. MOSTRAR LA ESTRUCTURA DE UNA TABLA

DESCRIBE Cliente;
DESCRIBE Proveedor; 
DESCRIBE Producto;
DESCRIBE Factura;
DESCRIBE Compra;
DESCRIBE Cif;

-- 7. INSERTAR REGISTROS A UNA TABLA

INSERT INTO Cliente (dniCliente, nombre, apellidos, fechaNacimiento, telefono) VALUES('51019578N', "Luis", "Ruiz Carrasco", '1969-02-11', '601415727');
INSERT INTO Cliente (dniCliente, nombre, apellidos, fechaNacimiento, telefono) VALUES('96225725G', "Carlos", "Roncal Lescano", '1970-03-05', '651843421');
INSERT INTO Cliente (dniCliente, nombre, apellidos, fechaNacimiento, telefono) VALUES('34468082Y', "Miguel", "Rodriguez Vazquez", '1965-09-12', '631782803');
INSERT INTO Cliente (dniCliente, nombre, apellidos, fechaNacimiento, telefono) VALUES('66087976Y', "Carmen", "Ruiz Roncal", '1964-10-25', '619634099');
INSERT INTO Cliente (dniCliente, nombre, apellidos, fechaNacimiento, telefono) VALUES('51750246Q', "María", "Ledesma Díaz", '1971-12-09', '645419638');

INSERT INTO Proveedor (cifProveedor, nombre, direccion) VALUES('B19935287', "Arturo", "Av. Ejercito 456");
INSERT INTO Proveedor (cifProveedor, nombre, direccion) VALUES('A31547649', "Jose", "Av. America Norte 233");

INSERT INTO Producto (idProducto, nombre, precio, cifProveedor) VALUES('CT', "Cartuchera para taladro", 12.99, 'B19935287');
INSERT INTO Producto (idProducto, nombre, precio, cifProveedor) VALUES('BE', "Brocas para Esquinas", 14.99, 'B19935287');
INSERT INTO Producto (idProducto, nombre, precio, cifProveedor) VALUES('CB', "Cepilladora de bloques", 12.99, 'B19935287');
INSERT INTO Producto (idProducto, nombre, precio, cifProveedor) VALUES('BF', "Broca para fresadora", 21.89, 'A31547649');
INSERT INTO Producto (idProducto, nombre, precio, cifProveedor) VALUES('CM', "Cinta métrica autoadhesiva de metal", 15.62, 'A31547649');
INSERT INTO Producto (idProducto, nombre, precio, cifProveedor) VALUES('SC', "Sierra circular", 66.99, 'A31547649');

INSERT INTO Factura (idFactura, dniCliente, fecha) VALUES('F0001', '51019578N', '2018-01-01');
INSERT INTO Factura (idFactura, dniCliente, fecha) VALUES('F0002', '96225725G', '2018-01-01');
INSERT INTO Factura (idFactura, dniCliente, fecha) VALUES('F0003', '34468082Y', '2018-01-01');
INSERT INTO Factura (idFactura, dniCliente, fecha) VALUES('F0004', '66087976Y', '2018-01-01');
INSERT INTO Factura (idFactura, dniCliente, fecha) VALUES('F0005', '51750246Q', '2018-01-01');

INSERT INTO Factura (idFactura, dniCliente, fecha) VALUES('F0006', '51019578N', '2018-01-02');
INSERT INTO Factura (idFactura, dniCliente, fecha) VALUES('F0007', '96225725G', '2018-01-02');
INSERT INTO Factura (idFactura, dniCliente, fecha) VALUES('F0008', '34468082Y', '2018-01-02');
INSERT INTO Factura (idFactura, dniCliente, fecha) VALUES('F0009', '66087976Y', '2018-01-02');
INSERT INTO Factura (idFactura, dniCliente, fecha) VALUES('F0010', '51750246Q', '2018-01-02');

INSERT INTO Factura (idFactura, dniCliente, fecha) VALUES('F0011', '51019578N', '2018-01-03');
INSERT INTO Factura (idFactura, dniCliente, fecha) VALUES('F0012', '96225725G', '2018-01-03');
INSERT INTO Factura (idFactura, dniCliente, fecha) VALUES('F0013', '34468082Y', '2018-01-03');
INSERT INTO Factura (idFactura, dniCliente, fecha) VALUES('F0014', '66087976Y', '2018-01-03');
INSERT INTO Factura (idFactura, dniCliente, fecha) VALUES('F0015', '51750246Q', '2018-01-03');

INSERT INTO Factura (idFactura, dniCliente, fecha) VALUES('F0016', '51019578N', '2018-01-04');
INSERT INTO Factura (idFactura, dniCliente, fecha) VALUES('F0017', '96225725G', '2018-01-04');
INSERT INTO Factura (idFactura, dniCliente, fecha) VALUES('F0018', '34468082Y', '2018-01-04');
INSERT INTO Factura (idFactura, dniCliente, fecha) VALUES('F0019', '66087976Y', '2018-01-04');
INSERT INTO Factura (idFactura, dniCliente, fecha) VALUES('F0020', '51750246Q', '2018-01-04');

INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0001', 'CT', 2);
INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0001', 'BE', 1);
INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0001', 'CB', 3);

INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0002', 'CT', 1);
INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0002', 'SC', 2);

INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0003', 'SC', 1);
INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0003', 'CT', 1);
INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0003', 'BF', 1);
INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0003', 'BE', 1);

INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0004', 'CT', 2);
INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0004', 'CM', 2);
INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0004', 'CB', 2);

INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0005', 'CM', 2);
INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0005', 'SC', 1);

INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0007', 'CT', 3);
INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0007', 'SC', 2);

INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0008', 'CT', 2);
INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0008', 'BE', 1);
INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0008', 'CB', 2);
INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0008', 'SC', 1);

INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0009', 'BF', 1);
INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0009', 'BE', 2);
INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0009', 'CT', 3);

INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0010', 'CT', 2);
INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0010', 'BF', 1);

INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0011', 'CM', 1);
INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0011', 'CT', 1);

INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0012', 'CT', 2);
INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0012', 'CM', 1);
INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0012', 'BF', 2);

INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0013', 'CT', 2);
INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0013', 'BE', 3);

INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0014', 'CM', 1);
INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0014', 'BF', 2);
INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0014', 'CT', 1);

INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0015', 'SC', 3);
INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0015', 'CT', 2);
INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0015', 'BE', 3);

INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0016', 'CM', 4);
INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0016', 'CB', 2);
INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0016', 'CT', 1);

INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0017', 'CB', 2);
INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0017', 'BE', 3);
INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0017', 'SC', 2);
INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0017', 'CT', 3);

INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0018', 'SC', 1);
INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0018', 'BF', 2);

INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0019', 'CB', 2);

INSERT INTO Compra (idFactura, idProducto, cantidad) VALUES('F0020', 'BF', 1);

INSERT INTO Cif (cif, descripcion) VALUES('A', 'Sociedad anónima');
INSERT INTO Cif (cif, descripcion) VALUES('B', 'Sociedad de responsabilidad limitada');
INSERT INTO Cif (cif, descripcion) VALUES('C', 'Sociedad colectiva');
INSERT INTO Cif (cif, descripcion) VALUES('D', 'Sociedad comanditaria');
INSERT INTO Cif (cif, descripcion) VALUES('E', 'Comunidad de bienes y herencias yacentes');
INSERT INTO Cif (cif, descripcion) VALUES('F', 'Sociedad cooperativa');
INSERT INTO Cif (cif, descripcion) VALUES('G', 'Asociaciones');
INSERT INTO Cif (cif, descripcion) VALUES('H', 'Comunidad de propietarios en régimen de propiedad horizontal');
INSERT INTO Cif (cif, descripcion) VALUES('J', 'Sociedades civiles, con o sin personalidad jurídica');
INSERT INTO Cif (cif, descripcion) VALUES('N', 'Entidades extranjeras');
INSERT INTO Cif (cif, descripcion) VALUES('P', 'Corporación local');
INSERT INTO Cif (cif, descripcion) VALUES('Q', 'Organismo públicos');
INSERT INTO Cif (cif, descripcion) VALUES('R', 'Congregaciones e instituciones religiosas');
INSERT INTO Cif (cif, descripcion) VALUES('S', 'Organos de la administración del estado y comunidades autónomas');
INSERT INTO Cif (cif, descripcion) VALUES('U', 'Uniones temporales de empresas');
INSERT INTO Cif (cif, descripcion) VALUES('V', 'Otros tipos no definidos en las anteriores');
INSERT INTO Cif (cif, descripcion) VALUES('W', 'Establecimientos permanentes de entidades, no residentes en España');

-- 8. MOSTRAR TODOS LOS REGISTROS DE UNA TABLA

SELECT * FROM Cliente;
SELECT * FROM Proveedor;
SELECT * FROM Producto;
SELECT * FROM Factura;
SELECT * FROM Compra;
SELECT * FROM Cif;