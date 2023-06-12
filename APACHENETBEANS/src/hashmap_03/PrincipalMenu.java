package hashmap_03;

import java.util.Map;

public class PrincipalMenu {

    static Crud crud = new Crud();
    
    public static void main(String[] args) {

        System.out.println("MENU");
        System.out.println("----");
        System.out.println("01. CARGAR TABLA PRODCUTO EN UN HASHMAP");
        System.out.println("02. MOSTRAR CONTENIDO DEL HASHMAP");
        System.out.println("03. BUSCAR UN PRODUCTO POR SU CLAVE");
        System.out.println("04. ELIMINAR UN PRODUCTO POR SU CLAVE");
        System.out.println("05. AGREGAR UN PRODUCTO AL HASHMAP");
        System.out.println("06. ACTUALIZAR EL PRECIO DE UN PRODUCTO EN EL HASHMAP");
        System.out.println("07. CANTIDAD DE OBJETOS QUE GUARDA EL HASHMAP");
        System.out.println("08. MOSTRAR EL PRECIO MEDIO ENTRE TODOS LOS PRODUCTOS");
        System.out.println("09. MOSTRAR LOS PRODUCTOS DE UN PROVEEDOR");
        System.out.println("10. MOSTRAR TODOS LOS PRODUCTOS QUE INICIEN CON UNA LETRA DADA");
        System.out.println("11. ELIMINAR LOS PRODUCTOS DE UN PROVEEDOR DADO");
        System.out.println("12. OTRA FORMA DE LA 2");
        System.out.println("13. REMOVER TODOS LOS OBJETOS DEL HASHMAP");
        System.out.println("00. SALIR");
        
        opcion1();

    }

    public static void opcion1() {
        System.out.println("01. CARGAR TABLA PRODCUTO EN UN HASHMAP");
        Map<String,Producto> mapa = crud.getMapProductos();
        System.out.println(mapa);
        
        Producto producto = mapa.get("BE");
        System.out.println(producto);
                            
    }

}
