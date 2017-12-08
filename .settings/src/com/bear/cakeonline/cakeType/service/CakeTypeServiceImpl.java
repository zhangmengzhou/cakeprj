package com.bear.cakeonline.cakeType.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bear.cakeonline.cakeType.dao.CakeTypeDaoImpl;
import com.bear.cakeonline.entity.CakeType;

@Service
public class CakeTypeServiceImpl {
	@Resource
	private CakeTypeDaoImpl cakeTypeDaoImpl;
	
	@Transactional(readOnly=true)
	public List<CakeType> listAll(){
		return this.cakeTypeDaoImpl.findAll();
	}
	
	public void saveCakeType(CakeType cakeType) {
		this.cakeTypeDaoImpl.saveCakeType(cakeType);
	}
	
	public void deleteCakeType(int id) {
		this.cakeTypeDaoImpl.deleteCakeType(id);
	}
	
	public void updateCakeType(CakeType cakeType) {
		this.cakeTypeDaoImpl.updateCakeType(cakeType);
	}
}
