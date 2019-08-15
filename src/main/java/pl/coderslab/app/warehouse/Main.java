package pl.coderslab.app.warehouse;

import java.util.HashMap;
import java.util.Map;

public class Main {
    public static void main(String[] args) {



        Map<String, Integer> map1 = new HashMap<String,Integer>();
        Map<String, Integer> map2 = new HashMap<String,Integer>();

        map1.put("a",1);
        map1.put("b",1);
        map1.put("c",1);

        map2.put("a",1);
        map2.put("b",1);
        map2.put("c",1);

        map2.forEach((k,v) -> map1.merge(k,v, Integer::sum));


        System.out.println(map2);
        System.out.println(map1);
    }
}
