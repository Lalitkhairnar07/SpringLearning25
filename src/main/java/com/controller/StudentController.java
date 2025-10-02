package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.StudentBean;
import com.dao.StudentDao;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;



@Controller
public class StudentController {

	@Autowired
	StudentDao studentDao;
	
	@GetMapping("/newstudent")
	public String addStudent() {
		
		return "AddStudent";
	}

	@PostMapping("/savestudent")
	public String saveStudent(@Validated StudentBean studentBean, BindingResult result, Model model) {
		
		if (result.hasErrors()) {
			
			model.addAttribute("result", result);
//			${result.getFieldError("productName").getDefaultMessage()}
			
			return "AddStudent";
		
		}else {
			
			studentDao.addStudent(studentBean);
			
			return "AddStudent";
		}
		
	}
	
	@GetMapping("/liststudent")
	public String listStudent(Model model) {
		
		List<StudentBean> students = studentDao.listStudent();
		model.addAttribute("students", students);
		
		return "StudentList";
	}
	
	
	@GetMapping("/deletestudent")
	public String deleteStdudent(Integer studentId) {
		
		studentDao.deleteStudent(studentId); 
		System.out.println("Delete successfully");
		return "redirect:/liststudent";
	}
	
	@GetMapping("/editstudent")
	public String editStudent(Integer studentId, Model model) {
		
		StudentBean x = studentDao.editStdudent(studentId);
		model.addAttribute("x", x);
		return "EditStudent";
	}
	
	@PostMapping("/updatestudent")
	public String updateStudent(StudentBean studentBean) {
		
		studentDao.updateStudent(studentBean);
		
		return "redirect:/liststudent";
	}
	
	
	
}
