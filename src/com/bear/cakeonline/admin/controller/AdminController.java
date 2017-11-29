package com.bear.cakeonline.admin.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bear.cakeonline.entity.Admin;
import com.bear.cakeonline.admin.service.AdminServiceImpl;

@Controller
@RequestMapping("admin")
public class AdminController {
	
	@Resource
	private AdminServiceImpl adminServiceImpl;
	
	@RequestMapping("/list")
	public String list(Model model){
		List<Admin> list=this.adminServiceImpl.listAll();
		model.addAttribute("list", list);
		return "list";
	}
	
	@RequestMapping("/save")
	public String save(String adminname,String password,String realname){
		Admin admin = new Admin();
		admin.setAdminName(adminname);
		admin.setPassword(password);
		admin.setRealName(realname);
		this.adminServiceImpl.saveAdmin(admin);
		return "";
	}
	
	@RequestMapping("/update")
	public String update(int id,String adminname,String password,String realname){
		Admin admin = new Admin();
		admin.setId(id);
		admin.setAdminName(adminname);
		admin.setPassword(password);
		admin.setRealName(realname);
		this.adminServiceImpl.updateAdmin(admin);
		return "";
	}
	
	@RequestMapping("/delete")
	public String delete(int id){
		this.adminServiceImpl.deleteAdmin(id);
		return "";
	}
}
