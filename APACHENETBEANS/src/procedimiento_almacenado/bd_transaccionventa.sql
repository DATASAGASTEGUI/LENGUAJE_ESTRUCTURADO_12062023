-- 1. BORRAR UNA BASE DE DATOS SI ESTA EXISTE

DROP DATABASE IF EXISTS TRANSACCIONVENTA;

-- 2. CREAR UNA BASE DE DATOS

CREATE DATABASE TRANSACCIONVENTA;

-- 3. USAR UNA BASE DE DATOS

USE TRANSACCIONVENTA;

-- 4. CREAR UNA TABLA

DROP TABLE IF EXISTS Transaccion;

CREATE TABLE Transaccion(
   idTransaccion INT          NOT NULL PRIMARY KEY AUTO_INCREMENT,
   ciudad        VARCHAR(10)  NOT NULL,
   zona          VARCHAR(10)  NOT NULL,
   ventas        DOUBLE       NOT NULL,
   forma_pago    VARCHAR(10)  NOT NULL,
   categoria     VARCHAR(30)  NOT NULL
);

-- 5. MOSTRAR LAS TABLAS DE UNA BASE DE DATOS

SHOW TABLES;

-- 6. MOSTRAR LA ESTRUCTURA DE UNA TABLA

DESCRIBE Transaccion;

-- 7. INSERTAR REGISTROS A UNA TABLA

INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Santander','Norte',1235,'Contado','Electrodoméstico');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Santander','Norte',639.2,'Tarjeta','Electrodoméstico');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Santander','Norte',621.39,'Contado','Informática');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Santander','Norte',1259.5,'Tarjeta','Informática');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Santander','Norte',2563.25,'Contado','Audio y televisión');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Santander','Norte',1258.12,'Tarjeta','Audio y televisión');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Sevilla','Sur',725.26,'Contado','Electrodoméstico');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Sevilla','Sur',2563.39,'Tarjeta','Electrodoméstico');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Sevilla','Sur',1258.36,'Contado','Informática');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Sevilla','Sur',1578.3,'Tarjeta','Informática');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Sevilla','Sur',953.26,'Contado','Audio y televisión');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Sevilla','Sur',2359.25,'Tarjeta','Audio y televisión');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Vigo','Norte',1259.14,'Contado','Electrodoméstico');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Vigo','Norte',856.5,'Tarjeta','Electrodoméstico');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Vigo','Norte',420.3,'Contado','Informática');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Vigo','Norte',2853,'Tarjeta','Informática');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Vigo','Norte',1933.6,'Contado','Audio y televisión');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Vigo','Norte',1253.25,'Tarjeta','Audio y televisión');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Alicante','Levante',3215.3,'Contado','Electrodoméstico');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Alicante','Levante',1253.25,'Tarjeta','Electrodoméstico');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Alicante','Levante',698.65,'Contado','Informática');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Alicante','Levante',2653.26,'Tarjeta','Informática');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Alicante','Levante',1588.99,'Contado','Audio y televisión');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Alicante','Levante',996.65,'Tarjeta','Audio y televisión');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Valencia','Levante',1254.4,'Contado','Electrodoméstico');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Valencia','Levante',782.69,'Tarjeta','Electrodoméstico');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Valencia','Levante',2133.25,'Contado','Informática');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Valencia','Levante',1120.36,'Tarjeta','Informática');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Valencia','Levante',1258.33,'Contado','Audio y televisión');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Valencia','Levante',1255.2,'Tarjeta','Audio y televisión');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Granada','Sur',2156.25,'Contado','Electrodoméstico');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Granada','Sur',598.25,'Tarjeta','Electrodoméstico');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Granada','Sur',1256.88,'Contado','Informática');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Granada','Sur',1455.3,'Tarjeta','Informática');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Granada','Sur',1788,'Contado','Audio y televisión');
INSERT INTO Transaccion(idTransaccion,ciudad,zona,ventas,forma_pago,categoria) VALUES (NULL,'Granada','Sur',2120,'Tarjeta','Audio y televisión');
