package procedimiento_almacenado;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Main1 {

    public static void main(String[] args) {
       String url = "jdbc:mysql://localhost:3306/ventas3";
       String usuario = "root";
       String clave = "";
       Connection conexion = null;
       String query = "CALL mostrar()";
       PreparedStatement ps = null;
       ResultSet rs = null;
       try {
           Class.forName("com.mysql.cj.jdbc.Driver");
           conexion = DriverManager.getConnection(url,usuario,clave);
           if(conexion != null) {
              ps = conexion.prepareCall(query);
              rs = ps.executeQuery();
              while(rs.next()) {
                  int idTransaccion = rs.getInt("idTransaccion");
                  String ciudad = rs.getString("ciudad");
                  System.out.println("IdTransaccion: " + idTransaccion + ",Ciuda: " + ciudad);
              }
           }else {
               System.out.println("ERROR: CONEXION");
           }
       }catch(Exception e) {
           
       }
        
        
        
        
    }
    
}



/*
(1.1) CREAR UN PROCEDIMIENTO ALMACENADO: MOSTRAR TOOS LOS REGISTROS DE UNA TABLA
--------------------------------------------------------------------------------
USE VENTAS3;

DROP PROCEDURE IF EXISTS mostrar;

DELIMITER $$
CREATE DEFINER=root@localhost PROCEDURE mostrar()

BEGIN
   SELECT * FROM Transaccion;
END$$
DELIMITER ;
	
(1.2) LLAMAR UN PROCEDIMIENTO ALMACENADO DESDE LA CONSOLA CLIENTE MYSQL
-----------------------------------------------------------------------

USE VENTAS3;
CALL mostrar();
*/
