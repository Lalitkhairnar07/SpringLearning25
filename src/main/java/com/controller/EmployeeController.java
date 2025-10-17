package com.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.EmployeeBean;
import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.dao.EmployeeDao;
import com.service.MailerService;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class EmployeeController {

	@Autowired
	Cloudinary cloudinary;

	@Autowired
	EmployeeDao employeeDao;
	
	@Autowired
	MailerService mailerService;
	
	 // temporarily store OTP and email (for demo only)
    private String sentOtp;
    private String userEmail;
	

    @GetMapping("/login")
    public String login() {
        return "LoginEmployee";
    }
    
    
	
	@GetMapping("/newemployee")
	public String addEmployee() {
		return "Employee";
	}

	@PostMapping("/saveemployee")
	public String postMethodName(EmployeeBean employeeBean) {
		
		
		try {

			if (employeeBean.getProfilePic() != null  && !employeeBean.getProfilePic().isEmpty()) {

				Map result = cloudinary.uploader().upload(employeeBean.getProfilePic().getBytes(),
						ObjectUtils.asMap("resource_type", "auto"));

				String profitPicUrl = result.get("secure_url").toString();

				employeeBean.setProfilePicUrl(profitPicUrl);
			}
			employeeDao.addEmployee(employeeBean);
			
			mailerService.sendWelcomeMail(employeeBean.getEmail());

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:/listemp";
	}

	@GetMapping("/listemp")
	public String listEmployee(Model model) {

		List<EmployeeBean> employeeList = employeeDao.getAllEmployee();

		model.addAttribute("employeeList", employeeList);

		return "ListEmployee";
	}
	
	
	
	// step 1 : Show forgot password form
	
	@GetMapping("/forgot-password")
	public String showForgotPasswordForm() {
		
		return "Forgot-Password";
	}
	
	
	// step 2 : Send otp to entered email
	
	@PostMapping("/forgot-password")
	public String sendOtp(@RequestParam("email") String email, Model model) {
		
		userEmail = email;
		sentOtp = mailerService.sendForgotPasswordOtp(email); // send OTP to mail
		
		model.addAttribute("email", email);
		model.addAttribute("msg",  "✅ OTP sent successfully to " + email);
		
		
		return "ResetPassword"; // open OTP + new password form
	}
	
	
	// Step 3 : Verify OTP and reset password (just demo)
	
	@PostMapping("/reset-password")
	public String resetPassword(@RequestParam("otp") String otp, @RequestParam("newPassword") String newPassword, Model model) {
		
		if(otp.equals(sentOtp)) {
			
			// Normally: update password in database
			System.out.println("Password for " + userEmail + " changed to: " + newPassword);
			
			// ✅ Update password in database
			employeeDao.updatePasswordByEmail(userEmail, newPassword);
			
			model.addAttribute("msg", "✅ Password changed successfully for " + userEmail);
			
			return "Login";  // redirect to login.jsp
		}else {
			
			model.addAttribute("error", "❌ Invalid OTP. Please try again.");
			model.addAttribute("email", userEmail);
			
			return "ResetPassword";
		}
		
		
	}
	

}
