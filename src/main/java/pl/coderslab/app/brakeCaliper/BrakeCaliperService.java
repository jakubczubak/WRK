package pl.coderslab.app.brakeCaliper;

import org.springframework.stereotype.Service;
import pl.coderslab.app.part.Part;
import pl.coderslab.app.part.PartRepository;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@Service
public class BrakeCaliperService {

    private PartRepository partRepository;
    public BrakeCaliperService(PartRepository partRepository){
        this.partRepository=partRepository;
    }


    public Map<String, String> getDefaultMap() {

        List<Part> partList =partRepository.findAll();
        Map<String,String> partMap = new HashMap<>();
        for(int i =0; i<partList.size(); i++){
            partMap.put(partList.get(i).getName(),"0");
        }
        return partMap;
    }


    public Map<String, String> getMapWithOutEmptyValue(Map<String,String> map){

        Map<String,String> newMap = map;
        Iterator<Map.Entry<String, String> >
                iterator = newMap.entrySet().iterator();

        while (iterator.hasNext()) {
            Map.Entry entry = iterator.next();
            if ("0".equals(entry.getValue())) {
                iterator.remove();
            }
        }
        return newMap;
    }


}
