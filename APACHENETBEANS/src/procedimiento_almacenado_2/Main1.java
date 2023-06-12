package procedimiento_almacenado_2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Main1 {

    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/ventas3";
        String usuario = "root";
        String clave = "";
        String query = "CALL mostrar();";
        Connection conexion = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            conexion = DriverManager.getConnection(url, usuario, clave);

            if (conexion != null) {
                ps = conexion.prepareCall(query);
                rs = ps.executeQuery();
                while (rs.next()) {
                    int idTransaccion = rs.getInt("idTransaccion");
                    String ciudad = rs.getString("ciudad");
                    String zona = rs.getString("zona");
                    double ventas = rs.getDouble("ventas");
                    String formaPago = rs.getString("formaPago");
                    String categoria = rs.getString("categoria");
                    System.out.printf("%10d  %10s  %10s  %8.2f  %12s  %10s\n",
                            idTransaccion, ciudad,zona, ventas, formaPago, categoria);
                }
            } else {
                System.out.println("ERROR: CONEXION");
            }
        } catch (Exception e) {
            System.out.println("ERROR: QUERY");
        }

    }

}
