package hashmap_01;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Main1 {

    public static void main(String[] args) {
        //CLAVE - VALOR   Integer - String   1,'Luis'
        
        Map<Integer,String> diccionario = new HashMap<>();
        
        diccionario.put(1, "María");
        diccionario.put(2, "Carmen");
        diccionario.put(3, "Vanessa");
        diccionario.put(4, "Carlos");
        diccionario.put(5, "Arturo");
        diccionario.put(6, "Arturo");
        
        
        //RECORRER UN DICCIONARIO - MAP
        for(Map.Entry<Integer,String> x: diccionario.entrySet()) {
            System.out.println(x.getKey()+","+x.getValue());
            System.out.println(x);
        }
        
        //BUSCAR POR LA CLAVE
        String valor = diccionario.get(3);
        System.out.println("Valor: " + valor);
        
        //ELIMINAR POR LA CLAVE
        String valoreliminado = diccionario.remove(3);
        System.out.println("Valor Eliminado: " + valoreliminado);
        
        //PERTENENCIA DE UNA CLAVE EN EL DICCIONARIO
        if(diccionario.containsKey(3)) {
           System.out.println("Existe la clave");
        }else {
           System.out.println("No Existe la clave");
        }
        
        //TAMAÑO DEL DICCIONARIO
        System.out.println("Tamaño: " + diccionario.size());
        if(diccionario.isEmpty()) {
            System.out.println("ESTA VACIO");
        }else {
            System.out.println("TIENE ELEMENTOS");
        }
        
        List<Map.Entry<Integer,String>> lista = new ArrayList<>(diccionario.entrySet());
        
        System.out.println(lista);
        
    }
    
}
