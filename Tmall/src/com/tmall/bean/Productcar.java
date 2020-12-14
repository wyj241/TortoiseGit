package com.tmall.bean;

public class Productcar {
	private int carid;
	private int pid;
	private int num;
	private int money;
	private String pimage;
	private String pname;
	private String color;
	private String size;	
	private Integer price;
	public Productcar() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public int getCarid() {
		return carid;
	}
	public void setCarid(int carid) {
		this.carid = carid;
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
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "Productcar [carid=" + carid + ", pid=" + pid + ", num=" + num + ", pimage=" + pimage + ", pname="
				+ pname + ", color=" + color + ", size=" + size + ", price=" + price + "]";
	}

	public Productcar(int carid, int pid, int num, String pimage, String pname, String color, String size,
			Integer price) {
		super();
		this.carid = carid;
		this.pid = pid;
		this.num = num;
		this.pimage = pimage;
		this.pname = pname;
		this.color = color;
		this.size = size;
		this.price = price;
	}
	
	
	
	
	
}
