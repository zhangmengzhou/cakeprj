package com.bear.cakeonline.order.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.bear.cakeonline.entity.Order;
import com.bear.cakeonline.entity.OrderDetail;

@Repository
public class OrderDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	public List<Order> findAll(){
		Query q=this.sessionFactory.getCurrentSession().createQuery("from Order");
		return q.list();
	}
	
	public List<Order> find(int userid){
		Query q=this.sessionFactory.getCurrentSession().createQuery("from Order where userId =? and status<>2");
		q.setParameter(0, userid);
		return q.list();
	}
	
	public void saveOrder(Order order) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = session.beginTransaction();
		session.save(order);
		tx.commit();
	}
	
	public void saveOrderDetail(OrderDetail orderDetail) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = session.beginTransaction();
		session.save(orderDetail);
		tx.commit();
	}
	
	public void deleteOrder(int id) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = session.beginTransaction();
		String hql = "delete from Order where id=?";
		Query q = session.createQuery(hql);
		q.setParameter(0,id);
		int ret = q.executeUpdate();
		tx.commit();
	}
	
	public void deleteCart(int id) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = session.beginTransaction();
		String hql = "delete from Cartiteam where id=?";
		Query q = session.createQuery(hql);
		q.setParameter(0,id);
		int ret = q.executeUpdate();
		tx.commit();
	}
	
	public void updateOrder(Order order) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = session.beginTransaction();
		String hql="update Order set status=? where id=?";
		Query q=session.createQuery(hql);
		q.setParameter(0,order.getStatus());
		q.setParameter(1,order.getId());
		int ret=q.executeUpdate();
		tx.commit();
	}
}
