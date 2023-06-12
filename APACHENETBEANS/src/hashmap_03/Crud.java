package hashmap_03;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;

public class Crud {

    Connection conexion = getConexion();

    public Connection getConexion() {
        String url = "jdbc:mysql://localhost:3306/tienda";
        String usuario = "root";
        String clave = "";
        Connection conexion;
        try {
            conexion = DriverManager.getConnection(url, usuario, clave);
        } catch (Exception e) {
            return null;
        }
        return conexion;
    }

    public Map<String, Producto> getMapProductos() {
        Map<String, Producto> mapa_hm = new HashMap<>();
        String query = "SELECT * FROM Producto";
        PreparedStatement ps;
        ResultSet rs;
        Producto producto;
        if (conexion != null) {

            try {
                ps = conexion.prepareStatement(query);
                rs = ps.executeQuery();
                while (rs.next()) {
                    String idProducto = rs.getString("idProducto");
                    String nombre = rs.getString("nombre");
                    double precio = rs.getDouble("precio");
                    String cifProveedor = rs.getString("cifProveedor");
                    producto = new Producto(idProducto, nombre, precio, cifProveedor);
                    mapa_hm.put(idProducto, producto);
                }

            } catch (Exception e) {
                System.out.println("ERROR: QUERY");
            }

        } else {
            System.out.println("ERROR: CONEXION");
        }
        return mapa_hm;
    }

}
