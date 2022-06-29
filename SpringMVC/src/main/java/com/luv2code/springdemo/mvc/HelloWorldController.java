package com.luv2code.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class HelloWorldController {

	@RequestMapping("/showForm")
	public String showForm() {
		return "helloworld-form";
	}
	
	@RequestMapping("/processForm")
	public String processForm() {
		return "helloworld";
	}
	
	@RequestMapping("/processFormTwo")
	public String letsCaps(HttpServletRequest request, Model model) {
		//read request parameter
		String theName = request.getParameter("studentName");
		
		//convert data to caps
		theName = theName.toUpperCase();
		//create the message
		String result = "Yo! "+theName;
		//add message to model
		model.addAttribute("message", result);
		
		return "helloworld";
	}
}