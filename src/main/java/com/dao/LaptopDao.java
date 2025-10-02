package com.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.LaptopBean;

@Repository
public class LaptopDao {

	@Autowired
	JdbcTemplate stmt;
	
	public void addLaptop(LaptopBean laptopBean) {
		
		String insertQurrey = "INSERT INTO laptop(modelName, ram, ssd, price) VALUES(?,?,?,?) ";
		stmt.update(insertQurrey, laptopBean.getModelName(), laptopBean.getRam(), laptopBean.getSsd(), laptopBean.getPrice());
		
		
	}
	
}
