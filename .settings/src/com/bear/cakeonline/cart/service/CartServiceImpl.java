package com.bear.cakeonline.cart.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bear.cakeonline.cart.dao.CartDaoImpl;

@Service
public class CartServiceImpl {
	@Resource
	private CartDaoImpl cartDaoImpl;
	
}
