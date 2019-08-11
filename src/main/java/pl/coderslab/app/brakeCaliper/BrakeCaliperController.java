package pl.coderslab.app.brakeCaliper;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import pl.coderslab.app.part.Part;
import pl.coderslab.app.part.PartRepository;

import java.util.*;

@Controller
@RequestMapping("/brakeCaliper")
public class BrakeCaliperController {

    private BrakeCaliperDAO brakeCaliperDAO;
    private PartRepository partRepository;
    private BrakeCaliperRepository brakeCaliperRepository;
    public BrakeCaliperController(PartRepository partRepository, BrakeCaliperRepository brakeCaliperRepository,BrakeCaliperDAO brakeCaliperDAO){
        this.partRepository=partRepository;
        this.brakeCaliperRepository = brakeCaliperRepository;
        this.brakeCaliperDAO=brakeCaliperDAO;
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public ModelAndView get() {

        List<Part> partList =partRepository.findAll();

        BrakeCaliper brakeCaliper = new BrakeCaliper();
        Map<String,String> partMap = new HashMap<>();


        for(int i =0; i<partList.size(); i++){
            partMap.put(partList.get(i).getName(),"0");
        }
        brakeCaliper.setPartName(partMap);


        return new ModelAndView("add_brakeCaliper", "contactForm", brakeCaliper);
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String save(@ModelAttribute("contactForm") BrakeCaliper brakeCaliper) {

        Map<String,String> newMap = brakeCaliper.getPartName();
        Iterator<Map.Entry<String, String> >
        iterator = newMap.entrySet().iterator();

        while (iterator.hasNext()) {
            Map.Entry entry = iterator.next();
            if ("0".equals(entry.getValue())) {
                iterator.remove();
            }
        }
        brakeCaliper.setPartName(newMap);
        brakeCaliperRepository.save(brakeCaliper);

        return "redirect:/brakeCaliper/all";
    }

    @GetMapping("/show/{index}")
    public String showDetails(@PathVariable("index") Long id,
                              Model model){

        BrakeCaliper brakeCaliper = brakeCaliperDAO.findById(id);

        model.addAttribute("contactForm", brakeCaliper);

        return "show_brakeCaliper";


    }


    @GetMapping("/all")
    public String getAllBrakeCaliper(Model model){
        List<BrakeCaliper> brakeCalipers = brakeCaliperRepository.findAll();
        model.addAttribute("brakeCalipers", brakeCalipers);
        return "brakeCaliperList";
    }


    @GetMapping("/delete/{index}")
    public String deleteBrakeCaliper(@PathVariable("index") Long id){
        brakeCaliperRepository.delete(brakeCaliperRepository.getOne(id));
        return "redirect:/brakeCaliper/all";
    }


    @GetMapping("/edit/{index}")
    public String editBrakeCaliper(ModelMap modelMap,
                                   @PathVariable("index") Long id){

       BrakeCaliper existingBrakeCaliper = brakeCaliperDAO.findById(id);
        modelMap.addAttribute("contactForm", existingBrakeCaliper);
        return "add_brakeCaliper";
    }
    @PostMapping("/edit/{index}")
    public String editPartProcess(@ModelAttribute("contactForm") BrakeCaliper brakeCaliper){
        brakeCaliperRepository.save(brakeCaliper);
        return "redirect:/brakeCaliper/all";
    }
}
