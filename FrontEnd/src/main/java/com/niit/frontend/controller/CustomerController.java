package com.niit.frontend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.backend.model.Customer;
import com.niit.middleend.service.CustomerService;

@Controller
public class CustomerController {
	@Autowired
	private CustomerService customerService;
	@RequestMapping(value="/all/regform")
	public ModelAndView getRegistrationForm() {
		return new ModelAndView("registrationform","customer",new Customer());
	}
	@RequestMapping(value="/all/registercustomer")  //this value is provided in the form action 
	public String registerCustomer(@ModelAttribute Customer customer) {
		customerService.registerCustomer(customer);
		return "login";
	}
}

// we are creating new object and sending it to the jsp form. the values filled will be assigned to that object