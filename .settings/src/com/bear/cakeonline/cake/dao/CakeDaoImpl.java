package com.bear.cakeonline.cake.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.bear.cakeonline.entity.Cake;
import com.bear.cakeonline.util.Page;

@Repository
public class CakeDaoImpl {

	@Resource
	private SessionFactory sessionFactory;
	
	public List<Cake> findCake(int page,String value,String value1,String value2,String value3,String value4,String price1,String price2) {
		Session session = sessionFactory.getCurrentSession();
		String hql1 = "from Cake";
		if(value != null && !"".equals(value)) {
			hql1 = hql1 + " where name like '%" + value + "%' or description like '%" + value + "%'";
		}
		if(value1 != null && !"".equals(value1)) {
			if(hql1.equals("from Cake"))
				hql1 = hql1 + " where description like '%" + value1 + "%'";
			else
				hql1 = hql1 + " and description like '%" + value1 + "%'";
		}	
		if(value2 != null && !"".equals(value2)) {
			if(hql1.equals("from Cake"))
				hql1 = hql1 + " where description like '%" + value2 + "%'";
			else
				hql1 = hql1 + " and description like '%" + value2 + "%'";
		}
		if(value3 != null && !"".equals(value3)) {
			if(hql1.equals("from Cake"))
				hql1 = hql1 + " where description like '%" + value3 + "%'";
			else
				hql1 = hql1 + " and description like '%" + value3 + "%'";
		}
		if(value4 != null && !"".equals(value4)) {
			if(hql1.equals("from Cake"))
				hql1 = hql1 + " where description like '%" + value4 + "%'";
			else
				hql1 = hql1 + " and description like '%" + value4 + "%'";
		}
		if(price1 != null && price2 != null && !"".equals(price1) && !"".equals(price2)) {
			if(hql1.equals("from Cake")) {
				hql1 = hql1 + " where discountprice between " + price1 + " and " + price2;
			}else {
				hql1 = hql1 + " and discountprice between " + price1 + " and " + price2;
			}
		}
		String hql2 = "select count(*)" + hql1;
		Query q = session.createQuery(hql1);
		q.setFirstResult((page-1)*6); 
		q.setMaxResults(6);
		long t = (long)(session.createQuery(hql2).uniqueResult());
		if(t == 0)
			Page.totalpages = 0;
		else if(t%6 == 0)
			Page.totalpages = (int)t/6;
		else
			Page.totalpages = (int)t/6 + 1;
		return q.list();
	}
	
	public Cake single(int id) {
		Query q=this.sessionFactory.getCurrentSession().createQuery("from Cake where id=?");
		q.setParameter(0,id);
		return (Cake)q.uniqueResult();
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
