package pl.coderslab.app.part;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/part")
public class PartController {


    private PartRepository partRepository;

    public PartController(PartRepository partRepository) {
        this.partRepository = partRepository;
    }

    @GetMapping(value = "/add")
    public String addPart(Model model) {
        model.addAttribute("part", new Part());
        return "part";
    }

    @PostMapping(value = "/add")
    public String addPartProcess(@ModelAttribute @Validated Part part,
                                 BindingResult result,
                                 Model model) {
        if (result.hasErrors()) {
            return "part";
        }

        partRepository.save(part);


        return "redirect:/part/add?success";
    }

    @GetMapping("/delete/{index}")
    public String deletePart(@PathVariable("index") Long id) {
        partRepository.delete(partRepository.getOne(id));
        return "redirect:/part/all";
    }

    @GetMapping("/all")
    public String getAllParts(Model model) {
        List<Part> partList = partRepository.findAllByOrderByName();
        model.addAttribute("partList", partList);
        return "partList";
    }

    @GetMapping("/edit/{index}")
    public String editPart(Model model,
                           @PathVariable("index") Long id) {
        Optional<Part> existingPart = partRepository.findById(id);
        model.addAttribute("part", existingPart);
        return "part";
    }

    @PostMapping("/edit/{index}")
    public String editPartProcess(@ModelAttribute Part part) {
        partRepository.save(part);
        return "redirect:/part/all";
    }
}
