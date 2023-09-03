package com.ems.service.impl;

import com.ems.dao.impl.EmployeeDaoImp;
import com.ems.model.Employee;
import com.ems.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService {
    @Autowired
    EmployeeDaoImp daoImp;
    @Override
    public int insertRecord(Employee employee) {
        int c=daoImp.insert(employee);
        return c;
    }

    @Override
    public List<Employee> getAllEmployees() {
        List<Employee> employees=daoImp.getAllEmployees();
        return employees;
    }







    public EmployeeDaoImp getDaoImp() {
        return daoImp;
    }

    public void setDaoImp(EmployeeDaoImp daoImp) {
        this.daoImp = daoImp;
    }
}
