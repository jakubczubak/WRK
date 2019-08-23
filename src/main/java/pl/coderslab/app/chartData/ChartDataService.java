package pl.coderslab.app.chartData;

import org.springframework.stereotype.Service;
import pl.coderslab.app.order.Order;
import pl.coderslab.app.order.OrderRepository;

import java.util.*;

@Service
public class ChartDataService {

    private OrderRepository orderRepository;

    public ChartDataService(OrderRepository orderRepository) {
        this.orderRepository = orderRepository;
    }

    public List<List<Map<Object, Object>>> getCanvasjsChartData() {

        Map<Object, Object> map = null;
        List<List<Map<Object, Object>>> list = new ArrayList<List<Map<Object, Object>>>();
        List<Map<Object, Object>> dataPoints1 = new ArrayList<Map<Object, Object>>();
        List<Order> orderList = orderRepository.findAll();

        Map<Object, Object> orderMap = new HashMap<>();


        for (int i = 0; i < orderList.size(); i++) {
            orderMap.put(orderList.get(i).getBrakeCaliper().getName(), orderRepository.countByBrakeCaliperName(orderList.get(i).getBrakeCaliper().getName()));
        }


        Iterator<Map.Entry<Object, Object>>
                iterator = orderMap.entrySet().iterator();
        while (iterator.hasNext()) {
            Map.Entry entry = iterator.next();

            map = new HashMap<>();
            map.put("label", entry.getKey());
            map.put("y", entry.getValue());
            dataPoints1.add(map);
        }

        list.add(dataPoints1);

        return list;


    }


}
