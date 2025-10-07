package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.UserBean;
import com.dao.UserDao;

@Controller
public class UserController {

//	@GetMapping("/signup")
//	public String openSignup() {
//		return "Signup";
//	}
	
	@Autowired
	PasswordEncoder enocder;
	
	@Autowired
	JdbcTemplate stmt;
	
	@Autowired
	UserDao userDao;
	
	@PostMapping("/saveuser")
	public String savedUser(String firstName, String lastName, String email, String password, String gender, String city,Model model) {
		
		System.out.println(firstName);
		System.out.println(lastName);
		System.out.println(email);
		System.out.println(password);
		System.out.println(gender);
		System.out.println(city);
		
		//validation
		
		boolean isError = false;
		
		if(firstName == null || firstName.isBlank()) {
			isError = true;
			model.addAttribute("firstNameError", "Enter Your First Name");
		}
		
		if(lastName == null || lastName.isBlank()) {
			isError = true;
			model.addAttribute("lastNameError", "Enter Your Last Name");
		}
		
		if(email == null || email.isBlank()) {
			isError = true;
			model.addAttribute("emailError", "Email Is Required");
		}
		
		if(password == null || password.isBlank()) {
			isError = true;
			model.addAttribute("passwordError", "Password is Required");
		}
		
		if(gender == null || gender.isBlank()) {
			isError = true;
			model.addAttribute("genderError", "Please Select your Gender");
		}
		
		if(city == null || city.isBlank()) {
			isError = true;
			model.addAttribute("cityError", "Select your City");
		}
		
		if(isError == true) {
			return "Signup";
		}
		
		else {
			
//			stmt.update("INSERT INTO users (firstName, lastName, email, password) values (?, ?, ?, ?)",firstName, lastName, email, password);
			
			
//			BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
			
			String encrytedPassword = enocder.encode(password);
			
			System.out.println("encrypted Password => " + encrytedPassword);
			
			UserBean userBean = new UserBean();
			
			userBean.setFirstName(firstName);
			userBean.setLastName(lastName);
			userBean.setEmail(email);
			userBean.setPassword(encrytedPassword);
			
			userDao.addUser(userBean);
			
			return "Login";
		}
		
	}
}
