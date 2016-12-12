package com.rj.auction.user.vo;

import java.util.HashSet;
import java.util.Set;
import com.rj.auction.product.vo.Record;

/**
 * 用户实体类对象
 * @author Administrator
 *
 */
public class User {
	private Integer uid;
	private String name;
	private String password;
	private String idNum;
	private String phone;
	//竞拍商品
	private Set<Record> records = new HashSet<Record>();
	
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getIdNum() {
		return idNum;
	}
	public void setIdNum(String idNum) {
		this.idNum = idNum;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Set<Record> getRecords() {
		return records;
	}
	public void setRecords(Set<Record> records) {
		this.records = records;
	}
	
	

}
