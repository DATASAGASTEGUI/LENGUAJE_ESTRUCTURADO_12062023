=========================================
(1) CREAR SP

USE VENTAS3;
DROP PROCEDURE IF EXISTS mostrar;
DELIMITER $$
CREATE PROCEDURE mostrar()
BEGIN
   SELECT * FROM Transaccion;
END$$
DELIMITER ;

(2) CALL mostrar();
=========================================
(1) CREAR SP

USE VENTAS3;
DROP PROCEDURE IF EXISTS cantidad_maximo;
DELIMITER $$
CREATE PROCEDURE cantidad_maximo()
BEGIN
   DECLARE _CANTIDAD INT;
   DECLARE _MAXIMOVENTA DOUBLE;
   SELECT COUNT(*) INTO _CANTIDAD FROM Transaccion;
   SELECT MAX(ventas) INTO _MAXIMOVENTA FROM Transaccion;
   SELECT _CANTIDAD, _MAXIMOVENTA;
END$$
DELIMITER ;

(2) LLAMAR SP

CALL cantidad_maximo();
=========================================
(1) CREAR SP

USE VENTAS3;
DROP PROCEDURE IF EXISTS cantidad_maximo_1;
DELIMITER $$
CREATE PROCEDURE cantidad_maximo_1()
BEGIN
   SELECT categoria, ventas FROM Transaccion 
   WHERE ventas = (SELECT MAX(ventas) FROM Transaccion);
END$$
DELIMITER ;

(2) CREAR SP

CALL cantidad_maximo_1();
=========================================