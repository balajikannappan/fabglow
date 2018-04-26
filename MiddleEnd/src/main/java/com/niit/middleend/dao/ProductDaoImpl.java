package com.niit.middleend.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.backend.model.Category;
import com.niit.backend.model.ProductInfo;
import com.niit.backend.model.SubCategory;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public List<ProductInfo> getAllProducts() {
		Session session=sessionFactory.getCurrentSession();
		//String hqlString="from ProductInfo";//Product is name of the entity
		//HQL - from Product
		//SQL - select * from productinfo
		Query query=session.createQuery("from ProductInfo");
		List<ProductInfo> products=query.list();
		return products;
	}
	@Override
	public ProductInfo getProduct(int id) {
		Session session=sessionFactory.getCurrentSession();
		ProductInfo product=(ProductInfo)session.get(ProductInfo.class, id);
		return product;
	}
	@Override
	public void saveOrUpdateProduct(ProductInfo productInfo) {
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(productInfo);
		
	}
	@Override
	public void deleteProduct(int id) {
		Session session=sessionFactory.getCurrentSession();
		ProductInfo product=(ProductInfo)session.get(ProductInfo.class, id);
		//select * from product_s180396 where id=1
		session.delete(product);
		//delete from product_s180396 where id=1;
		
	}
	@Override
	public List<Category> getAllCategories() {
		Session session=sessionFactory.getCurrentSession();
		//select * from category_s180396
		Query query=session.createQuery("from Category");
		List<Category> categories=query.list();
		return categories;
	}
	@Override
	public List<SubCategory> getAllSubCategories() {
		Session session=sessionFactory.getCurrentSession();
		//select * from subcategory
		//SubCategory subCat=new SubCategory();
		//int id=subCat.getCategory().getCatId();
		String hql="from SubCategory";
		Query query=session.createQuery(hql);
		List<SubCategory> subcats=query.list();
		return subcats;
	}

}
