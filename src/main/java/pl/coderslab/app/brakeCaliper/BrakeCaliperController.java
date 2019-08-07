package pl.coderslab.app.brakeCaliper;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.app.part.Part;
import pl.coderslab.app.part.PartRepository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/brakeCaliper")
public class BrakeCaliperController {

    private BrakeCaliperRepository brakeCaliperRepository;
    private PartRepository partRepository;

    public BrakeCaliperController(BrakeCaliperRepository brakeCaliperRepository, PartRepository partRepository){
        this.brakeCaliperRepository=brakeCaliperRepository;
        this.partRepository=partRepository;
    }

    @GetMapping("/add")
    public String addBrakeCaliper(Model model){
        model.addAttribute("brakeCaliper", new BrakeCaliper());
        return "brakeCaliper";
    }



    @PostMapping("/add")
    @ResponseBody
    public String addBrakeCaliperProcess(){

        Part part = new Part();
        part.setName("asdad");
        part.setType("asdad");
        part.setCatalogNumber("asdad");
        part.setQuantity(123);

        Map<String,Part> map = new HashMap<String,Part>();

        map.put("test",part);

        System.out.println(map);

        BrakeCaliper brakeCaliper= new BrakeCaliper();

        brakeCaliper.setName("asda");
        brakeCaliper.setQtyToPart(map);

        brakeCaliperRepository.save(brakeCaliper);
        return "success";
    }



    @ModelAttribute("parts")
    public List<Part> allParts(){
        List<Part> partList = partRepository.findAll();
        return partList;
    }


}
