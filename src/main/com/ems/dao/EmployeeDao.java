package com.ems.dao;

import com.ems.model.Employee;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EmployeeDao {

    /*
    * @param employee
    * @return This method is used for inserting the record into the employee table
    * */
    public int insert(Employee employee);

    /*
     * @param employee
     * @return This method is used for get list of employee from database
     * */
    public List<Employee> getAllEmployees();

}
