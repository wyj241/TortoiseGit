package com.tmall.bean;

public class Address {
	private int id;
	private int userid;
	private String name;
	private String phone;
	private String area;
	private String address_lable;
	public Address() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getAddress_lable() {
		return address_lable;
	}
	public void setAddress_lable(String address_lable) {
		this.address_lable = address_lable;
	}
	@Override
	public String toString() {
		return "Address [id=" + id + ", userid=" + userid + ", name=" + name + ", phone=" + phone + ", area=" + area
				+ ", address_lable=" + address_lable + "]";
	}
	public Address(int id, int userid, String name, String phone, String area, String address_lable) {
		super();
		this.id = id;
		this.userid = userid;
		this.name = name;
		this.phone = phone;
		this.area = area;
		this.address_lable = address_lable;
	}
	
	
	
	

}
