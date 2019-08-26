package pl.coderslab.app.warehouse;

import org.hibernate.Hibernate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/warehouse")

public class WarehouseController {


    private WarehouseService warehouseService;


    public WarehouseController(WarehouseService warehouseService) {
        this.warehouseService = warehouseService;

    }

    @GetMapping("/info")
    public String getInfo(Model model) {

        model.addAttribute("partMap", warehouseService.getPartListToBuy());

        return "warehouse";
    }

    @GetMapping("/details")
    public String getDetails(Model model){
        model.addAttribute("partMap", warehouseService.getListAllNeedParts());

        return "warehouseDetails";
    }
}
