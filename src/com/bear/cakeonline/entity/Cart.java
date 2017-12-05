package com.bear.cakeonline.entity;

import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name="cart")
public class Cart {
	private int id;
	private User user;
	private Set<Cartiteam> cartiteam;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY) 
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@OneToOne(mappedBy="cart")
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@OneToMany(mappedBy="cart", targetEntity=Cartiteam.class, 
	        cascade=CascadeType.ALL)
	public Set<Cartiteam> getCartiteam() {
		return cartiteam;
	}
	public void setCartiteam(Set<Cartiteam> cartiteam) {
		this.cartiteam = cartiteam;
	}
	
}
