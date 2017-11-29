package com.bear.cakeonline.cake.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bear.cakeonline.cake.service.CakeServiceImpl;
import com.bear.cakeonline.entity.Cake;
import com.bear.cakeonline.entity.CakeType;

@Controller
@RequestMapping("cake")
public class CakeController {
	
	@Resource
	private CakeServiceImpl cakeServiceImpl;
	
	@RequestMapping("/list")
	public String list(Model model){
		List<Cake> list=this.cakeServiceImpl.listAll();
		model.addAttribute("list", list);
		return "list";
	}
	
	@RequestMapping("/save")
	public String save(String name,String description,double price,double discountprice,String listimg,String img1,String img2,String img3,Date cakedate,CakeType cakeType){
		Cake cake = new Cake();
		cake.setName(name);
		cake.setDescription(description);
		cake.setPrice(price);
		cake.setDiscountprice(discountprice);
		cake.setListimg(listimg);
		cake.setImg1(img1);
		cake.setImg2(img2);
		cake.setImg3(img3);
		cake.setCakedate(cakedate);
		cake.setCakeType(cakeType);
		this.cakeServiceImpl.saveCake(cake);
		return "";
	}
	
	@RequestMapping("/update")
	public String update(int id,String name,String description,double price,double discountprice,String listimg,String img1,String img2,String img3,Date cakedate,CakeType cakeType){
		Cake cake = new Cake();
		cake.setId(id);
		cake.setName(name);
		cake.setDescription(description);
		cake.setPrice(price);
		cake.setDiscountprice(discountprice);
		cake.setListimg(listimg);
		cake.setImg1(img1);
		cake.setImg2(img2);
		cake.setImg3(img3);
		cake.setCakedate(cakedate);
		cake.setCakeType(cakeType);
		this.cakeServiceImpl.updateCake(cake);
		return "";
	}
	
	@RequestMapping("/delete")
	public String delete(int id) {
		this.cakeServiceImpl.deleteCake(id);
		return "";
	}
}
