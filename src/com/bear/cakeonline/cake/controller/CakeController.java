package com.bear.cakeonline.cake.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bear.cakeonline.cake.service.CakeServiceImpl;
import com.bear.cakeonline.entity.Cake;
import com.bear.cakeonline.entity.CakeType;
import com.bear.cakeonline.util.Page;

@Controller
@RequestMapping("cake")
public class CakeController {
	
	@Resource
	private CakeServiceImpl cakeServiceImpl;
	
	@RequestMapping("/list")
	public String list(Model model,@RequestParam(required=false) String page){
		if(page == null)
			page = "1";
		List<Cake> list=this.cakeServiceImpl.listCake(Integer.parseInt(page));
		model.addAttribute("cakelist", list);
		model.addAttribute("page", Integer.parseInt(page));
		model.addAttribute("totalpages", Page.totalpages);
		return "products";
	}
	
	@RequestMapping("/single")
	public String single(Model model,@RequestParam int cakeid){
		Cake cake=this.cakeServiceImpl.single(cakeid);
		model.addAttribute("cake", cake);
		return "single";
	}
	
	@RequestMapping("/save")
	public String save(@RequestParam String name,@RequestParam String description, @RequestParam double price,@RequestParam double discountprice,@RequestParam String listimg,
			@RequestParam String img1,@RequestParam String img2,@RequestParam String img3,@RequestParam Date cakedate,@RequestParam CakeType cakeType){
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
	public String update(@RequestParam int id,@RequestParam String name,@RequestParam String description,@RequestParam double price,@RequestParam double discountprice,
			@RequestParam String listimg,@RequestParam String img1,@RequestParam String img2,@RequestParam String img3,@RequestParam Date cakedate,@RequestParam CakeType cakeType){
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
	public String delete(@RequestParam int id) {
		this.cakeServiceImpl.deleteCake(id);
		return "";
	}
}
