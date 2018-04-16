package com.niit.middleend.dao;

import java.util.List;

import com.niit.backend.model.ProductInfo;

public interface ProductDao {
	List<ProductInfo> getAllProducts();
	ProductInfo getProduct(int id);
}
