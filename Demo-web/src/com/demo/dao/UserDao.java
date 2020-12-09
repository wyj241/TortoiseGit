package com.demo.dao;

import java.util.List;

import com.demo.bean.User;

public interface UserDao {
	public int insertUser(User user);
	public User select(String cellphone);
	public List<User> selectAll(String cellphone);

}
