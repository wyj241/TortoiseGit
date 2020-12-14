package com.tmall.bean;

public class Product {
    private int pid; //商品id
    private int userid;//用户id
    private String pimage; //商品图片
    private String pname;
    private Integer price;
    private String size;
    private String color;
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	
	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getPimage() {
		return pimage;
	}
	public void setPimage(String pimage) {
		this.pimage = pimage;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}

	@Override
	public String toString() {
		return "Product [pid=" + pid + ", userid=" + userid + ", pimage=" + pimage + ", pname=" + pname + ", price="
				+ price + ", size=" + size + ", color=" + color + "]";
	}

	public Product(int pid, int userid, String pimage, String pname, Integer price, String size, String color) {
		super();
		this.pid = pid;
		this.userid = userid;
		this.pimage = pimage;
		this.pname = pname;
		this.price = price;
		this.size = size;
		this.color = color;
	}
	
    
    
}
