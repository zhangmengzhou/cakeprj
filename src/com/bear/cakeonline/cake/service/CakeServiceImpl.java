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
	public List<Cake> listCake(int page){
		return this.cakeDaoImpl.findCake(page);
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
