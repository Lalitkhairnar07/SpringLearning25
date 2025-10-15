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

}
