package com.demo.EmployeeDirectory.Controller;

import java.util.List;
import java.util.Optional;

import com.demo.EmployeeDirectory.PathModel.Model;
import com.demo.EmployeeDirectory.Repository.Repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

@Controller
public class Controller1 {

    @Autowired
    private Repository repo;

    // Show login page
    @GetMapping("/")
    public String home() {
        return "login";
    }

    // Logout handler
    @GetMapping("/logout")
    public String logout() {
        return "redirect:/";
    }

    // Login check
    @PostMapping("/login")
    public String login(@RequestParam String username,
                        @RequestParam String password,
                        ModelMap model) {
        if ("admin".equals(username) && "admin".equals(password)) {
            return "redirect:/view";
        } else {
            model.addAttribute("error", "Invalid username or password");
            return "login";
        }
    }

    // View all employees
    @GetMapping("/view")
    public String viewEmployees(ModelMap model) {
        List<Model> employees = repo.findAll();
        model.addAttribute("employees", employees);
        return "view";
    }

    // Show form to add employee
    @GetMapping("/add")
    public String addForm(ModelMap model) {
        model.addAttribute("employee", new Model());
        return "add";
    }

    // Save new employee
    @PostMapping("/addEmployee")
    public String addEmployee(@ModelAttribute("employee") Model employee, ModelMap model) {
        try {
            repo.save(employee);
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("error", "Failed to add employee.");
            return "add";
        }
        return "redirect:/view";
    }

    // Show edit form
    @GetMapping("/edit/{id}")
    public String editEmployee(@PathVariable int id, ModelMap model) {
        Optional<Model> optional = repo.findById(id);
        if (optional.isPresent()) {
            model.addAttribute("employee", optional.get());
            return "edit";
        } else {
            model.addAttribute("error", "Employee not found.");
            return "redirect:/view";
        }
    }

    // Update employee
    @PostMapping("/update")
    public String updateEmployee(@ModelAttribute("employee") Model employee) {
        repo.save(employee);
        return "redirect:/view";
    }


    // Delete employee
    @GetMapping("/delete/{id}")
    public String deleteEmployee(@PathVariable int id) {
        repo.deleteById(id);
        return "redirect:/view";
    }
}
