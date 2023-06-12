package procedimiento_almacenado;

public class Main2 {

    public static void main(String[] args) {
        
    }
    
}

/*
1.1) CREAR UN PROCEDIMIENTO ALMACENADO: CONTAR EL NUMERO DE REGISTROS DE LA TABLA EMPLEADO

USE VENTAS3

DROP PROCEDURE IF EXISTS contar;

DELIMITER $$
CREATE DEFINER=root@localhost PROCEDURE contar(OUT numeroregistros INT)
BEGIN
   SELECT COUNT(*) INTO numeroregistros FROM Transaccion;   
END$$
DELIMITER ;

(1.2) LLAMAR UN PROCEDIMIENTO ALMACENADO DESDE LA CONSOLA CLIENTE MYSQL

CALL contar(@salida);
SELECT @salida;



*/
