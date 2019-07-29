package pl.coderslab.app.homePage;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.app.user.User;
import pl.coderslab.app.user.UserRepository;

import javax.servlet.http.HttpServletRequest;
import java.util.HashSet;
import java.util.Set;

@Controller
public class HomePageController {

    private UserRepository userRepository;
    private BCryptPasswordEncoder passwordEncoder;

    public HomePageController(UserRepository userRepository, BCryptPasswordEncoder passwordEncoder){
        this.userRepository=userRepository;
        this.passwordEncoder=passwordEncoder;
    }

    @RequestMapping("/")
    public String hello(Model model, HttpServletRequest request) {
        model.addAttribute("user",request.getRemoteUser());

        return "index";
    }

    @GetMapping("/mylogin")
    public String login(Model model){
        return "login";
    }

    @GetMapping("/myregistration")
    public String register(Model model){
        model.addAttribute("user", new User());
        return "registration";
    }

    @PostMapping ("/myregistration")
    public String processRegister(@ModelAttribute User user){
        return "redirect:/mylogin";
    }






}
