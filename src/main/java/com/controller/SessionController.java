package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SessionController {

    private final CalcController calcController;

    SessionController(CalcController calcController) {
        this.calcController = calcController;
    }

	@GetMapping("/signup")
	public String openRegister() {
		return "Signup";
	}
	
//	@GetMapping("signin")
//	public String openLogin() {
//		return "Login";
//	}
	
//	@GetMapping("/forgotpassword")
//	public String openForgotPass() {
//		return "ForgotPassword";
//	}
	
}
