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
@Transactional(readOnly=true)
public class UserServiceImpl {

	@Resource
	private UserDaoImpl userDaoImpl;
	
	public List<User> listAll() {
		return this.userDaoImpl.findAll();
	}
	
	public Set<Order> findOrders(String username) {
		return this.userDaoImpl.findOrders(username);
	}
	
	public void saveUser(User user) {
		userDaoImpl.saveUser(user);
	}
	
	public void deleteUser(String username) {
		userDaoImpl.deleteUser(username);
	}
	
	public void updateUser(User user) {
		userDaoImpl.updateUser(user);
	}
}
