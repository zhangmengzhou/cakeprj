package com.bear.cakeonline.cart.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bear.cakeonline.cart.service.CartServiceImpl;

@Controller
@RequestMapping("cart")
public class CartController {
	@Resource
	private CartServiceImpl cartServiceImpl;
}
