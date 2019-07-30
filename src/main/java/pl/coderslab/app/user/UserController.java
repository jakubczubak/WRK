package pl.coderslab.app.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/user")
public class UserController {

    @GetMapping("/")
    public String getUser(Model model, HttpServletRequest request){
        model.addAttribute("remoteUser", request.getRemoteUser());
        return "user";
    }
}
