package com.bear.cakeonline.user.service;

import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bear.cakeonline.user.dao.UserDaoImpl;
import com.bear.cakeonline.entity.Order;
import com.bear.cakeonline.entity.User;

@Service
public class UserServiceImpl {

	@Resource
	private UserDaoImpl userDaoImpl;
	
	@Transactional(readOnly=true)
	public List<User> listAll() {
		return this.userDaoImpl.findAll();
	}
	
	public Set<Order> findOrders(String username) {
		return this.userDaoImpl.findOrders(username);
	}
	
	public void saveUser(User user) {
		userDaoImpl.saveUser(user);
	}
	
	public boolean deleteUser(String username) {
		if(userDaoImpl.deleteUser(username))
			return true;
		else
			return false;
	}
	
	public boolean updateUser(User user) {
		if(userDaoImpl.updateUser(user))
			return true;
		else
			return false;
	}
}
