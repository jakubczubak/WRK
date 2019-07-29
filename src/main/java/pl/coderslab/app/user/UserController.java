package pl.coderslab.app.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

    UserRepository userRepository;

    public String UserController(Model model){
        model.addAttribute("user", new User());
        return "registration";

    }
}
