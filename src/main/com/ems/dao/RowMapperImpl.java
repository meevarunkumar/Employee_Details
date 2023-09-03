package com.ems.dao;


import com.ems.model.Employee;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class RowMapperImpl implements RowMapper<Employee> {

    @Override
    public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
        Employee employee=new Employee();
        employee.seteId(rs.getInt(1));
        employee.setName(rs.getString(2));
        employee.setDob(rs.getString(3));
        employee.setGender(rs.getString(4));
        employee.setAddress(rs.getString(5));
        employee.setCity(rs.getString(6));
        employee.setState(rs.getString(7));
        employee.setEmail(rs.getString(8));
        employee.setPassword(rs.getString(9));
        return employee;
    }
}
