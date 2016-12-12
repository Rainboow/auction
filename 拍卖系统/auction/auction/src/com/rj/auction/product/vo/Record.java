package com.rj.auction.product.vo;

import java.sql.Date;

import com.rj.auction.product.vo.Product;
import com.rj.auction.user.vo.User;

public class Record {
	private Integer rid;
	private Date rDate;
	
	private User user;
	private Product product;
	
	public Integer getRid() {
		return rid;
	}
	public void setRid(Integer rid) {
		this.rid = rid;
	}
	public Date getrDate() {
		return rDate;
	}
	public void setrDate(Date rDate) {
		this.rDate = rDate;
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	
	
	

}
