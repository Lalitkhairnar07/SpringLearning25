package com;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;

@SpringBootApplication
public class SpringLearning25Application {

	public static void main(String[] args) {
		SpringApplication.run(SpringLearning25Application.class, args);
	}
	
	@Bean
	PasswordEncoder getPasswordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	@Bean
	Cloudinary cloudinary() {
		
		return new Cloudinary(ObjectUtils.asMap(
				"cloud_name", "dtuy4wvma",
	            "api_key", "232291785372796",
	            "api_secret", "nmZwqFtm_H5Nin5ZUVR-qCw_EqU"
				));
	}
		

}
