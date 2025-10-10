package com.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.EmployeeBean;

@Repository
public class EmployeeDao {

	@Autowired
	JdbcTemplate stmt;
	
	public void addEmployee(EmployeeBean employeeBean) {
		
		stmt.update("INSERT INTO employees (firstName, lastName, email, password, profilePicUrl) VALUES (?, ?, ?, ?, ?)", 
				employeeBean.getFirstName(), employeeBean.getLastName(), employeeBean.getEmail(), employeeBean.getPassword(), employeeBean.getProfilePicUrl());
		
	}
	
}
