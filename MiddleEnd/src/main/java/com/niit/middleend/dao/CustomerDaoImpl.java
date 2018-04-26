package com.niit.middleend.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.niit.backend.model.CartInfo;
import com.niit.backend.model.Customer;

@Repository
@Transactional
public class CustomerDaoImpl implements CustomerDao {
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public void registerCustomer(Customer customer) {
		Session session=sessionFactory.getCurrentSession();
		//create authorities
		//create cart
		//set enabled as true
		
		customer.getUser().setEnabled(true);
		//customer.getUser().setRole(role);
		
		//authorities has an object of user and user has an object of authorities
		
		/*CartInfo cartInfo=new CartInfo();
		customer.setCartinfo(cartInfo);
		cartInfo.setCustomer(customer);
		*/
		//
		session.save(customer);  //insert into customer values(...)
		
	}
	
}
