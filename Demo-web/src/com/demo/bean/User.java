package com.demo.bean;

public class User {
	private int user_id;
	private String user_name;
	private String email;
	private String cellphone;
	private String password;
	private String image;
	private String create_time;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCellphone() {
		return cellphone;
	}
	public void setCellphone(String cellphone) {
		this.cellphone = cellphone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getCreate_time() {
		return create_time;
	}
	public void setCreate_time(String create_time) {
		this.create_time = create_time;
	}
	@Override
	public String toString() {
		return "User [user_name=" + user_name + ", email=" + email + ", cellphone=" + cellphone + ", password="
				+ password + ", image=" + image + ", create_time=" + create_time + "]";
	}
	public User(String user_name, String email, String cellphone, String password, String image, String create_time) {
		super();
		this.user_name = user_name;
		this.email = email;
		this.cellphone = cellphone;
		this.password = password;
		this.image = image;
		this.create_time = create_time;
	}

}
