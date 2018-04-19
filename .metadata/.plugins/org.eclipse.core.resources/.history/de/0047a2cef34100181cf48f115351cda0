package com.niit.frontend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import com.niit.backend.model.Customer;

@Controller
public class CustomerController {
	public ModelAndView getRegistrationForm() {
		return new ModelAndView("signup","customer",new Customer());
	}
}

// we are creating new object and sending it to the jsp form. the values filled will be assigned to that object