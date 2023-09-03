package com.ems.controller;

import com.ems.model.Employee;
import com.ems.service.impl.EmployeeServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;


import javax.annotation.Resource;
import javax.validation.Valid;


@Controller
public class InsertEmployee {
    @Resource
    private EmployeeServiceImpl employeeService;

@PostMapping("/submit")
public ModelAndView submit(@Valid @ModelAttribute Employee employee, BindingResult result,ModelAndView modelAndView ){
        employeeService.insertRecord(employee);
    modelAndView.setViewName("employeeLogin");
    return modelAndView;
}
}
