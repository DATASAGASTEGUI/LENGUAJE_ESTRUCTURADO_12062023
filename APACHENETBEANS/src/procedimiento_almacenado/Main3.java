/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package procedimiento_almacenado;

/**
 *
 * @author Tecnicos
 */
public class Main3 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
    }
    
}


/*
1.1) CREAR UN PROCEDIMIENTO ALMACENADO: CONTAR EL NUMERO DE REGISTROS DE LA TABLA EMPLEADO

USE VENTAS3;

DROP PROCEDURE IF EXISTS contarmaximo;

DELIMITER $$
CREATE DEFINER=root@localhost PROCEDURE contarmaximo(OUT numeroregistros INT, OUT maximoventas DOUBLE)
BEGIN
   SELECT COUNT(*) INTO numeroregistros FROM Transaccion;   
   SELECT MAX(VENTAS) INTO maximoventas FROM Transaccion;
END$$
DELIMITER ;

(1.2) LLAMAR UN PROCEDIMIENTO ALMACENADO DESDE LA CONSOLA CLIENTE MYSQL

USE VENTAS3;
CALL contarmaximo(@cantidad,@maximo);
SELECT @cantidad;
SELECT @maximo;



*/
