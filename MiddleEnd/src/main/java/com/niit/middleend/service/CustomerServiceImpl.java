package com.niit.middleend.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.backend.model.Customer;
import com.niit.middleend.dao.CustomerDao;

@Service
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	private CustomerDao customerDao;
	@Override
	public void registerCustomer(Customer customer) {
		 customerDao.registerCustomer(customer);

	}

}
