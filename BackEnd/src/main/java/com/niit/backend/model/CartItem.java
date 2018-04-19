package com.niit.backend.model;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

public class CartItem {
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int cartItemId;
private int quantity;
private double totalPrice;
@ManyToOne			 //many cartitemid to one user possible
private User user;
@ManyToOne			 //many cartitemid to one product possible
private ProductInfo productInfo;

//cartitemid<-->user id: if you give one to one , it means that one user id can purchase only one cart item... so the relation is many to one i.e., many cartitemid to one user email id
//cartitemid<-->productid many cartitem id can be related to one product id... so many to one

/* smit @abc.com
*  cartitemid    productid
*     100 			1
* adam.e@gmail.com
* cartitemid   productid
*     101			1
* john@yahoo.com
* cartitemid   productid
*     103			1
*/

public int getCartItemId() {
	return cartItemId;
}
public void setCartItemId(int cartItemId) {
	this.cartItemId = cartItemId;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
public double getTotalPrice() {
	return totalPrice;
}
public void setTotalPrice(double totalPrice) {
	this.totalPrice = totalPrice;
}
public User getUser() {
	return user;
}
public void setUser(User user) {
	this.user = user;
}
public ProductInfo getProductInfo() {
	return productInfo;
}
public void setProductInfo(ProductInfo productInfo) {
	this.productInfo = productInfo;
}


}