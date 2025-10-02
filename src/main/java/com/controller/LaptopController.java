package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.bean.LaptopBean;
import com.dao.LaptopDao;

import org.springframework.web.bind.annotation.RequestParam;



@Controller
public class LaptopController {
	
	@Autowired
	JdbcTemplate stmt;
	
	@Autowired
	LaptopDao laptopDao;
	
	@GetMapping("/home")
	public String Home() {
		return "Home";
	}
	
	
	@GetMapping("/newlaptop")
	public String addLaptop() {
		return "AddLaptop";
	}
	
	@PostMapping("/savelaptop")
	public String Laptop(@Validated LaptopBean laptopBean) {
		
		//db insert 
		
		laptopDao.addLaptop(laptopBean);
		return "Home";
	}
	

	@GetMapping("/listlaptop")
	public String listLaptop(Model model) {
		
		String selectQurrey = "SELECT * FROM laptop";
		
		List<LaptopBean> laptops = stmt.query(selectQurrey, new BeanPropertyRowMapper(LaptopBean.class));
		model.addAttribute("laptops", laptops);
		
		
		return "LaptopList";
	}
	
	@GetMapping("/deletelaptop")
	public String deleteLaptop(Integer id) {
		
		String deleteQurrey = "DELETE FROM laptop WHERE id = ?";
		stmt.update(deleteQurrey,id);
		
		return "redirect:/listlaptop";
	}
	
	@GetMapping("/inputid")
	public String inputId() {
		
		return "InputDeleteID";
	}
	
	
	@PostMapping("/deletelap")
	public String deleteLap(Integer id) {
		
		String deleteQurrey = "DELETE FROM laptop WHERE id = ?";
		stmt.update(deleteQurrey,id);
		
		return "redirect:/listlaptop";
	}
	
	
	@GetMapping("/searchlaptop")
	public String searchLaptop() {
		return "LaptopSearch";
	}
	
	@PostMapping("/searchlaptop")
	public String findLaptop(String modelName, Model model) {
		
		String selectQurrey = "SELECT * FROM laptop WHERE modelName LIKE ?";
		
		List<LaptopBean> laptops = stmt.query(selectQurrey, new BeanPropertyRowMapper(LaptopBean.class),"%"+modelName+"%");
		model.addAttribute("laptops", laptops);
		return "LaptopList";
	}
	
	
	@GetMapping("/detail")
	public String getMethodName(Integer id,Model model) {
		
		LaptopBean x = stmt.queryForObject("select * from laptop where id = ?", new BeanPropertyRowMapper<>(LaptopBean.class),id);
		model.addAttribute("x",x);
		return "ViewLaptop";
	}
	
	@GetMapping("/editlaptop")
	public String editLaptop(Integer id,Model model) {
		
		LaptopBean x = stmt.queryForObject("select * from laptop where id = ?", new BeanPropertyRowMapper<>(LaptopBean.class),id);
		model.addAttribute("x",x);
		
		return "EditLaptop";
	}
	
	@PostMapping("/updatelaptop")
	public String updateLaptop(LaptopBean laptopBean) {
		
		stmt.update("UPDATE laptop SET modelName = ?, ram = ?, ssd = ?, price = ? WHERE id = ?"
				,laptopBean.getModelName(),laptopBean.getRam(),laptopBean.getSsd(),laptopBean.getPrice(),laptopBean.getId());
		
		return "redirect:/listlaptop";
	}
	
	
//	
	
}
