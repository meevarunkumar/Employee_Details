package com.ems.controller;

import com.ems.model.Employee;
import com.ems.service.impl.EmployeeServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class GetAllEmployee {

    @Autowired
    private EmployeeServiceImpl employeeService;

    @GetMapping("/get-employee")
    public ModelAndView getAll(ModelAndView model){
        List<Employee> employees=employeeService.getAllEmployees();
        model.addObject("employee",employees);
        model.setViewName("get-employee");
        return  model;
    }

}
