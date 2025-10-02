package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.FoodBean;

@Repository
public class FoodDao {

	@Autowired
	JdbcTemplate stmt;
	
	public void addFood(FoodBean foodBean) {
		
		stmt.update("INSERT INTO food_items (name, price, qty) VALUE (?, ?, ?)", foodBean.getName(), foodBean.getPrice(), foodBean.getQty());
		
	}
	
	public List<FoodBean> listFood() {
		
		List<FoodBean> items = stmt.query("SELECT * FROM food_items", new BeanPropertyRowMapper(FoodBean.class));
		
		return items;
		
	}
	
	public void deleteFoodItem(Integer foodItemId) {
		
		stmt.update("DELETE FROM food_items WHERE foodItemId = ?",foodItemId);
		
	}
	
	public FoodBean editFoodItem(Integer foodItemId) {
		
		FoodBean x = stmt.queryForObject("SELECT * FROM food_items WHERE foodItemId = ?", new BeanPropertyRowMapper<>(FoodBean.class),foodItemId);
		
		return x;
	}
	
	public void updateFoodItem(FoodBean foodBean) {
	
		stmt.update("UPDATE food_items SET name = ?, price = ?, qty = ? WHERE foodItemId = ?", 
				foodBean.getName(), foodBean.getPrice(), foodBean.getQty(), foodBean.getFoodItemId());
		
	}
	
	
}
