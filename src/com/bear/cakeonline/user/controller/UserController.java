package com.bear.cakeonline.user.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bear.cakeonline.user.service.UserServiceImpl;
import com.bear.cakeonline.entity.User;

@Controller
@RequestMapping("user")
public class UserController {

	@Resource
	private UserServiceImpl userServiceImpl;
	
	@RequestMapping("/list")
	public String list(Model model){
		List<User> list=this.userServiceImpl.listAll();
		model.addAttribute("list", list);
		return "list";
	}
	
	@RequestMapping("/save")
	public String save(Model model,String username,String password,String phone,String address) {
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		user.setPhone(phone);
		user.setAddress(address);
		userServiceImpl.saveUser(user);
		model.addAttribute("username",username);
		return "index";
	}
	
	@RequestMapping("/update")
	public String update(Model model,String username,String password,String phone,String address) {
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		user.setPhone(phone);
		user.setAddress(address);
		userServiceImpl.updateUser(user);
		model.addAttribute("username",username);
		return "index";
	}
	
	@RequestMapping("/newpwd")
	public String newpwd(Model model,String username,String password,String phone,String address) {
		List<User> list=this.userServiceImpl.listAll();
		for(int i = 0;i < list.size();i++) {
			if(list.get(i).getUsername().equals(username) && list.get(i).getPhone().equals(phone) && list.get(i).getAddress().equals(address)) {
				User user = new User();
				user.setUsername(username);
				user.setPassword(password);
				user.setPhone(phone);
				user.setAddress(address);
				userServiceImpl.updateUser(user);
				model.addAttribute("username",username);
				break;
			}
		}
		return "index";
	}
	
	@RequestMapping("/login")
	public String login(Model model,String username,String password) {
		List<User> list=this.userServiceImpl.listAll();
		for(int i = 0;i < list.size();i++) {
			if(list.get(i).getUsername().equals(username) && list.get(i).getPassword().equals(password)) {
				model.addAttribute("username",username);
				break;
			}
		}
		model.addAttribute("fails","login fails!");
		return "index";
	}
	
	@RequestMapping("/loginout")
	public String loginout(Model model) {
		model.addAttribute("username",null);
		return "index";
	}
	
	@RequestMapping("/delete")
	public String delete(String username) {
		userServiceImpl.deleteUser(username);
		return "";
	}
}
