package pl.coderslab.app.warehouse;

import org.hibernate.Hibernate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pl.coderslab.app.brakeCaliper.BrakeCaliper;
import pl.coderslab.app.brakeCaliper.BrakeCaliperDAO;
import pl.coderslab.app.brakeCaliper.BrakeCaliperRepository;
import pl.coderslab.app.brakeCaliper.BrakeCaliperService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/warehouse")

public class WarehouseController {


    private BrakeCaliperRepository brakeCaliperRepository;
    private BrakeCaliperDAO brakeCaliperDAO;
    private BrakeCaliperService brakeCaliperService;


    public WarehouseController(BrakeCaliperRepository brakeCaliperRepository, BrakeCaliperDAO brakeCaliperDAO, BrakeCaliperService brakeCaliperService){
        this.brakeCaliperRepository=brakeCaliperRepository;
        this.brakeCaliperDAO=brakeCaliperDAO;
        this.brakeCaliperService=brakeCaliperService;
    }

    @GetMapping("/info")
    @ResponseBody
    public String getInfo(){


        Map<String,Integer> generalMap = brakeCaliperService.getDefaultMap();
        List<BrakeCaliper> brakeCaliperList = brakeCaliperDAO.findAll();

        for(int i = 0 ; i< brakeCaliperList.size() ; i ++){
            brakeCaliperList.get(i).getPartName().forEach((k,v) -> generalMap.merge(k,v, Integer::sum));
        }



        System.out.println(generalMap);


        return "warehouse";
    }
}
