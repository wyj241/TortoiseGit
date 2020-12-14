package com.tmall.serviceimp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tmall.bean.User;
import com.tmall.dao.UserDao;
import com.tmall.service.UserService;
@Service
public class UserServiceImp implements UserService{
	@Autowired
	private UserDao dao;
	public void setDao(UserDao dao) {
		this.dao = dao;
	}

	@Override
	public int insertUser(User user) {
		// TODO Auto-generated method stub
		return dao.insertUser(user);
	}

	@Override
	public User select(String username) {
		// TODO Auto-generated method stub
		return dao.select(username);
	}

	@Override
	public List<User> selectAll(String username) {
		// TODO Auto-generated method stub
		return dao.selectAll(username);
	}

}
