package com.dao;

import org.apache.jasper.compiler.Node.UseBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.UserBean;

@Repository
public class UserDao {

	@Autowired
	JdbcTemplate stmt;
	
	
	public void addUser(UserBean userBean) {
		
		stmt.update("INSERT INTO users (firstName, lastName, email, password) values (?, ?, ?, ?)",
				userBean.getFirstName(), userBean.getLastName(), userBean.getEmail(), userBean.getPassword());
		
	}
	
}
