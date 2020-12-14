package com.tmall.bean;

public class User {
	private int userid;
	private String username;
	private String password;
	private String tel;
	private String idnum;
	private String email;
	private String userimage;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public String getIdnum() {
		return idnum;
	}


	public void setIdnum(String idnum) {
		this.idnum = idnum;
	}


	public String getUserimage() {
		return userimage;
	}

	public void setUserimage(String userimage) {
		this.userimage = userimage;
	}

	
	public int getUserid() {
		return userid;
	}


	public void setUserid(int userid) {
		this.userid = userid;
	}


	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}


	@Override
	public String toString() {
		return "User [userid=" + userid + ", username=" + username + ", password=" + password + ", tel=" + tel
				+ ", idnum=" + idnum + ", email=" + email + ", userimage=" + userimage + "]";
	}


	public User(int userid, String username, String password, String tel, String idnum, String email,
			String userimage) {
		super();
		this.userid = userid;
		this.username = username;
		this.password = password;
		this.tel = tel;
		this.idnum = idnum;
		this.email = email;
		this.userimage = userimage;
	}


	
}
