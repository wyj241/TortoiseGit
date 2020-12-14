package com.tmall.dao;

import java.util.List;

import com.tmall.bean.User;


public interface UserDao {
	public int insertUser(User user);
	public User select(String username);
	public List<User> selectAll(String username);

}
