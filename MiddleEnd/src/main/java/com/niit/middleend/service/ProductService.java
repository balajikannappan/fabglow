package com.niit.middleend.service;

import java.util.List;

import com.niit.backend.model.ProductInfo;

public interface ProductService {
	List<ProductInfo> getAllProducts();
	ProductInfo getProduct(int id);
	
}
