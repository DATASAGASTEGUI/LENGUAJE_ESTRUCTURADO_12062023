package hashmap_01;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

public class Main2 {

    public static void main(String[] args) {
        Map<Integer, String> diccionario = new HashMap<>();

        diccionario.put(1, "María");
        diccionario.put(2, "Carmen");
        diccionario.put(3, "Vanessa");
        diccionario.put(4, "Carlos");
        diccionario.put(5, "Arturo");
        diccionario.put(6, "Arturo");

        Set<String> nombres = new TreeSet<>();

        for (Map.Entry<Integer, String> x : diccionario.entrySet()) {
            nombres.add(x.getValue());
        }
        
        System.out.println(nombres);

    }

}
