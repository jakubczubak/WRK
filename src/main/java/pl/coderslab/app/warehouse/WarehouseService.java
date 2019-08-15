package pl.coderslab.app.warehouse;

import org.springframework.stereotype.Service;
import pl.coderslab.app.brakeCaliper.BrakeCaliper;
import pl.coderslab.app.brakeCaliper.BrakeCaliperDAO;
import pl.coderslab.app.brakeCaliper.BrakeCaliperService;
import pl.coderslab.app.order.Order;
import pl.coderslab.app.order.OrderDAO;
import pl.coderslab.app.part.Part;
import pl.coderslab.app.part.PartRepository;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

@Service
public class WarehouseService {

    private BrakeCaliperService brakeCaliperService;
    private OrderDAO orderDAO;
    private PartRepository partRepository;

    public WarehouseService(BrakeCaliperService brakeCaliperService, OrderDAO orderDAO, PartRepository partRepository) {
        this.orderDAO = orderDAO;
        this.brakeCaliperService = brakeCaliperService;
        this.partRepository = partRepository;
    }

    public Map<String, Integer> getListAllNeedParts() {

        Map<String, Integer> generalMap = brakeCaliperService.getDefaultMap();
        List<Order> orderList = orderDAO.findAll();

        for (int i = 0; i < orderList.size(); i++) {
            orderList.get(i).getBrakeCaliper().getPartName().forEach((k, v) -> generalMap.merge(k, v, Integer::sum));
        }

        List<Part> partList = partRepository.findAll();

        Iterator<Map.Entry<String, Integer>>
                iterator = generalMap.entrySet().iterator();
        while (iterator.hasNext()) {
            Map.Entry entry = iterator.next();
            for (int i = 0; i < partList.size(); i++) {

                if (entry.getKey().equals(partList.get(i).getName())) {
                    Integer mapValue = (Integer) entry.getValue();
                    Integer partValue = (Integer) partList.get(i).getQuantity();

                    entry.setValue(mapValue - partValue);
                }
            }

        }

        return generalMap;
    }

}

