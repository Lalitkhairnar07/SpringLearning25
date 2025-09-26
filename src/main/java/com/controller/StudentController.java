package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;



@Controller
public class StudentController {

    private final SessionController sessionController;

    StudentController(SessionController sessionController) {
        this.sessionController = sessionController;
    }

	@GetMapping("/studentform")
	public String StudentForm() {
		return "StudentForm";
	}
	
	@PostMapping("/studentdata")
	public String postMethodName(String studentName, String studentEmail, String studentPhone, String gender, String studentCity, String studentAddress, Model model) {
		
		System.out.println(studentName);
		
		model.addAttribute("studentName",studentName);
		model.addAttribute("studentEmail",studentEmail);
		model.addAttribute("studentPhone",studentPhone);
		model.addAttribute("gender",gender);
		model.addAttribute("studentCity",studentCity);
		model.addAttribute("studentAddress",studentAddress);
		
		//validation
		
		boolean isError = false;
		
		if(studentName == null || studentName.isBlank()) {
			isError = true;
			model.addAttribute("nameError", "Enter your Name");
		}
		
		if(studentEmail == null || studentEmail.isBlank()) {
			isError = true;
			model.addAttribute("emailError", "Enter your Email");
		}
		
		if(studentPhone == null || studentPhone.isBlank()) {
			isError = true;
			model.addAttribute("phoneError", "Enter Phone Number");
		}
		
		if(gender == null || gender.isBlank()) {
			isError = true;
			model.addAttribute("genderError", "Select your Gender");
		}
		
		if(studentCity == null || studentCity.isBlank()) {
			isError = true;
			model.addAttribute("cityError", "Select City");
		}
		
		if(studentAddress == null || studentAddress.isBlank()) {
			isError = true;
			model.addAttribute("addressError", "Enter Student Address");
		}
		
		if(isError == true) {
			return "StudentForm";
		}
		
		else {
			return "StudentDetails" ;
		}
			
	}
	
}
