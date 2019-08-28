package pl.coderslab.app.report;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import pl.coderslab.app.warehouse.WarehouseService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

@Controller
@RequestMapping("/report")
public class ReportController {

    private WarehouseService warehouseService;

    public ReportController(WarehouseService warehouseService) {
        this.warehouseService = warehouseService;
    }

    @RequestMapping(value = "/getreport", method = RequestMethod.GET)
    public ModelAndView userListReport(HttpServletRequest req, HttpServletResponse res) {

        String type = req.getParameter("type");

        //create data

        Map<String, Integer> map = warehouseService.getPartListToBuy();


        if (type != null && type.equals("xls")) {
            return new ModelAndView(new ExcelPartListReportView(), "partList", map);
        }



        return null;
    }
}
