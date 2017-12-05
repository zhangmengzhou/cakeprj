package com.bear.cakeonline.cake.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bear.cakeonline.cake.dao.CakeDaoImpl;
import com.bear.cakeonline.entity.Cake;

@Service
public class CakeServiceImpl {

	@Resource
	private CakeDaoImpl cakeDaoImpl;
	
	@Transactional(readOnly=true)
	public List<Cake> listCake(int page,String value,String value1,String value2,String value3,String value4,String price1,String price2){
		return this.cakeDaoImpl.findCake(page,value,value1,value2,value3,value4,price1,price2);
	}
	
	public Cake single(int id) {
		return this.cakeDaoImpl.single(id);
	}
	
	public void saveCake(Cake cake) {
		this.cakeDaoImpl.saveCake(cake);
	}
	
	public void deleteCake(int id) {
		this.cakeDaoImpl.deleteCake(id);
	}
	
	public void updateCake(Cake cake) {
		this.cakeDaoImpl.updateCake(cake);
	}
}
