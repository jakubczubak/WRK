package pl.coderslab.app.homePage;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.app.order.Order;
import pl.coderslab.app.order.OrderDAO;
import pl.coderslab.app.order.OrderRepository;
import pl.coderslab.app.toDoList.TaskRepository;
import pl.coderslab.app.user.User;
import pl.coderslab.app.user.UserRepository;
import pl.coderslab.app.user.UserService;
import pl.coderslab.app.warehouse.WarehouseService;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;


@Controller
@SessionAttributes("remoteUser")
public class HomePageController {

    private WarehouseService warehouseService;
    private OrderDAO orderDAO;
    private UserRepository userRepository;
    private UserService userService;
    private OrderRepository orderRepository;
    private TaskRepository taskRepository;

    public HomePageController(UserRepository userRepository, UserService userService, OrderRepository orderRepository,
                              OrderDAO orderDAO, WarehouseService warehouseService, TaskRepository taskRepository) {
        this.userRepository = userRepository;
        this.userService = userService;
        this.orderRepository = orderRepository;
        this.orderDAO = orderDAO;
        this.warehouseService = warehouseService;
        this.taskRepository = taskRepository;
    }

    @RequestMapping("/")
    public String hello(Model model, HttpServletRequest request) {

        List<Order> orderList = orderRepository.findAll();
        List<Order> notFinishOrder = orderRepository.findAllByIsFinish(false);
        List<Order> orderDoneList = orderRepository.findAllByIsFinish(false);
        Order order = orderRepository.findFirstByIsFinishOrderByCreatedOnDesc(false);
        int numberOfTask = taskRepository.findAll().size();
        int numberOfPartsNeeded = warehouseService.getNumberOfPartsNeeded();
        model.addAttribute("numberOfPartsNeeded", numberOfPartsNeeded);
        model.addAttribute("remoteUser", request.getRemoteUser());
        model.addAttribute("orderSize", orderList.size());
        model.addAttribute("notFinishOrderSize", notFinishOrder.size());
        model.addAttribute("orderList", orderDoneList);
        model.addAttribute("data", order);
        model.addAttribute("numberOfTask", numberOfTask);

        return "dashboard";
    }

    @GetMapping("/mylogin")
    public String getLogin(Model model, @RequestParam(required = false) String username) {
        if (username != null) {
            model.addAttribute("username", username);
        }
        return "login";
    }

    @GetMapping("/myregistration")
    public String registration(Model model) {
        model.addAttribute("user", new User());
        return "registration";
    }

    @PostMapping("/myregistration")
    public String createNewUser(Model model, @ModelAttribute @Validated User user, BindingResult result) {
        User userExist = userRepository.findByEmail(user.getEmail());
        if (userExist != null) {
            result
                    .rejectValue("email", "error.user",
                            "There is already a user registered with the email provided");
        }
        if (result.hasErrors()) {
            return "registration";
        } else {
            userService.saveUser(user);
        }
        model.addAttribute("username", user.getFirstName());
        return "redirect:/mylogin?success";
    }


    @GetMapping("/edit/{index}")
    public String editOrder(@PathVariable("index") Long id,
                            Model model) {
        Order existOrder = orderDAO.findById(id);
        model.addAttribute("order", existOrder);
        return "addOrder";
    }

    @PostMapping("/edit/{index}")
    public String editOrderProcess(@ModelAttribute Order order) {
        orderRepository.save(order);
        return "redirect:/";
    }

    @GetMapping("/finish/{index}")
    public String finishOrder(@PathVariable("index") Long id) {
        Order existOrder = orderDAO.findById(id);
        existOrder.setFinish(true);
        orderRepository.save(existOrder);
        return "redirect:/";
    }


    @ModelAttribute("galvanicCoating")
    public List<String> powloki() {
        List<String> shell = new ArrayList<>();
        shell.add("Anode");
        shell.add("Hard anode");
        shell.add("Galvanized");
        shell.add("Without coating");
        return shell;
    }

    @ModelAttribute("axies")
    public List<String> axies() {
        List<String> axies = new ArrayList<>();
        axies.add("front");
        axies.add("back");
        return axies;
    }
}
