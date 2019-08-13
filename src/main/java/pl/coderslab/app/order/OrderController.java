package pl.coderslab.app.order;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.app.brakeCaliper.BrakeCaliper;
import pl.coderslab.app.brakeCaliper.BrakeCaliperRepository;
import pl.coderslab.app.customer.Customer;
import pl.coderslab.app.customer.CustomerReposiotry;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/order")
public class OrderController {

    private OrderDAO orderDAO;
    private CustomerReposiotry customerReposiotry;
    private BrakeCaliperRepository brakeCaliperRepository;
    private OrderRepository orderRepository;

    public OrderController(OrderRepository orderRepository, BrakeCaliperRepository brakeCaliperRepository, CustomerReposiotry customerReposiotry,
                           OrderDAO orderDAO) {
        this.orderRepository = orderRepository;
        this.brakeCaliperRepository = brakeCaliperRepository;
        this.customerReposiotry = customerReposiotry;
        this.orderDAO = orderDAO;

    }

    @GetMapping("/add")
    public String addOrder(Model model) {
        model.addAttribute("order", new Order());
        return "addOrder";
    }

    @PostMapping("/add")
    public String addOrderProcess(@ModelAttribute Order order) {
        order.setFinish(false);
        orderRepository.save(order);
        return "redirect:/order/all";
    }

    @GetMapping("/all")
    public String getAllOrders(Model model) {
        List<Order> orderList = orderRepository.findAll();
        model.addAttribute("orderList", orderList);
        return "orderList";
    }

    @GetMapping("/delete/{index}")
    public String deleteOrder(@PathVariable("index") Long id) {
        orderRepository.delete(orderRepository.getOne(id));
        return "redirect:/order/all";
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
        return "redirect:/order/all";
    }

    @GetMapping("/finish/{index}")
    public String finishOrder(@PathVariable("index") Long id) {
        Order existOrder = orderDAO.findById(id);
        existOrder.setFinish(true);
        orderRepository.save(existOrder);
        return "redirect:/order/all";
    }

    @GetMapping("/notFinish/{index}")
    public String notFinishOrder(@PathVariable("index") Long id) {
        Order existOrder = orderDAO.findById(id);
        existOrder.setFinish(false);
        orderRepository.save(existOrder);
        return "redirect:/order/all";
    }

    @GetMapping("/details/{index}")
    public String getDetails(@PathVariable("index") Long id,
                             Model model) {
        Order existOrder = orderDAO.findById(id);
        model.addAttribute("existOrder", existOrder);
        return "orderDetails";
    }


    @GetMapping("/activeOrders")
    public String getAllDoneOrders(Model model) {
        List<Order> orderList = orderRepository.findAllByIsFinish(false);
        model.addAttribute("orderList", orderList);
        return "activeOrders";
    }

    @ModelAttribute("brakeCalipers")
    public List<BrakeCaliper> getAllBrakeCalipers() {
        return brakeCaliperRepository.findAll();
    }

    @ModelAttribute("customers")
    public List<Customer> getAllCustomer() {
        return customerReposiotry.findAll();
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

