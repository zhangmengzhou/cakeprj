package com.bear.cakeonline.admin.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
		model.addAttribute("adminlist", list);
		return "";
	}
	
	@RequestMapping("/save")
	public String save(Model model,@RequestParam String adminname,@RequestParam String password,@RequestParam String realname) {
		Admin admin = new Admin();
		admin.setAdminName(adminname);
		admin.setPassword(password);
		admin.setRealName(realname);
		adminServiceImpl.saveAdmin(admin);
		model.addAttribute("username",adminname);
		return "";
	}
	
	@RequestMapping("/update")
	public String update(Model model,@RequestParam String adminname,@RequestParam String password,@RequestParam String realname) {
		Admin admin = new Admin();
		admin.setAdminName(adminname);
		admin.setPassword(password);
		admin.setRealName(realname);
		adminServiceImpl.updateAdmin(admin);
		model.addAttribute("adminname",adminname);
		return "";
	}
	
	@RequestMapping("/login")
	public String login(Model model,@RequestParam String adminname,@RequestParam String password) {
		List<Admin> list=this.adminServiceImpl.listAll();
		for(int i = 0;i < list.size();i++) {
			if(list.get(i).getAdminName().equals(adminname) && list.get(i).getPassword().equals(password)) {
				model.addAttribute("adminname",adminname);
				break;
			}
		}
		model.addAttribute("fails","ÃÜÂë´íÎó!");
		return "admin";
	}
	
	@RequestMapping("/loginout")
	public String loginout(Model model) {
		model.addAttribute("adminname",null);
		return "";
	}
	
	@RequestMapping("/delete")
	public String delete(@RequestParam int id) {
		adminServiceImpl.deleteAdmin(id);
		return "";
	}
}
