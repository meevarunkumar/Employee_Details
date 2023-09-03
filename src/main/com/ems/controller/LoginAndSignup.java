package com.ems.controller;

import com.ems.model.Employee;
import com.ems.service.impl.EmployeeServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.security.Principal;
import java.util.List;

@Controller
public class LoginAndSignup {


    @Autowired
    private EmployeeServiceImpl employeeService;

    @GetMapping(value = "/")
    public String getHomePage( ){
        return "employeehome";
    }


    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(HttpServletRequest request , HttpServletResponse response){
        return "employeeLogin";
    }

    @RequestMapping(value = "/signup", method = RequestMethod.GET)
    public String signup(){
        return "signup";
    }

    @RequestMapping(value = "/loginError", method = RequestMethod.GET)
    public String loginError(Model model){
        model.addAttribute("error","true");
        model.addAttribute("msg","Email and password doesn't matched ");
        return "employeeLogin";
    }

    @RequestMapping(value = "/user",method = RequestMethod.GET)
    public ModelAndView user(Principal principal, ModelAndView modelAndView){
        List<Employee> employees = employeeService.getAllEmployees();
        String name = principal.getName();
        String[] trim = name.split("@");
        modelAndView.addObject("name",trim[0]);
        modelAndView.addObject("employee",employees);
        modelAndView.setViewName("user");
        return modelAndView;
    }








    /*Logout controller*/
    @RequestMapping(value = "/logout",method = RequestMethod.GET)
    public String logout(){
        return "employeehome";
    }

}
