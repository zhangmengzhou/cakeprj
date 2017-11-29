package com.bear.cakeonline.cake.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.bear.cakeonline.entity.Cake;

@Repository
public class CakeDaoImpl {

	@Resource
	private SessionFactory sessionFactory;
	
	public List<Cake> findAll(){
		Query q=this.sessionFactory.getCurrentSession().createQuery("from Cake");
		return q.list();
	}
	
	public void saveCake(Cake cake) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = session.beginTransaction();
		session.save(cake);
		tx.commit();
	}
	
	public void deleteCake(int id) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = session.beginTransaction();
		String hql = "delete from Cake where id=?";
		Query q = session.createQuery(hql);
		q.setParameter(0,id);
		int ret = q.executeUpdate();
		tx.commit();
	}
	
	public void updateCake(Cake cake) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = session.beginTransaction();
		String hql="update Cake set name=?,description=?,price=?,discountprice=?,listimg=?,img1=?,img2=?,img3=?,cakedate=?,cakeTypeID=? where id=?";
		Query q=session.createQuery(hql);
		q.setParameter(0,cake.getName());
		q.setParameter(1,cake.getDescription());
		q.setParameter(2,cake.getPrice());
		q.setParameter(3,cake.getDiscountprice());
		q.setParameter(4,cake.getListimg());
		q.setParameter(5,cake.getImg1());
		q.setParameter(6,cake.getImg2());
		q.setParameter(7,cake.getImg3());
		q.setParameter(8,cake.getCakedate());
		q.setParameter(8,cake.getCakeType().getId());
		q.setParameter(8,cake.getId());
		int ret=q.executeUpdate();
		tx.commit();
	}
}
