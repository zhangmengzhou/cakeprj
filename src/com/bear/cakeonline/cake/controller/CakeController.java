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
	public String list(Model model,@RequestParam(required=false) String page,@RequestParam(required=false) String value,@RequestParam(required=false) String value1,@RequestParam(required=false) String value2,
			@RequestParam(required=false) String value3,@RequestParam(required=false) String value4,@RequestParam(required=false) String price1,@RequestParam(required=false) String price2){
		if(page == null)
			page = "1";
		List<Cake> list=this.cakeServiceImpl.listCake(Integer.parseInt(page),value,value1,value2,value3,value4,price1,price2);
		model.addAttribute("cakelist", list);
		model.addAttribute("page", Integer.parseInt(page));
		model.addAttribute("totalpages", Page.totalpages);
		model.addAttribute("value",value);
		model.addAttribute("value1",value1);
		model.addAttribute("value2",value2);
		model.addAttribute("value3",value3);
		model.addAttribute("value4",value4);
		model.addAttribute("price1",price1);
		model.addAttribute("price2",price2);
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
