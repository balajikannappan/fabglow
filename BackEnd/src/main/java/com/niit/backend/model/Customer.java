package com.niit.backend.model;




import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Customer {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	private String firstName,lastName,phoneNumber;
	
	@OneToOne(cascade=CascadeType.ALL)
	private User user;
	
	//while object creation happens, object becomes alive only for customer, but not for the inner related objects. i.e., customer object persists, but user, billing address etc are freshers..(transient types).. so we need to 'cascade' the operations that are happening to customer over the inner references also 
	// if new name required for this column, add 'joincolumn' entity
	
	@OneToOne(cascade=CascadeType.ALL)
	private BillingAddress billingAddress;
	
	@OneToOne(cascade=CascadeType.ALL)
	private ShippingAddress shippingAddress;
	
	/*@OneToOne(cascade=CascadeType.ALL)
	private CartInfo cartinfo; //fk column cart_id
	*/
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public BillingAddress getBillingAddress() {
		return billingAddress;
	}
	public void setBillingAddress(BillingAddress billingAddress) {
		this.billingAddress = billingAddress;
	}
	public ShippingAddress getShippingAddress() {
		return shippingAddress;
	}
	public void setShippingAddress(ShippingAddress shippingAddress) {
		this.shippingAddress = shippingAddress;
	}
	/*public CartInfo getCartinfo() {
		return cartinfo;
	}
	public void setCartinfo(CartInfo cartinfo) {
		this.cartinfo = cartinfo;
	}
	*/
	
	//constructor
	public Customer() {
		System.out.println("customer object is created");
	}
	
}
