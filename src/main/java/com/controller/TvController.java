package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.LaptopBean;
import com.bean.TvBean;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;



@Controller
public class TvController {

	@Autowired
	JdbcTemplate stmt;
	
	@GetMapping("/addtv")
	public String addTv() {
		return "AddTv";
	}
	
	@PostMapping("/savetv")  
	public String saveTv(TvBean tvBean) {
		
		// DB INSERT 
		
		String insertQ = "INSERT INTO tv (modelName, price, qty, brand, inch) VALUES (?,?,?,?,?)";
		stmt.update(insertQ, tvBean.getModelName(), tvBean.getPrice(), tvBean.getQty(), tvBean.getBrand(), tvBean.getInch());
		
		return "Home";
	}
	
	
	@GetMapping("/listtv")
	public String listTv(Model model) {
		
		//GET TOTAL TV LIST
		
		String selectQ = "SELECT * FROM tv";
		
		List<TvBean> tv = stmt.query(selectQ, new BeanPropertyRowMapper(TvBean.class));
		model.addAttribute("tv", tv);
		
		return "TvList";
	}
	
	@GetMapping("/deletetv")
	public String deleteTv(Integer tvId) {
		
		//DELETE TV 
		
		String deleteQ = "DELETE FROM tv WHERE tvId = ?";
		stmt.update(deleteQ,tvId);
		
		return "redirect:/listtv";
	}
	
	@GetMapping("/tvdetail")
	public String deatilTV(Integer tvId,Model model) {
		
		LaptopBean x = stmt.queryForObject("select * from tv where tvId = ?", new BeanPropertyRowMapper<>(LaptopBean.class),tvId);
		model.addAttribute("x",x);
		return "ViewTV";
	}
	
	
	
	
	
}
