package com.ems.dao.impl;

import com.ems.dao.EmployeeDao;
import com.ems.dao.RowMapperImpl;
import com.ems.model.Employee;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class EmployeeDaoImp implements EmployeeDao {
    private JdbcTemplate jdbcTemplate;

    public EmployeeDaoImp(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public int insert(Employee employee) {
        String query="INSERT INTO employee(name,dob,gender,address,city,state,emailid,password) VALUES (?,?,?,?,?,?,?,?,?)";
        try {
            int c = jdbcTemplate.update(query, new Object[]{employee.getName(),employee.getDob(),employee.getGender(),employee.getAddress(),employee.getCity(),employee.getState(),employee.getEmail(),employee.getPassword(),"ROLE_USER"});
            return c;
        }
        catch (Exception e){
            e.printStackTrace();
            return 0;
        }
    }

    @Override
    public List<Employee> getAllEmployees() {
        String query="SELECT * FROM employee";
        RowMapper<Employee> rowMapper= new RowMapperImpl();
        /*return jdbcTemplate.query(query, rowMapper);*/
        List<Employee> employees=jdbcTemplate.query(query, rowMapper);
        return employees;
    }


}
