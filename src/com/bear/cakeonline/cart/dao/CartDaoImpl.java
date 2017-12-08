package com.bear.cakeonline.cart.dao;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

@Repository
public class CartDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
}
