package com.niit.middleend.dao;

import java.util.List;

import com.niit.backend.model.Category;
import com.niit.backend.model.ProductInfo;
import com.niit.backend.model.SubCategory;

public interface ProductDao {
	List<ProductInfo> getAllProducts();
	ProductInfo getProduct(int id);
	void saveOrUpdateProduct(ProductInfo productInfo);
	void deleteProduct(int id);
	List<Category> getAllCategories();
	List<SubCategory> getAllSubCategories();
}

