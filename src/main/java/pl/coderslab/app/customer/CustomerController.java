package pl.coderslab.app.customer;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.app.part.Part;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    private CustomerReposiotry customerReposiotry;

    public CustomerController(CustomerReposiotry customerReposiotry) {
        this.customerReposiotry = customerReposiotry;
    }

    @GetMapping("/add")
    public String getCustomer(Model model) {
        model.addAttribute("customer", new Customer());
        return "customer";
    }

    @PostMapping("/add")
    public String getCustomerProcess(@ModelAttribute @Validated Customer customer,
                                     BindingResult result) {
        if (result.hasErrors()) {
            return "customer";
        }
        customerReposiotry.save(customer);
        return "redirect:/customer/add?success";
    }

    @GetMapping("/all")
    public String getAllCustomer(Model model) {
        List<Customer> customerList = customerReposiotry.findAll();
        model.addAttribute("customerList", customerList);
        return "customerList";
    }

    @GetMapping("/delete/{index}")
    public String deleteCustomer(@PathVariable("index") Long id) {
        customerReposiotry.delete(customerReposiotry.getOne(id));
        return "redirect:/customer/all";
    }

    @GetMapping("/edit/{index}")
    public String editCustomer(Model model,
                               @PathVariable("index") Long id) {
        Optional<Customer> existingCustomer = customerReposiotry.findById(id);
        model.addAttribute("customer", existingCustomer);
        return "customer";
    }

    @PostMapping("/edit/{index}")
    public String editPartProcess(@ModelAttribute Customer customer) {
        customerReposiotry.save(customer);
        return "redirect:/customer/all";
    }

}
