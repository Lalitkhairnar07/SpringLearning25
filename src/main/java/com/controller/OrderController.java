package com.controller;

import java.io.ObjectInputStream.GetField;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.ProductBean;

@Controller
public class OrderController {

	@GetMapping("/ordred")
	public String OpenOrder() {
		return "ProductOrder";
	}
	
//	@PostMapping("/order")
//	public String Order(String productName, String category, String qty, String price, String address) {
//		
//		System.out.println(productName);
//		System.out.println(category);
//		System.out.println(qty);
//		System.out.println(price);
//		System.out.println(address);
//		
//		return "OrderSuccessfully";
//	}
	
	@PostMapping("/order")
	public String Order(@Validated ProductBean product, BindingResult result, Model model) {
		
		System.out.println(product.getProductName());
		System.out.println(product.getCategory());
		System.out.println(product.getQty());
		System.out.println(product.getPrice());
		System.out.println(product.getAddress());
		
		
		
		if(result.hasErrors()) {
			
			model.addAttribute("result", result);
			return "ProductOrder";
		}
		else {
			return "OrderSuccessfully";
		}
		
	}
	
}
