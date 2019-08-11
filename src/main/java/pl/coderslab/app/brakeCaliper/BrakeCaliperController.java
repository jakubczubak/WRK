package pl.coderslab.app.brakeCaliper;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import pl.coderslab.app.part.Part;
import pl.coderslab.app.part.PartRepository;

import java.util.*;

@Controller
@RequestMapping("/brakeCaliper")
public class BrakeCaliperController {


    private BrakeCaliperService brakeCaliperService;
    private BrakeCaliperDAO brakeCaliperDAO;
    private PartRepository partRepository;
    private BrakeCaliperRepository brakeCaliperRepository;
    public BrakeCaliperController(PartRepository partRepository, BrakeCaliperRepository brakeCaliperRepository,BrakeCaliperDAO brakeCaliperDAO, BrakeCaliperService brakeCaliperService){
        this.partRepository=partRepository;
        this.brakeCaliperRepository = brakeCaliperRepository;
        this.brakeCaliperDAO=brakeCaliperDAO;
        this.brakeCaliperService=brakeCaliperService;
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public ModelAndView get() {

        BrakeCaliper brakeCaliper = new BrakeCaliper();
        brakeCaliper.setPartName(brakeCaliperService.getDefaultMap());
        return new ModelAndView("add_brakeCaliper", "contactForm", brakeCaliper);
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String save(@ModelAttribute("contactForm") @Validated BrakeCaliper brakeCaliper, BindingResult result) {

        if(result.hasErrors()){
            return "add_brakeCaliper";
        }

        brakeCaliper.setPartName(brakeCaliperService.getMapWithOutEmptyValue(brakeCaliper.getPartName()));
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
