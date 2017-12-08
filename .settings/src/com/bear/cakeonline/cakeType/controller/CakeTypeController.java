package com.bear.cakeonline.cakeType.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bear.cakeonline.cakeType.service.CakeTypeServiceImpl;
import com.bear.cakeonline.entity.CakeType;

@Controller
@RequestMapping("cakeType")
public class CakeTypeController {
	@Resource
	private CakeTypeServiceImpl cakeTypeServiceImpl;
	
	@RequestMapping("/list")
	public String list(Model model){
		List<CakeType> list=this.cakeTypeServiceImpl.listAll();
		model.addAttribute("list", list);
		return "list";
	}
	
	@RequestMapping("/save")
	public String save(@RequestParam String name){
		CakeType cakeType = new CakeType();
		cakeType.setName(name);
		this.cakeTypeServiceImpl.saveCakeType(cakeType);
		return "";
	}
	
	@RequestMapping("/update")
	public String update(@RequestParam int id,@RequestParam String name){
		CakeType cakeType = new CakeType();
		cakeType.setId(id);
		cakeType.setName(name);
		this.cakeTypeServiceImpl.updateCakeType(cakeType);
		return "";
	}
	
	@RequestMapping("/delete")
	public String delete(@RequestParam int id) {
		this.cakeTypeServiceImpl.deleteCakeType(id);
		return "";
	}
}
