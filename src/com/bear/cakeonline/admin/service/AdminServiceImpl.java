package com.bear.cakeonline.admin.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bear.cakeonline.admin.dao.AdminDaoImpl;
import com.bear.cakeonline.entity.Admin;

@Service
@Transactional(readOnly=true)
public class AdminServiceImpl {

	@Resource
	private AdminDaoImpl adminDaoImpl;
	
	public List<Admin> listAll() {
		return this.adminDaoImpl.findAll();
	}
	
	public void saveAdmin(Admin admin) {
		adminDaoImpl.saveAdmin(admin);
	}
	
	public void deleteAdmin(int id) {
		adminDaoImpl.deleteAdmin(id);
	}
	
	public void updateAdmin(Admin admin) {
		adminDaoImpl.updateAdmin(admin);
	}
}
