package com.ems.service;

import com.ems.model.Employee;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface EmployeeService {

    /*
     * @param employee
     * @return This method is used for inserting the record into the employee table by using Dao
     * */
    public int insertRecord(Employee employee);

    /*
     * @param
     * @return This method is used for inserting the record into the employee table by using Dao
     *
     * */
    public List<Employee> getAllEmployees();


}
