package com.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.EmployeeBean;
import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.dao.EmployeeDao;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;



@Controller
public class EmployeeController {
	
	@Autowired
	Cloudinary cloudinary;	
	
	
	@Autowired
	EmployeeDao employeeDao;
	
	@GetMapping("/newemployee")
	public String addEmployee() {
	    return "Employee";
	}
	
	@PostMapping("/saveemployee")
	public String postMethodName(EmployeeBean employeeBean) {
		//TODO: process POST request
		
		System.out.println(employeeBean.getFirstName());
		System.out.println(employeeBean.getProfilePic().getOriginalFilename());
		
		try {
			
			Map result = cloudinary.uploader().upload(employeeBean.getProfilePic().getBytes(), 
					ObjectUtils.asMap("resource_type", "auto"));
			
			String profitPicUrl = result.get("secure_url").toString();
			
			employeeBean.setProfilePicUrl(profitPicUrl);
			
			employeeDao.addEmployee(employeeBean);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return "Home";
	}
	
	

}
