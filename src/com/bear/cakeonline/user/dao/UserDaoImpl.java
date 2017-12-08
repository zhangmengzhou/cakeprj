package com.bear.cakeonline.user.dao;

import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.bear.cakeonline.entity.Cart;
import com.bear.cakeonline.entity.Order;
import com.bear.cakeonline.entity.User;

@Repository
public class UserDaoImpl {
	
	@Resource
	private SessionFactory sessionFactory;
	
	public List<User> findAll(){
		Query q=this.sessionFactory.getCurrentSession().createQuery("from User");
		return q.list();
	}
	
	public Set<Order> findOrders(String username) {
		Query q=this.sessionFactory.getCurrentSession().createQuery("from User where username=?");
		q.setParameter(0,username);
		Set<Order> orders = (Set)q.list();
		return orders;
	}
	
	public void saveUser(User user) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = session.beginTransaction();
		Cart cart = new Cart();
		session.save(cart);
		user.setCart(cart);
		session.save(user);
		tx.commit();
	}
	
	public boolean deleteUser(String username) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = session.beginTransaction();
		String hql = "delete from User where username=?";
		Query q = session.createQuery(hql);
		q.setParameter(0,username);
		int ret = q.executeUpdate();
		tx.commit();
		if(ret != 0)
			return true;
		else
			return false;
	}
	
	public boolean updateUser(User user) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = session.beginTransaction();
		String hql="update User set password=?,phone=?,address=? where username=?";
		Query q=session.createQuery(hql);
		q.setParameter(0, user.getPassword());
		q.setParameter(1, user.getPhone());
		q.setParameter(2,user.getAddress());
		q.setParameter(3,user.getUsername());
		int ret=q.executeUpdate();
		tx.commit();
		if(ret != 0)
			return true;
		else
			return false;
	}
}
