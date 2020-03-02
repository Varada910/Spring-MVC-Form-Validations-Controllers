package com.luv2code.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {
	
	//need controller to show the form
	
	@RequestMapping("/showForm")
	public String showForm() {
		
		return "helloworld-form";
	}
	
	
	//need controller to process the form
	@RequestMapping("/processForm")
	public String processForm() {
		return "HelloWorld";
	}
	
	//new controller method to add form data
	//and data to model
	@RequestMapping("/processFormVersionTwo")
	public String letsShoutDude(HttpServletRequest request, Model model) {
		
		//read request parameter from HTML form
		String theName=request.getParameter("studentName");
		//convert data to caps
		theName=theName.toUpperCase();
		//create a message
		
			String result="Yo"+theName;
			
			//add message to model
			
			model.addAttribute("message",result);
		return "HelloWorld";
		
	}
	
	@RequestMapping("/processFormVersionThree")
	public String processFormVersionThree(@RequestParam("studentName") String theName, Model model) {
		
		
		//convert data to caps
		theName=theName.toUpperCase();
		//create a message
		
			String result="Hey my friend"+theName;
			
			//add message to model
			
			model.addAttribute("message",result);
		return "HelloWorld";
		
	}
	
	

}
