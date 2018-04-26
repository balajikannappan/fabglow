package com.niit.middleend.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.backend.model.Category;
import com.niit.backend.model.ProductInfo;
import com.niit.backend.model.SubCategory;
import com.niit.middleend.dao.ProductDao;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductDao productDao;
	
	@Override
	public List<ProductInfo> getAllProducts() {
		return productDao.getAllProducts();
	}

	@Override
	public ProductInfo getProduct(int id) {
		return productDao.getProduct(id);
	}

	@Override
	public void saveOrUpdateProduct(ProductInfo productInfo) {
		productDao.saveOrUpdateProduct(productInfo);
		
	}

	@Override
	public void deleteProduct(int id) {
		productDao.deleteProduct(id);
		
	}

	@Override
	public List<Category> getAllCategories() {
		return productDao.getAllCategories();
	}

	@Override
	public List<SubCategory> getAllSubCategories() {
		return productDao.getAllSubCategories();
	}

}
