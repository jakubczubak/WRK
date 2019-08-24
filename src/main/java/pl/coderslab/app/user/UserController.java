package pl.coderslab.app.user;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.app.role.Role;
import pl.coderslab.app.role.RoleRepository;

import java.security.Principal;
import java.util.Arrays;
import java.util.HashSet;

@Controller
@RequestMapping("/user")

public class UserController {

    private UserService userService;
    private UserRepository userRepository;
    private BCryptPasswordEncoder bCryptPasswordEncoder;
    private RoleRepository roleRepository;


    public UserController(UserService userService, UserRepository userRepository, BCryptPasswordEncoder bCryptPasswordEncoder, RoleRepository roleRepository) {
        this.userService = userService;
        this.userRepository = userRepository;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
        this.roleRepository = roleRepository;
    }


    @GetMapping("/edit")
    public String getUser(Model model, Principal principal) {
        User user = userService.findUserByEmail(principal.getName());
        user.setPassword("password");
        model.addAttribute("user", user);
        return "user";
    }

    @PostMapping("/edit")
    public String editUser(@ModelAttribute @Validated User user, BindingResult result, Principal principal) {
        if (result.hasErrors()) {
            return "user";
        }

        if ("password".equals(user.getPassword())) {
            userService.saveUserWhenPasswordIsNotEdit(user);
        } else {
            userService.saveUser(user);
        }

        return "redirect:/user/edit?success";
    }
}
