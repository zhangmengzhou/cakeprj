package com.bear.cakeonline.cakeType.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.bear.cakeonline.entity.CakeType;

@Repository
public class CakeTypeDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	public List<CakeType> findAll(){
		Query q=this.sessionFactory.getCurrentSession().createQuery("from CakeType");
		return q.list();
	}
	
	public void saveCakeType(CakeType cakeType) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = session.beginTransaction();
		session.save(cakeType);
		tx.commit();
	}
	
	public void deleteCakeType(int id) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = session.beginTransaction();
		String hql = "delete from CakeType where id=?";
		Query q = session.createQuery(hql);
		q.setParameter(0,id);
		int ret = q.executeUpdate();
		tx.commit();
	}
	
	public void updateCakeType(CakeType cakeType) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = session.beginTransaction();
		String hql="update CakeType set name=? where id=?";
		Query q=session.createQuery(hql);
		q.setParameter(0,cakeType.getName());
		q.setParameter(1,cakeType.getId());
		int ret=q.executeUpdate();
		tx.commit();
	}
}
