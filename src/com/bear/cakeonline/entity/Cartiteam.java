package com.bear.cakeonline.entity;

import javax.persistence.*;
@Entity
@Table(name="cartiteam")
public class Cartiteam {
	private int id;
	private Cart cart;
	private Cake cake;
	private int count;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY) 
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@ManyToOne
	@JoinColumn(name="cartid")
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	@ManyToOne
	@JoinColumn(name="cakeid")
	public Cake getCake() {
		return cake;
	}
	public void setCake(Cake cake) {
		this.cake = cake;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
}
