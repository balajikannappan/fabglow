package com.niit.frontend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
	
	@RequestMapping(value= {"/","/index"})
	public String gotoIndex() {
		//returns page name;so ret type is string
		return "home";
	}

	@RequestMapping("/contact")
	public String gotoContactUs() {
		//returns page name;so ret type is string
		return "contactus";
	}
	@RequestMapping("/test")
	public String gotoTest() {
		//returns page name;so ret type is string
		return "test";
	}
	
	@RequestMapping("/register")
	public String gotoReg() {
		//returns page name;so ret type is string
		return "signup";
	}
	
	@RequestMapping("/login")
	public String gotoLogin() {
		//returns page name;so ret type is string
		return "login";
	}
	
	@RequestMapping("/about")
	public String gotoAbout() {
		//returns page name;so ret type is string
		return "aboutus";
	}
}