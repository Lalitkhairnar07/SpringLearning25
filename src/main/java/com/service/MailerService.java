package com.service;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class MailerService {

	@Autowired
    private JavaMailSender mailSender;

	public void sendWelcomeMail(String email) {
		
		SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom("sarkarofcoder0808@gmail.com");
        message.setTo(email);
        message.setSubject("Welcome a board");
        message.setText("કેમ છો ?");
        mailSender.send(message);
        System.out.println("Email sent successfully to " + email);
    }
		
	
	public String sendForgotPasswordOtp(String email) {
		
		String otp = String.format("%06d", new Random().nextInt(999999));
		
	}
	
}
