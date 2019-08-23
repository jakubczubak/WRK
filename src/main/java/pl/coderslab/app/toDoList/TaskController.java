package pl.coderslab.app.toDoList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/task")
public class TaskController {

    private TaskRepository taskRepository;

    public TaskController(TaskRepository taskRepository) {
        this.taskRepository = taskRepository;
    }

    @GetMapping("/add")
    public String addTask(Model model) {
        model.addAttribute("task", new Task());

        return "task";
    }

    @PostMapping("/add")
    public String addTaskProcess(@ModelAttribute Task task) {
        taskRepository.save(task);
        return "redirect:/task/all";
    }

    @GetMapping("/all")
    public String getAllTasks(Model model) {
        List<Task> taskList = taskRepository.findAll();
        model.addAttribute("taskList", taskList);
        return "taskList";
    }

    @GetMapping("/edit/{index}")
    public String updateTask(Model model,
                             @PathVariable("index") Long id) {
        Task existingTask = taskRepository.findById(id).get();
        model.addAttribute("task", existingTask);
        return "task";
    }

    @PostMapping("/edit/{index}")
    public String updateTaskProcess(@ModelAttribute Task task) {
        taskRepository.save(task);
        return "redirect:/task/all";
    }

    @GetMapping("/delete/{index}")
    public String deleteTask(@PathVariable("index") Long id) {
        taskRepository.delete(taskRepository.findById(id).get());
        return "redirect:/task/all";
    }


}
