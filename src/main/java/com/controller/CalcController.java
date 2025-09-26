package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class CalcController {

	@GetMapping("/calcform")
	public String openCalc() {
		return "Calculator";
	}
	
	@PostMapping("/result")
	public String Result(int no1, int no2) {
		
		System.out.println(no1);
		System.out.println(no2);
		
		return "Result";
	}
	
}
