package com.tmall.bean;

public class Car {
	private int carid;
	private int userid;
	private int pid;
	private int num;
	private int money;
	private String carname;
	private String carimage;
	private Integer price;
	private String size;
	private String color;
	private Product pname;
	private Product pimage;

	public Car() {
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

	public int getCarid() {
		return carid;
	}
	public void setCarid(int carid) {
		this.carid = carid;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getCarname() {
		return carname;
	}
	public void setCarname(String carname) {
		this.carname = carname;
	}
	public String getCarimage() {
		return carimage;
	}
	public void setCarimage(String carimage) {
		this.carimage = carimage;
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
		return "Car [carid=" + carid + ", userid=" + userid + ", pid=" + pid + ", carname=" + carname + ", carimage="
				+ carimage + ", price=" + price + ", size=" + size + ", color=" + color + "]";
	}
	public Car(int carid, int userid, int pid, String carname, String carimage, Integer price, String size,
			String color) {
		super();
		this.carid = carid;
		this.userid = userid;
		this.pid = pid;
		this.carname = carname;
		this.carimage = carimage;
		this.price = price;
		this.size = size;
		this.color = color;
	}
	

}
