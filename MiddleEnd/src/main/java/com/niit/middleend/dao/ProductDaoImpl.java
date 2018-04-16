package com.niit.middleend.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.backend.model.ProductInfo;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public List<ProductInfo> getAllProducts() {
		Session session=sessionFactory.getCurrentSession();
		String hqlString="from ProductInfo";//Product is name of the entity
		//HQL - from Product
		//SQL - select * from product_s180396
		Query query=session.createQuery(hqlString);
		List<ProductInfo> products=query.list();
		return products;
	}
	@Override
	public ProductInfo getProduct(int id) {
		Session session=sessionFactory.getCurrentSession();
		ProductInfo product=(ProductInfo)session.get(ProductInfo.class, id);
		return product;
	}

}
