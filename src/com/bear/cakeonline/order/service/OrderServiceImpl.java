package com.bear.cakeonline.order.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bear.cakeonline.order.dao.OrderDaoImpl;
import com.bear.cakeonline.entity.Order;
import com.bear.cakeonline.entity.OrderDetail;

@Service
public class OrderServiceImpl {
	@Resource
	private OrderDaoImpl orderDaoImpl;
	
	@Transactional(readOnly=true)
	public List<Order> listAll(){
		return this.orderDaoImpl.findAll();
	}
	
	@Transactional(readOnly=true)
	public List<Order> list(int userid){
		return this.orderDaoImpl.find(userid);
	}
	
	public void saveOrder(Order order) {
		this.orderDaoImpl.saveOrder(order);
	}
	
	public void saveOrderDetail(OrderDetail orderDetail) {
		this.orderDaoImpl.saveOrderDetail(orderDetail);
	}
	
	public void deleteOrder(int id) {
		this.orderDaoImpl.deleteOrder(id);
	}
	
	public void deleteCart(int id) {
		this.orderDaoImpl.deleteCart(id);
	}
	
	public void updateOrder(Order order) {
		this.orderDaoImpl.updateOrder(order);
	}
}
