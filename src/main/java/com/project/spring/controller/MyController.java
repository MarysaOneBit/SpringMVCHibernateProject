package com.project.spring.controller;

import com.project.spring.entity.User;
import com.project.spring.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class MyController {

    @Autowired
    private UserService userService;

    @RequestMapping("/")
    public String showAllUsers(Model model) {
        List<User> allUsers = userService.getAllUsers();
        model.addAttribute("allUsers", allUsers);
        return "all-users";
    }

    @RequestMapping("/addNewUser")
    public String addUser(Model model) {
        User newUser = new User();
        model.addAttribute("user", newUser);
        return "user-info";
    }

    @RequestMapping("/saveUser")
    public String saveNewUser(@ModelAttribute("user") User newUser) {
        userService.saveUser(newUser);
        return "redirect:/";
    }

    @RequestMapping("/updatedInfo")
    public String updatedUsers(@RequestParam("userId") int id, Model model) {
        User user = userService.getUserById(id);
        model.addAttribute("user", user);
        return "user-info";
    }

    @RequestMapping("/deleteUser")
    public String deleteUser(@RequestParam("userId") int id) {
        userService.deleteUser(id);
        return "redirect:/";
    }
}
