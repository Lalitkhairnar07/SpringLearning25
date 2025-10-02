package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.FoodBean;
import com.dao.FoodDao;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;



@Controller
public class FoodController {

	@Autowired
	FoodDao foodDao;
	
	@GetMapping("/addfood")
	public String addFood(FoodBean foodBean) {
		
		return "AddFood";
	}
	
	
	@PostMapping("/savefood")
	public String saveFood(FoodBean foodBean) {
		
		foodDao.addFood(foodBean);
		
		return "redirect:/listfood";
	}
	
	@GetMapping("/listfood")
	public String listFood(Model model) {
		
		List<FoodBean> items = foodDao.listFood();
		model.addAttribute("items", items);
		
		return "ListFood";
	}
	
	@GetMapping("/deletefooditem")
	public String deleteFoodItem(Integer foodItemId) {
	
		foodDao.deleteFoodItem(foodItemId);
		
		return "redirect:/listfood";
	}
	
	
	@GetMapping("/editfooditem")
	public String editFoodItem(Integer foodItemId, Model model) {
		
		FoodBean x = foodDao.editFoodItem(foodItemId);
		model.addAttribute("x", x);
		
		return "UpdateFoodItem";
	}
	
	@PostMapping("/updatefooditem")
	public String updateFoodItem(FoodBean foodBean) {
		
		foodDao.updateFoodItem(foodBean);
		
		return "redirect:/listfood";
	}
	
	
	
	
	
}
