package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class VotingController {

    @GetMapping("/votingform")
    public String VotingForm() {
        return "VotingForm";
    }

    @PostMapping("/submitvotingform")
    public String CheckVoting(String name, Integer byear, String gender, Model model) {

        System.out.println(name);
        System.out.println(byear);
        System.out.println(gender);

        // convert String → int
        Integer age = 2025 - byear;
        System.out.println(age);

        if (gender.equals("male") && age > 17) {
        	
            System.out.println("Eligible");
            model.addAttribute("msg","eligible to vote!");
            
        } else if (gender.equals("female") && age > 21) {
        	
            System.out.println("Eligible");
            model.addAttribute("msg","eligible to vote!");
            
        } else {
        	
            System.out.println("Not Eligible");
            model.addAttribute("msg","Not eligible to vote!");
        }

        return "VotingMessage";
    }
}
