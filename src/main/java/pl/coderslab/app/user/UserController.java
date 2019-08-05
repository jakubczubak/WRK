package pl.coderslab.app.user;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;

@Controller
@RequestMapping("/user")
@SessionAttributes("remoteUser")
public class UserController {

    private UserService userService;
    private UserRepository userRepository;
    private BCryptPasswordEncoder bCryptPasswordEncoder;



    public UserController(UserService userService, UserRepository userRepository, BCryptPasswordEncoder bCryptPasswordEncoder){
        this.userService=userService;
        this.userRepository=userRepository;
        this.bCryptPasswordEncoder=bCryptPasswordEncoder;
    }



    @GetMapping("/edit")
    public String getUser(Model model, HttpServletRequest request, Principal principal){
        model.addAttribute("remoteUser", request.getRemoteUser());
        User user = userService.findUserByEmail(principal.getName());
        model.addAttribute("user", user);
        return "user";
    }

    @PostMapping("/edit")
    public String editUser(@ModelAttribute @Validated User user, BindingResult result,Principal principal){
        if(result.hasErrors()){
            return "user";
        }


        userService.saveUser(user);

        return "redirect:/user/edit?success";
    }
}
