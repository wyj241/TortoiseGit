package com.tmall.service;

import java.util.List;

import com.tmall.bean.User;

public interface UserService {
	public int insertUser(User user);
	public User select(String username);
	public List<User> selectAll(String username);

}
