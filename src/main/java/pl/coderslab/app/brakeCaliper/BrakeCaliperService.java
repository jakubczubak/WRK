package pl.coderslab.app.brakeCaliper;

import org.springframework.stereotype.Service;
import pl.coderslab.app.part.Part;
import pl.coderslab.app.part.PartRepository;

import java.util.*;

@Service
public class BrakeCaliperService {

    private PartRepository partRepository;

    public BrakeCaliperService(PartRepository partRepository) {
        this.partRepository = partRepository;
    }


    public Map<String, Integer> getDefaultMap() {

        List<Part> partList = partRepository.findAllByOrderByName();
        Map<String, Integer> partMap = new HashMap<>();
        for (int i = 0; i < partList.size(); i++) {
            partMap.put(partList.get(i).getName(), 0);
        }

        TreeMap<String, Integer> sortedMap = new TreeMap<>();
        sortedMap.putAll(partMap);
        return sortedMap;
    }


    public Map<String, Integer> getMapWithOutEmptyValue(Map<String, Integer> map) {

        Map<String, Integer> newMap = map;
        Iterator<Map.Entry<String, Integer>>
                iterator = newMap.entrySet().iterator();

        while (iterator.hasNext()) {
            Map.Entry entry = iterator.next();
            if (entry.getValue().equals(0)) {
                iterator.remove();
            }
        }
        return newMap;
    }


}
