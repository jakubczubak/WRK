package pl.coderslab.app.chartData;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/chart")
public class ChartDataController {

    private ChartDataService chartDataService;

    public ChartDataController(ChartDataService chartDataService) {
        this.chartDataService = chartDataService;
    }

    @GetMapping
    @RequestMapping("/pieChart")
    public String getChart(Model model) {


        List<List<Map<Object, Object>>> list = chartDataService.getCanvasjsChartData();

        System.out.println(list);
        model.addAttribute("dataPointsList", list);

        return "pieChart";
    }
}
